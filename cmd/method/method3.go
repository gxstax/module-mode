package main

import "fmt"

type T3 struct {
	a int
}

func (t T3) M1() {
	t.a = 10
}

func (t *T3) M2() {
	t.a = 11
}


// 方法集合

func method3Main() {
	var t1 T3
	println(t1.a) // 0
	t1.M1()
	println(t1.a) // 0
	t1.M2()
	println(t1.a) // 11

	fmt.Println("-------- 传入指针类型 -----------")
	var t2 = &T3{}
	println(t2.a)
	t2.M1()
	println(t2.a)
	t2.M2()
	println(t2.a)
}
