package main

import (
	"fmt"
	"sync"
)

type counter struct {
	c chan int
	i int
}

func NewCounter() *counter {
	cter := &counter{
		c : make(chan int),
	}

	go func() {
		// 死循环，利用无缓冲发送 channel 的阻塞机制
		for {
			cter.i++
			cter.c <- cter.i
		}
	}()

	return cter
}

func (cter *counter) Increase() int {
	return <-cter.c
}

func main() {
	cter := NewCounter()
	var wg sync.WaitGroup
	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			v := cter.Increase()
			fmt.Printf("goroutine-%d: current counter value is %d\n", i, v)
			wg.Done()
		}(i)
	}

	wg.Wait()
}