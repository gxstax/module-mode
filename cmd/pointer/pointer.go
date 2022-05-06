package main

import "fmt"

type Rect struct {
	width float64
	height float64
}

func (r *Rect) size() float64 {
	return r.width * r.height
}

func main() {
	var r = &Rect{100, 100}
	fmt.Println(r)
	fmt.Println(*r)
	fmt.Println(&r)
}
