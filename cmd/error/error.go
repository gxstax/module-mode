package main

import (
	"errors"
	"fmt"
)

func doSomething() error {
	return errors.New("草，报错了")
}

func business() error {
	err := doSomething()
	if err != nil {
		// 不关心err变量底层错误值所携带的具体上下文信息
		// 执行简单错误处理逻辑并返回

		fmt.Println(err)
		return err
	}
	return nil
}
var ErrSentinel = errors.New("the underlying sentinel error")
func wrappedError() {
	err1 := fmt.Errorf("wrap sentinel: %w", ErrSentinel)
	err2 := fmt.Errorf("wrap err1: %w", err1)
	println(err2 == ErrSentinel)

	if errors.Is(err2, ErrSentinel) {
		println("err2 is ErrSentinel")
		return
	}
	println("err2 is not ErrSentinel")
}

type MyError struct {
	e string
}

func (e *MyError) Error() string {
	return e.e
}

func errorsAs() {
	var err = &MyError{"MyError error demo"}
	err1 := fmt.Errorf("wrap err: %w", err)
	err2 := fmt.Errorf("wrap err1: %w", err1)
	var e *MyError
	if errors.As(err2, &e) {
		println("MyError is on the chain of err2")
		println(e == err)
		return
	}
	println("MyError is not on the chain of err2")
}

func main() {
	business()
	wrappedError()
	errorsAs()
}

