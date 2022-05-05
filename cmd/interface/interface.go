package main

import "fmt"

var err error

type T struct {

}

func demo() {
	var a int64 = 13
	var i interface{} = a
	v1, ok := i.(int64)
	fmt.Printf("v1=%d, the type of v1 is %T, ok=%t\n", v1, v1, ok)

	v2, ok := i.(string)
	fmt.Printf("v2=%s, the type of v2 is %T, ok=%t\n", v2, v2, ok)

	v3 := i.(int64)
	fmt.Printf("v3=%d, the type of v3 is %T\n", v3, v3)

	v4 := i.([]int)
	fmt.Printf("the type of v4 is %T\n", v4)
}

func main() {
	demo()
	//var i interface{} = 15
	//i = "hello,world"
	//
	//var t T
	//i = t
	//i = &t
	//
	//v, ok := i.(*T)
	//if ok {
	//	fmt.Printf("type of i is %T\n", v)
	//}
}