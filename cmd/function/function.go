package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"time"
)

func myAppend(sl []int, elems ...int) []int {
	fmt.Printf("%T\n", elems)
	if len(elems) == 0 {
		println("no elems to append")
		return sl
	}
	sl = append(sl , elems...)
	return sl
}

// 函数可以存储在变量中
var (
	myFprintf = func(w io.Writer, format string, a ...interface{}) (int, error){
		return fmt.Fprintf(w, format, a...)
	}
)

// 支持在函数内创建并通过返回值返回
func setup(task string) func() {
	println("do some setup stuff for ", task)
	return func() {
		println("do some teardown stuff for ", task)
	}
}

func greeting(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Welcom, Gopher!\n")
}

func times(x int, y int) int {
	return x * y
}

func partialTime(x int) func(int) int {
	return func(y int) int {
		return times(x, y);
	}
}

func main() {
	sl := []int{1, 2, 3}
	sl = myAppend(sl)
	fmt.Println(sl)
	sl = myAppend(sl, 4, 5, 6)
	fmt.Println(sl)

	fmt.Println("--------------------------------------------------------")
	fmt.Printf("%T\n", myFprintf)
	myFprintf(os.Stdout, "%s\n", "Hello, Go")

	fmt.Println("--------------------------------------------------------")
	teardown := setup("demo")
	defer teardown()
	println("do some business stuff")

	time.AfterFunc(time.Second * 2, func() {
		println("timer fired")
	})
	time.Sleep(time.Second * 3)

	//http.ListenAndServe(":8080", http.HandlerFunc(greeting))

	fmt.Println("--------------------------------------------------------")
	timesTwo := partialTime(2)
	timesThree := partialTime(3)
	fmt.Println(timesTwo(5))
	fmt.Println(timesThree(5))
}
