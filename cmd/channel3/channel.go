package main

import (
	"fmt"
	"sync"
	"time"
)

type signal struct {}

func worker(i int) {
	fmt.Printf("worker %d: is working....\n", i)
	time.Sleep(1 * time.Second)
	fmt.Printf("worker %d: works done\n", i)
}

func spawnGroup(f func(i int), num int, groupSignal <-chan signal) <-chan signal {
	c := make(chan signal)

	wg := sync.WaitGroup{}
	for i := 0; i < num; i++ {
		wg.Add(1)
		go func(i int) {
			<-groupSignal
			fmt.Printf("worker %d: start to work...\n", i)
			f(i)
			wg.Done()
		}(i)
	}

	go func() {
		wg.Wait()
		c <- signal{}
	}()

	return c
}

func main() {
	fmt.Println("start a group of works...")
	groupSignal := make(chan signal)
	c := spawnGroup(worker, 5, groupSignal)
	time.Sleep(5 * time.Second)

	fmt.Println("the group of workers start to work...")

	// 向所有 worker goroutine 广播“开始工作”的信号
	close(groupSignal)
	<-c

	fmt.Println("the group of workers work done!")
}
