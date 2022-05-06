package main

import "fmt"

type Ta struct {
	n int
	s string
}

func (Ta) Ma() {}
func (Ta) Mb() {}

type NonEmptyInterface interface {
	Ma()
	Mb()
}

func main() {
	var t = Ta{
		n : 17,
		s : "hell, interface",
	}

	var ei interface{}
	ei = t

	var i NonEmptyInterface
	i = t

	fmt.Println(ei)
	fmt.Println(i)
}



