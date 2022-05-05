package main

import "fmt"

type T struct {
	a int
}

func (t T) M(n int)  {

}

func (t T) Get() int {
	return t.a
}

func (t *T) Set(a int) int {
	t.a = a
	return t.a
}

func method1Main() {
	var t T
	//t.M(1)
	//
	//p := &T{}
	//p.M(2)

	f1 := (*T).Set // f1的类型，也是*T类型Set方法的类型：func (t *T, int) int
	f2 := T.Get    // f2的类型，也是T类型Get方法的类型：func(t T) int

	fmt.Printf("the type of f1 is %T\n", f1)
	fmt.Printf("the type of f2 is %T\n", f2)
	f1(&t, 3)
	fmt.Println(f2(t))
}
