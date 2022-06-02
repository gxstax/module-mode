package main

import (
	"fmt"
	"time"
)

func main() {
	ch1, ch2 := make(chan int), make(chan int)

	go func() {
		time.Sleep(5 * time.Second)
		ch1 <- 5
		close(ch1)
	}()

	go func() {
		time.Sleep(7 * time.Second)
		ch2 <- 7
		close(ch2)
	}()

	var ok1, ok2 bool
	for {
		select {
		case x, ok := <-ch1:
			if !ok {
				ch1 = nil
			} else {
				ok1 = true
				fmt.Println(x)
			}
		case x, ok := <-ch2:
			if !ok {
				ch2 = nil
			} else {
				ok2 = true
				fmt.Println(x)
			}
		}

		if ok1 && ok2 {
			break
		}
	}
	fmt.Println("program end")
}

func worker(c chan int) {
	heartbeat := time.NewTicker(30 * time.Second)
	defer heartbeat.Stop()
	for {
		select {
		case <-c:
			// do some stuff
		case <- heartbeat.C:
			// do heartbeat stuff
		}
	}
}
