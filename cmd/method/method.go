package main

/*
	Go 方法实质上是以方法的 receiver 参数作为第一个参数的普通函数
    等价转换后的函数：
	func (t T) M1() <=> F1(t T)
	func (t *T) M2() <=> F2(t *T)
 */

func main() {
	//method1Main()
	//method2Main()
	method3Main()
}
