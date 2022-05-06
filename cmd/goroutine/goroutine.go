package main

import (
	"fmt"
	"time"
)

func main() {
	go fmt.Println("I am a goroutine")

	var c =make(chan int)
	go func(a, b int) {
		c <- a + b
	}(3, 4)

	time.Sleep(time.Second * 3)
}
