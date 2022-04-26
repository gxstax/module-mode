package main

import (
	"fmt"
	"unsafe"
)

type T1 int
type T2 T1
type T3 string

type (
	T4 int
	T5 T4
	T6 string
)

type T = string


// 定义一个空结构体
type Empty struct {
}

func emptyStruct() {
	var s Empty
	println(unsafe.Sizeof(s))

	var c = make(chan Empty) // 声明一个元素类型为Empty的channel
	c <- Empty{} // 向channel写入一个“事件”
}

type Book struct {
	Title string              // 书名
	Pages int                 // 书的页数
	Indexes map[string]int    // 书的索引
}

func main() {
	var n1 T1
	var n2 T2 = 5
	n1 = T1(n2) // ok

	var s T3 = "hello"
	fmt.Println(n1, s)
	//n1 = T1(s) // 错误：Cannot convert an expression of the type 'T3' to the type 'T1'

	var s2 string = "hello"
	var t T = s2
	fmt.Printf("%T\n", t) //string

	emptyStruct()
}
