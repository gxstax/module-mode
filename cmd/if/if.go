package main

import (
	"runtime"
)

// if 语句自用变量
func selfUseVariable() {
	if a, c := f(), h(); a > 0 {
		println(a)
	} else if b := f(); b > 0 {
		println(a, b)
	} else {
		println(a, b, c)
	}
}

func f() int {
	a := 3
	return a
}

func h() int {
	c := 10
	return c
}



func main() {
	if runtime.GOOS == "linux" {
		println("we are on linux os")
	}

	if runtime.GOOS == "darwin" {
		println("we are on mac OS")
	}

	if (runtime.GOOS == "darwin") && (runtime.GOARCH == "amd64") &&
		(runtime.Compiler != "gccgo") {
		println("we are using standard go compiler on macOS for amd64")
	}

	a, b := false,true
	if a && b != true {
		println("(a && b) != true")
		return
	}
	println("a && (b != true) == false")


	selfUseVariable()
}

