// 读写锁应用场景

// 并发量较小的情况下，Mutex 性能最好；随着并发量增大，Mutex 的竞争激烈，导致加锁和解锁性能下降；
// RWMutex 的读锁性能并没有随着并发量的增大，而发生较大变化，性能始终恒定在 40ns 左右；
//在并发量较大的情况下，RWMutex 的写锁性能和 Mutex、RWMutex 读锁相比，是最差的，并且随着并发量增大，RWMutex 写锁性能有继续下降趋势。

// 由此，我们就可以看出，读写锁适合应用在具有一定并发量且读多写少的场合。在大量并发读的情况下，多个 Goroutine 可以同时持有读锁，从而减少在锁竞争中等待的时间。
// 而互斥锁，即便是读请求的场合，同一时刻也只能有一个 Goroutine 持有锁，其他 Goroutine 只能阻塞在加锁操作上等待被调度。
package main

import (
	"sync"
	"testing"
)

var cs1 = 0 // 模拟临界区要保护的数据
var mu sync.Mutex

var cs2 = 0 // 模拟临界区要保护的数据
var rwMu sync.RWMutex

func main() {
	var rwMu sync.RWMutex // 读写锁
	rwMu.RLock()   // 加读锁
	// readSomething
	rwMu.RUnlock() // 解读锁
	rwMu.Lock()    // 加写锁
	// changeSomething
	rwMu.Unlock()  // 解写锁
}

// BenchmarkWriteSyncByMutex 互斥锁（写）
func BenchmarkWriteSyncByMutex(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			mu.Lock()
			cs1++
			mu.Unlock()
		}
	})
}

// BenchmarkReadSyncByMutex 互斥锁（读）
func BenchmarkReadSyncByMutex(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			mu.Lock()
			_ = cs1
			mu.Unlock()
		}
	})
}

// BenchmarkReadSyncRWMutex 读写锁（读）
func BenchmarkReadSyncRWMutex(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			rwMu.RLock()
			_ = cs2
			rwMu.RUnlock()
		}
	})
}

// BenchmarkWriteSyncRWMutex 读写锁（写）
func BenchmarkWriteSyncRWMutex(b *testing.B) {
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			rwMu.Lock()
			cs2++
			rwMu.Unlock()
		}
	})
}


