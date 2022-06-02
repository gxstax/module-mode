package main

import (
	"errors"
	"fmt"
	"time"
)

func spawn(f func() error) <-chan error {
	c := make(chan error)

	go func() {
		c <- f()
	}()

	return c
}

func main() {
	//go fmt.Println("I am a goroutine")
	//
	//var c =make(chan int)
	//go func(a, b int) {
	//	c <- a + b
	//}(3, 4)
	//
	//time.Sleep(time.Second * 3)

	c := spawn(func() error {
		time.Sleep(2 * time.Second)
		return errors.New("timeout")
	})
	fmt.Println(<-c)

	var ch chan int
	ch1 := make(chan int)
	ch2 := make(chan int, 5)

	ch1 <- 13   // 从整型字面值 13 发送到无缓冲 channel 类型变量 ch1 中
	n := <- ch1 // 从无缓冲 channel 类型变量 ch1 中接收一个整型值存储到整型变量 n 中

	ch2 <- 17 // 将整型变量值 17 发送到带有缓冲 channel 类型变量 ch2 中
	m := <- ch2 // 从带缓冲channel类型变量ch2中接受一个整型值存储到整型变量 m 中

	fmt.Println(ch, n, m)
}
