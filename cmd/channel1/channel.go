package main

import "sync"

func produce(ch chan<- int) {
	for i := 0; i < 100; i++ {
		ch <- i + 1
	}
	println("produce complete")
	close(ch)
	// 向一个关闭的 channel 发送数据回引发 panic
	//ch <- 101 // panic: send on closed channel
}

func consume(ch <-chan int) {
	for n := range ch {
		println("consume:", n)
	}
}

func main() {
	ch1 := make(chan int)
	//ch1 <- 13 // fatal error: all goroutines are asleep - deadlock!

	go func() {
		ch1 <- 13 // 将发送操作放入一个新goroutine中执行
	}()

	n := <- ch1
	println(n)

	//ch2 := make(chan int, 1)
	//n1 := <- ch2 // 由于此时 ch2 的缓冲区中无数据，因此对其进行接收操作将导致 goroutine 挂起
	//println(n1)

	ch3 := make(chan int, 1)
	ch3 <- 17 // 向 ch3 发送一个整型数 17
	//ch3 <- 27 // 由于此时 ch3 中缓冲去已满，再向 ch3 发送数据也将导致 goroutine 挂起

	println("----------- 使用操作符<- 声明'只发送 channel 类型'和 '只接收 channel 类型' --------------")
	ch4 := make(chan<- int, 1) // 只发送 channel 类型
	//ch5 := make(<-chan int, 1) // 只接收 channel 类型

	//<-ch4     //Invalid operation: <-ch4 (receive from the send-only type chan<- int)
	//ch5 <- 13 // Invalid operation: ch5 <- 13 (send to the receive-only type <-chan int)
	ch4 <- 12
	//<-ch5

	println("----------- 用作函数的参数类型或返回值，用于限制对 channel 内的操作,或者是明确可对 channel 进行的操作的类型 --------------")
	ch6 := make(chan int, 2)
	var wg sync.WaitGroup
	wg.Add(2)

	go func() {
		produce(ch6)
		wg.Done()
	}()

	go func() {
		consume(ch6)
		wg.Done()
	}()

	wg.Wait()

}