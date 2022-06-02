package main

import (
	"sync"
	"sync/atomic"
	"testing"
)

var n1 int64

func addSyncByAtomic(delta int64) int64 {
	return atomic.AddInt64(&n1, delta)
}

func readSyncByAtomic() int64 {
	return atomic.LoadInt64(&n1)
}

var n2 int64
var rwMu = sync.RWMutex{}

func addSyncByRWMutex(delta int64) {
	rwMu.Lock()
	n2 += delta
	rwMu.Unlock()
}

func readSyncByRWMutex() int64 {
	var n int64
	rwMu.Lock()
	n = n2
	rwMu.Unlock()
	return n
}

// BenchmarkAddSyncByAtomic 使用 Atomic 累加测试
func BenchmarkAddSyncByAtomic(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			addSyncByAtomic(1)
		}
	})
}

// BenchmarkReadSyncByAtomic 使用 Atomic 读测试
func BenchmarkReadSyncByAtomic(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			readSyncByAtomic()
		}
	})
}

// BenchmarkAddSyncByRWMutex 使用 RWMutex 累加测试
func BenchmarkAddSyncByRWMutex(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			addSyncByRWMutex(1)
		}
	})
}

// BenchmarkReadSyncByRWMutex 使用 RWMutex 读测试
func BenchmarkReadSyncByRWMutex(b *testing.B)  {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			readSyncByRWMutex()
		}
	})
}
