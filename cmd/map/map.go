package main

import (
	"fmt"
	"time"
)

func mapDefinition() {
	var m map[string]int // 一个 map[string]int 类型的变量
	//m["key"] = 1 // error: assignment to entry in nil map
	fmt.Println(m)

	m1 := map[int][]string {
		1: {"val1_1", "val1_2"},
		3: {"val3_1", "val3_2", "val3_3"},
		7: {"val7_1"},
	}
	fmt.Println(m1)

	m2 := map[Position]string {
		{29.943434, 52.323231}: "school",
		{25.0983434, 113.6932231}: "shopping mall",
		{73.965434, 111.398231}: "hospital",
	}
	fmt.Println(m2)
}

func insert() {
	fmt.Println("----------------------- 插入新键值对 ----------------------------")
	m := make(map[int]string)
	m[1] = "value1"
	m[2] = "value2"
	m[3] = "value3"

	ms := map[string]int {
		"key1" : 1,
		"key2" : 2,
	}

	ms["key1"] = 11 // 11会覆盖调"key1" 对应的旧值 1
	ms["key3"] = 3 // 此时 m 为 map [key1:11 key2:2 key3:3]

	fmt.Println(ms)
}

// 获取键值对数量
func keyValueCount() {
	fmt.Println("----------------------- 获取键值对数量 ----------------------------")
	m := map[string]int {
		"key1" : 1,
		"key2" : 2,
	}

	fmt.Println(len(m))
	m["key3"] = 3
	fmt.Println(len(m))
}

// 查找和数据读取
func lookupAndRead() {
	fmt.Println("----------------------- 查找和数据读取 ----------------------------")
	m := make(map[string]int)
	v, ok := m["key1"]
	if !ok {
		fmt.Println("key1不在map中")
	} else {
		fmt.Println(v)
	}
}

// 删除数据
func deleteKeyValue() {
	fmt.Println("----------------------- 删除数据 ----------------------------")
	m := map[string]int {
		"key1" : 1,
		"key2" : 2,
	}

	fmt.Println(m)
	delete(m, "key1")
	fmt.Println(m)
}

// 遍历 map 键值数据
func iterate() {
	fmt.Println("----------------------- 遍历 map 键值数据 ----------------------------")
	m := map[int]int {
		1: 11,
		2: 12,
		3: 13,
	}

	// 对同一 map 做多次遍历的时候，每次遍历元素的次序都不相同
	for i := 0; i < 3; i++ {
		doIteration(m)
	}
}

func doIteration(m map[int]int) {
	fmt.Printf("{")
	for k, v := range m {
		fmt.Printf("[%d, %d]", k, v)
	}
	fmt.Printf("}\n")
}

// 内部修改 map 对外部可见
func editMap() {
	fmt.Println("----------------------- 内部修改 map 对外部可见 ----------------------------")
	m := map[string]int {
		"key1": 1,
		"key2": 2,
	}
	fmt.Println(m)
	doEdit(m)
	fmt.Println(m)
}

func doEdit(m map[string]int) {
	m["key1"] = 11
	m["key2"] = 12
}

// map 并发
// 并发会报错：fatal error: concurrent map iteration and map write
func concurrentMap() {
	fmt.Println("----------------------- map 并发 ----------------------------")
	m := map[int]int {
		1: 11,
		2: 12,
		3: 13,
	}

	go func() {
		for i := 0; i < 1000; i++ {
			doMapIteration(m)
		}
	}()

	go func() {
		for i := 0; i < 1000; i++ {
			doMapWrite(m)
		}
	}()

	time.Sleep(5 * time.Second)
}


func doMapIteration(m map[int]int) {
	for k, v := range m {
		_ = fmt.Sprintf("[%d, %d] ", k, v)
	}
}

func doMapWrite(m map[int]int)  {
	for k, v := range m {
		m[k] = v + 1
	}
}

type Position struct {
	x float64
	y float64
}

func main() {
	mapDefinition()
	insert()
	keyValueCount()
	lookupAndRead()
	deleteKeyValue()
	iterate()
	editMap()
	concurrentMap()
}
