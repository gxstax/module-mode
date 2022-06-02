package main

import (
	"fmt"
	"time"
)

type signal struct {
}

func worker() {
	println("worker is working...")
	time.Sleep(1 * time.Second)
}


func spawn(f func()) <-chan signal {
	c := make(chan signal)
	go func() {
		println("worker start to work...")
		f()
		c <- signal{}
	}()

	return c
}

func main() {
	println("start a work...")
	c := spawn(worker)
	<-c
	fmt.Println("worker work done!")

	fmt.Println("------------- 无缓冲 channel 还被用来实现 1 对 n 的信号通知机制 ---------------------")
}