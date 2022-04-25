package main

import "fmt"

const Pi float64 = 3.14159265358979323846 // 单行常量声明

// 以 const 代码块形式声明常量
const (
	size int64 = 4096
	i, j, s = 13, 14, "bar" // 单行声明多个常量
)

type myInt int
const n myInt = 13
//const m int = n + 5 // 编译器报错：cannot use n + 5 (type myInt) as type int in const initializer
const m int = int(n) + 5 // OK

// 无类型常量(Untyped Constant)
const n2 = 13


// 常量块模拟枚举
const (
	Apple, Banana = 11, 22
	Strawberry, Grape // 隐式重复前一个非空表达式 11，22
	Pear, Watermelon  // 隐式重复前一个非空表达式 11，22
)

const (
	_ = iota // 0
	Pin1
	Pin2
	Pin3
	_
	Pin5    // 5
)

// iota 常量所处位置在块中的偏移值 从 0 开始
const (
	Apple2, Banana2 = iota, iota + 10 // 0， 10
	Strawberry2, Grape2 // 隐式重复前一个非空表达式 1， 11
	Pear2, Watermelon2  // 隐式重复前一个非空表达式 2， 12
)






func main() {
	var a int = 5
	//fmt.Println(a + n) // 编译器报错：invalid operation: a + n (mismatched types int and myInt)
	fmt.Println(a + int(n))

	// Untyped Constant
	var a2 myInt = 5
	fmt.Println(a2 + n2)
}
