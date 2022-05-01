package main

import (
	"os"
	"sync"
)

func doSomething() error {
	var mu sync.RWMutex
	mu.Lock()
	defer mu.Unlock()

	r1, err := OpenResource1()
	if err != nil {
		return err
	}
	defer r1.Close()

	r2, err := OpenResource2()
	if err != nil {
		return err
	}
	defer r2.Close()

	r3, err := OpenResource3()
	if err != nil {
		return err
	}
	defer r3.Close()

	return err
}

func OpenResource1() (os.File, error) {
	f := os.File{}
	return f, nil
}

func OpenResource2() (os.File, error) {
	f := os.File{}
	return f, nil
}

func OpenResource3() (os.File, error) {
	f := os.File{}
	return f, nil
}