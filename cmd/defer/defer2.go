package main

func bar() (int, int) {
	return 1, 2
}

func foo() {
	//var c chan int
	var sl []int
	var m = make(map[string]int, 10)
	m["item1"] = 1
	m["item2"] = 2
	var a = complex(1.0, -1.4)
	if a == 0 {}
	var sl1 []int

	defer bar()
	//defer append(sl, 11) // 不能直接作为 deferred 函数
	// 对于那些不能直接作为 deferred 函数的内置函数，
	// 我们可以使用一个包裹它的匿名函数来间接满足要求，以 append 为例是这样的
	defer func() {
		_ = append(sl, 11)
	}()
	//defer cap(sl) // 不能直接作为 deferred 函数
	//defer close(c)
	//defer complex(2, -2) // 不能直接作为 deferred 函数
	defer copy(sl1, sl)
	defer delete(m, "item2")
	//defer imag(a) // 不能直接作为 deferred 函数
	//defer len(sl) // 不能直接作为 deferred 函数
	//defer make([]int, 10) // 不能直接作为 deferred 函数
	//defer new(*int) // 不能直接作为 deferred 函数
	defer panic(1)
	defer print("hello, defer\n")
	defer println("hell, defer")
	//defer real(a) // 不能直接作为 deferred 函数
	defer recover()
}

