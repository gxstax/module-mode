package main

import (
	"fmt"
	"time"
)

func main() {
	var sum int
	for i := 0; i < 10; i++ {
		sum += i
	}
	fmt.Println(sum)
	multiCases()
	unPre()
	unPost()
	unPreAndPost()

	forRange()

	forMap()

	rangeChannel()

	continueLabel()

	breakDemo()

	breakContinue()

	forReusingError()

	forReusingRight()

	rangeDuplicate()

	rangeDuplicateSlice()

	rangeDuplicateAddr()
}

func unPre() {
	i := 0
	for ; i < 10; i++ {
		println(i)
	}
}

func multiCases() {
	var sum int
	for i, j, k := 0, 1, 2; (i < 20) && (j < 10) && (k < 30); i, j, k = i+2, j+1, k+6 {
		sum += i + j + k
	}
	println(sum)
}

func unPost()  {
	for i := 0; i < 10; {
		println(i)
		i ++
	}
}

func unPreAndPost() {
	i := 0
	for i < 10 {
		println(i)
		i ++
	}
}

// for range 循环形势
func forRange() {
	fmt.Println("--------------------------- for range 循环 -----------------------------")
	var sl = []int{1, 2, 3, 4, 5}
	for i := 0; i < len(sl); i++ {
		if sl[i] % 2 == 0 {
			// 忽略切片中值为偶数的元素
			continue
		}
		fmt.Printf("sl[%d] = %d\n", i, sl[i])
	}

	for i, v := range sl {
		fmt.Printf("sl[%d] = %d\n", i, v)
	}

	for i := range sl {
		fmt.Print(" [", i, "] ")
	}

	fmt.Println()
	for _, v := range sl {
		fmt.Print(" {" ,v, "} ")
	}

	fmt.Println()
	for range sl {
		fmt.Println("todo")
	}
}

func forMap() {
	fmt.Println("--------------------------- forMap 循环 -----------------------------")
	var m = map[string]int {
		"Rob": 67,
		"Russ": 39,
		"John": 29,
	}

	for k, v := range m {
		println(k, v)
	}
}

// range channel
func rangeChannel() {
	fmt.Println("--------------------------- range channel 循环 -----------------------------")
	//var c = make(chan int)
	//for v := range c {
	//	fmt.Println(v)
	//}
}

// continue label
func continueLabel() {
	fmt.Println("--------------------------- continue label 循环 -----------------------------")
	var sl = [][]int{
		{1, 34, 26, 35, 78},
		{3, 45, 13, 24, 99},
		{101, 13, 38, 7, 127},
		{54, 27, 40, 83, 81},
	}

outerloop:
	for i := 0; i < len(sl); i++ {
		for j := 0; j < len(sl[i]); j++ {
			if sl[i][j] == 13 {
				fmt.Printf("found 13 at [%d, %d]\n", i, j)
				continue outerloop
			}
		}
	}
}

func breakDemo() {
	fmt.Println("--------------------------- breakDemo 循环 -----------------------------")
	var sl = []int{5, 19, 6, 3, 8, 12}
	var firstEven int = -1

	// 找出整型切片sl中的第一个偶数
	for i := 0; i < len(sl); i++ {
		if sl[i]%2 == 0 {
			firstEven = sl[i]
			break
		}
	}

	println(firstEven) // 6
}

var gold = 38
func breakContinue() {
	fmt.Println("--------------------------- breakContinue 循环 -----------------------------")
	var sl = [][]int{
		{1, 34, 26, 35, 78},
		{3, 45, 13, 24, 99},
		{101, 13, 38, 7, 127},
		{54, 27, 40, 83, 81},    }

outerloop:
	for i := 0; i < len(sl); i++ {
		for j := 0; j < len(sl[i]); j++ {
			if sl[i][j] == gold {
				fmt.Printf("found gold at [%d, %d]\n", i, j)
				break outerloop
			}
		}
	}
}

// 循环变量的重用
func forReusingError() {
	fmt.Println("--------------------------- 循环变量的重用 '错误' 示范 -----------------------------")
	var m = []int{1, 2, 3, 4, 5}

	// 这里的i，v 变量在每次循环中都会重用这两个变量
	for i, v := range m {
		go func() {
			time.Sleep(time.Second * 3)
			fmt.Println(i, v)
		}()
	}
	//time.Sleep(time.Second * 10)
}

//
func forReusingRight() {
	fmt.Println("--------------------------- 循环变量的重用 '正确' 示范 -----------------------------")
	var m = []int{1, 2, 3, 4, 5}

	// 这里的i，v 变量在每次循环中都会重用这两个变量
	for i, v := range m {
		go func(i, v int) {
			time.Sleep(time.Second * 3)
			fmt.Println(i, v)
		}(i, v)
	}
	//time.Sleep(time.Second * 10)
}

func rangeDuplicate() {
	fmt.Println("--------------------------- rangeDuplicate -----------------------------")
	var a = [5]int{1, 2, 3, 4, 5}
	var r [5]int

	fmt.Println("original a =", a)

	for i, v := range a {
		if i == 0 {
			a[1] = 12
			a[2] = 13
		}
		r[i] = v
	}

	fmt.Println("after for range loop, r =", r)
	fmt.Println("after for range loop, a =", a)
}

func rangeDuplicateSlice() {
	fmt.Println("--------------------------- rangeDuplicate slice -----------------------------")
	var a = [5]int{1, 2, 3, 4, 5}
	var r [5]int

	fmt.Println("original a =", a)

	for i, v := range a[:] {
		if i == 0 {
			a[1] = 12
			a[2] = 13
		}
		r[i] = v
	}

	fmt.Println("after for range loop, r =", r)
	fmt.Println("after for range loop, a =", a)
}

// 取地址
func rangeDuplicateAddr() {
	fmt.Println("--------------------------- rangeDuplicate Addr -----------------------------")
	var a = [5]int{1, 2, 3, 4, 5}
	var r [5]int

	fmt.Println("original a =", a)

	for i, v := range &a {
		if i == 0 {
			a[1] = 12
			a[2] = 13
		}
		r[i] = v
	}

	fmt.Println("after for range loop, r =", r)
	fmt.Println("after for range loop, a =", a)
}


