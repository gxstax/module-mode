package main

import "runtime"

// Trace 跟踪函数名的自动获取
func Trace() func() {
	/*
		Caller函数四个返回值:
			pc uintptr: 程序计数器
			file string: 所在源文件
			line int: 所在文件行
			ok bool: 是否成功获取到信息
	 */
	pc, _, _, ok := runtime.Caller(1)
	if !ok {
		panic("not found caller")
	}

	//
	fn := runtime.FuncForPC(pc)
	name := fn.Name()
	println("enter:", name)
	return func() {
		println("exit", name)
	}
}

func foo() {
	defer Trace()()
	bar()
}

func bar() {
	defer Trace()()
}

func main() {
	defer Trace()()
	foo()
}
