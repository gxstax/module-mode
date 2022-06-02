package main

import (
	"sync"
	"testing"
)

var cs = 0 // 模拟临界区要保护的数据
var mu sync.Mutex
var c = make(chan struct{}, 1)

/**
 通过同步原语做临界条件同步
 */
func criticalSectionSyncByMutex() {
	mu.Lock()
	cs ++
	mu.Unlock()
}

/**
 通过channel做临界条件同步
 */
func criticalSectionSyncByChan() {
	c <- struct{}{}
	cs++
	<-c
}

/**
 单 Goroutine 通过同步原语做临界条件同步
 */
func BenchmarkCriticalSectionSyncByMutex(b *testing.B) {
	for n := 0; n < b.N; n++ {
		criticalSectionSyncByMutex()
	}
}

/**
 并发 通过同步原语做临界条件同步
*/
func BenchmarkCriticalSectionSyncByMutexInParallel(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			criticalSectionSyncByMutex()
		}
	})
}

/**
 单 Goroutine 通过channel做临界条件同步
 */
func BenchmarkCriticalSectionSyncByChan(b *testing.B) {
	for n := 0; n < b.N; n++ {
		criticalSectionSyncByChan()
	}
}

/**
 并发 通过channel做临界条件同步
*/
func BenchmarkCriticalSectionSyncByChanInParallel(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			criticalSectionSyncByChan()
		}
	})
}


