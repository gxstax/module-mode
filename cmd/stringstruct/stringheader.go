package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

func dumpBytesArray(arr []byte) {
	fmt.Printf("[")
	for _, b := range arr {
		fmt.Printf("%c ", b)
	}
	fmt.Printf("]\n")
}

// 字符串下标
func index() {
	fmt.Println("--------------------- 字符串下标 ---------------------")
	s := "中国人"
	fmt.Printf("0x%x\n", s[0])
}

// 字符串迭代
func iterator() {
	fmt.Println("--------------------- 字符串迭代 ---------------------")
	s := "中国人"

	for i := 0; i < len(s); i++ {
		fmt.Printf("index: %d, value: 0x%x \n", i, s[i])
	}
	fmt.Println("-------------------------------------------------------")
	for i, v := range s {
		fmt.Printf("index: %d, value: 0x%x \n", i, v)
	}
}

// 字符串连接
func join() {
	fmt.Println("--------------------- 字符串连接 ---------------------")
	s := "Rob Pike, "
	s = s + "Robert Griesemer, "
	s += "Ken Thompson "
	fmt.Println(s)
}

// 字符串比较
func compare() {
	fmt.Println("--------------------- 字符串比较 ---------------------")
	s1 := "世界和平"
	s2 := "世界" + "和平"
	fmt.Println(s1 == s2) // true

	// !=
	s1 = "Go"
	s2 = "C"
	fmt.Println(s1 != s2) // true

	// < and <=
	s1 = "12345"
	s2 = "23456"
	fmt.Println(s1 < s2)  // true
	fmt.Println(s1 <= s2) // true

	// > and >=
	s1 = "12345"
	s2 = "123"
	fmt.Println(s1 > s2)  // true
	fmt.Println(s1 >= s2) // true
}

// 字符串转换
func convert() {
	fmt.Println("--------------------- 字符串转换 ---------------------")
	s := "中国人"

	// string -> []rune
	rs := []rune(s)
	fmt.Printf("%x\n", rs)

	// string -> []byte
	bs := []byte(s)
	fmt.Printf("%x\n", bs)

	// []rune -> string
	s1 := string(rs)
	fmt.Println(s1) // 中国人

	// []byte -> string
	s2 := string(bs)
	fmt.Println(s2) // 中国人
}

// 字符串连接内存地址比较
func compareMemoryAddr() {
	fmt.Println("--------------------- 字符串连接内存地址比较 ---------------------")
	s1 := "世界和平"
	s2 := "世界" + "和平"
	addr1 := (*reflect.StringHeader)(unsafe.Pointer(&s1))
	addr2 := (*reflect.StringHeader)(unsafe.Pointer(&s2))
	fmt.Printf("0x%x \n", addr1.Data)
	fmt.Printf("0x%x \n", addr2.Data)

}

func main() {
	s := "hello"
	hdr := (*reflect.StringHeader)(unsafe.Pointer(&s)) // 将 string 类型变量地址显式转型为 reflect.StringHeader

	fmt.Printf("%d \n", hdr.Len)
	fmt.Printf("0x%x\n", hdr.Data)
	p := (*[5]byte)(unsafe.Pointer(hdr.Data)) // 获取 Data 字段所指向的数组的指针
	dumpBytesArray((*p)[:])

	index()
	iterator()
	join()
	compare()
	convert()
	compareMemoryAddr()

}

