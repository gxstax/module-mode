package main

import (
	"errors"
	"fmt"
)

//var err error = 1 //  cannot use 1 (type int) as type error in assignment: int does not implement error (missing Error method)

type QuackableAnimal interface {
	Quack()
}

type Duck struct {}

func (Duck) Quack() {
	println("Duck quack")
}

type Dog struct {}

func (Dog) Quack() {
	println("Dog quack")
}

type Bird struct {}

func (Bird) Quack() {
	println("Bird quack")
}

func main() {
	err := errors.New("error1")
	fmt.Printf("%T\n", err)

	animals := []QuackableAnimal{new(Duck), new(Dog), new(Bird)}

	for _, animal := range animals {
		animal.Quack()
	}
}