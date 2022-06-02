package main

import (
	"fmt"
	"sync"
	"time"
)

func producer(c chan<- int) {
	var i int = 1
	for {
		time.Sleep(2 * time.Second)
		ok := trySend(c, i)
		if ok {
			fmt.Printf("[Producer]: send [%d] to channel\n", i)
			i++
			continue
		}
		fmt.Printf("[Producer] try to send [%d] to channel, but the channel is full\n", i)
	}
}

func trySend (c chan<- int, i int) bool {
	select {
	case c <- i:
		return true

	default:
		return false
	}
}

func consumer(c <-chan int) {
	for {
		i, ok := tryRecv(c)
		if !ok {
			fmt.Printf("[Consumer] try to recv from channel, but the channel is empty\n")
			time.Sleep(1 * time.Second)
			continue
		}

		fmt.Printf("[Consumer]: recv [%d] from channel\n", i)
		if i >= 3 {
			fmt.Println("[consumer]: exit")
			return
		}
	}
}

func tryRecv(c <-chan int) (int, bool) {
	select {
	case i := <-c:
		return i, true
	default:
		return 0, false
	}
}

func main() {
	var wg = sync.WaitGroup{}
	c := make(chan int, 3)
	wg.Add(2)

	go func() {
		producer(c)
		wg.Done()
	}()

	go func() {
		consumer(c)
		wg.Done()
	}()

	wg.Wait()

}
