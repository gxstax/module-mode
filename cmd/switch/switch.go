package main

import "fmt"

func case1() int {
	println("eval case1 expr")
	return 1
}

func case2_1() int {
	println("eval case2_1 expr")
	return 0
}
func case2_2() int {
	println("eval case2_2 expr")
	return 2
}

func case3() int {
	println("eval case3 expr")
	return 3
}

func switchexpr() int {
	println("eval switch expr")
	return 2
}

func checkWorkDay(a int) {
	switch a {
		case 1, 2, 3, 4, 5:
			println("it is a work day")
	case 6, 7:
		println("it is a weekend day")
	default:
		println("are you live on earth")
	}
}


func case21() int {
	println("eval case1 expr")
	return 1
}

func case22() int {
	println("eval case2 expr")
	return 2
}

func switchexpr2() int {
	println("eval switch expr")
	return 1
}

func typeSwitch() {
	fmt.Println("--------------- typeSwitch -------------------")
	var x interface{} = 13
	switch x.(type) {
	case nil:
		println("x is nil")
	case int:
		println("the type of x is int")
	case string:
		println("the type of x is string")
	case bool:
		println("the type of x is string")
	default:
		println("don't support the type")
	}
}

func typeSwitch2() {
	fmt.Println("--------------- typeSwitch2 -------------------")
	var x interface{} = 13
	switch v := x.(type) {
	case nil:
		println("x is nil")
	case int:
		println("the type of x is int, v =", v)
	case string:
		println("the type of x is string, v =", v)
	case bool:
		println("the type of x is bool, v =", v)
	default:
		println("don't support the type")
	}
}


func main() {
	switch switchexpr() {
	case case1():
		println("exec case1")
	case case2_1(), case2_2():
		println("exec case2")
	case case3():
		println("exec case3")
	default:
		println("exec default")
	}

	checkWorkDay(3)
	checkWorkDay(6)
	checkWorkDay(8)

	fmt.Println("--------------- fallthrough -------------------")
	switch switchexpr2() {
		case case21():
			println("exec case21")
			fallthrough
		case case22():
			println("exec case22")
			fallthrough
		default:
			println("exec default")
	}

	typeSwitch()
	typeSwitch2()
}
