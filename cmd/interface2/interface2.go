package main

import "fmt"

type InterfaceDemo interface {
	F1()
}

type T0 int

func (T0) F1(){
	fmt.Println("T0 is F1")
}

func main() {
	var t T0
	var i interface{} = t
	v1, ok := i.(InterfaceDemo)
	if !ok {
		panic("the value of i is not InterfaceDemo")
	}
	v1.F1()
	fmt.Printf("the type of v1 is %T\n", v1)

	i = int64(13)
	v2, ok := i.(InterfaceDemo)
	fmt.Printf("the type of v2 is %T\n", v2)

	//v2 = 13 // '13' (type untyped int) cannot be represented by the type InterfaceDemo
}