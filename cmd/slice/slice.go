package main

import "fmt"

var nums =[]int{1, 2, 3, 4, 5}

// 切片定义
func sliceDefinition() {
	fmt.Println("--------------------------   切片定义   ---------------------------")
	// 切片结构
	/*
	type slice struct {
		array unsafe.Pointer // 指向底层数组的指针
		len int // 切片的长度，即切片中当前元素的个数
		cap int // 底层数组的长度，也是切片的最大容量，cap 值永远 >= len
	 }
	 */

	sl := make([]byte, 6, 10) // 其中10为cap值，即底层数组长度，6为切片的初始长度
	sl2 := make([]byte, 6) // cap = len = 6
	fmt.Println(sl, sl2)

}

// 数组切片化
func arrSlice() {
	fmt.Println("-------------------------- 数组切片化 ---------------------------")
	// arr := [10]int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	// sl := arr[3, 7, 9](low = 3, high =7, max = 9)
	// cap = max - low = 6
	// len = high -low = 4
	arr := [10]int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	sl := arr[3:7:9] // (low = 3, high =7, max = 9)
	//sl2 := arr[3:7] // 不定义 max, max 默认是数组长度

	sl[0] += 10
	fmt.Println("arr[3] = ", arr[3]) // 14
}

// 切片动态扩容
func dynamicExpansion() {
	fmt.Println("-------------------------- 切片动态扩容 ---------------------------")

	var s []int
	s = append(s, 11)
	fmt.Printf("len-> %d cap-> %d \n", len(s), cap(s))

	s = append(s, 12)
	fmt.Printf("len-> %d cap-> %d \n", len(s), cap(s))

	s = append(s, 13)
	fmt.Printf("len-> %d cap-> %d \n", len(s), cap(s))

	s = append(s, 14)
	fmt.Printf("len-> %d cap-> %d \n", len(s), cap(s))

	s = append(s, 15)
	fmt.Printf("len-> %d cap-> %d \n", len(s), cap(s))
}

// 切片自动扩容导致与原数组解除绑定
func relieveBind() {
	fmt.Println("-------------------------- 切片自动扩容导致与原数组解除绑定 ---------------------------")
	u := [...]int{11, 12, 13, 14, 15}
	fmt.Println("array:", u)

	s := u[1:3] // low=1 high=3 max默认为数组长度
	fmt.Printf("slice(len=%d, cap=%d): %v\n", len(s), cap(s), s)

	s = append(s, 24)
	fmt.Println("after append 24, array:", u)
	fmt.Printf("after append 24, slice(len=%d, cap=%d): %v\n", len(s), cap(s), s)

	s = append(s, 25)
	fmt.Println("after append 25, array:", u)
	fmt.Printf("after append 25, slice(len=%d, cap=%d): %v\n", len(s), cap(s), s)

	s = append(s, 26)
	fmt.Println("after append 26, array:", u)
	fmt.Printf("after append 26, slice(len=%d, cap=%d): %v\n", len(s), cap(s), s)

	s[0] = 22
	fmt.Println("after reassign 1st elem of slice, array:", u)
	fmt.Printf("after reassign 1st elem of slice, slice(len=%d, cap=%d): %v\n", len(s), cap(s), s)
}



func main() {
	fmt.Println(len(nums))
	nums = append(nums, 7)
	fmt.Println(len(nums))

	sliceDefinition()
	arrSlice()
	dynamicExpansion()
	relieveBind()
}