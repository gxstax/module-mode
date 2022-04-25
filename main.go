package main

import (
  "fmt"
  "github.com/google/uuid"
  "github.com/sirupsen/logrus"
  "math"
  "unicode/utf8"
)

const (
  GO_SLOGAN = "less is more"
  s1 = "hello, gopher"
)

var s2 = "I lover go"

func init()  {
  fmt.Println("init invoked")
}

func main() {
  logrus.Println("hello, go module mode")
  logrus.Println(uuid.NewString())

  s := int8(127)
  fmt.Println(s)
  s += 1
  fmt.Println(s)

  u := uint8(1)
  fmt.Println(u)

  u -= 2
  fmt.Println(u)

  f := float32(139.8125)
  bits := math.Float32bits(f)
  fmt.Printf("%b\n", bits)

  f1 := float32(16777216.0)
  f2 := float32(16777217.0)
  fmt.Println(f1 == f2)

  fx := float64(123.45678)
  fmt.Printf("%f\n", fx)
  fmt.Printf("%e\n", fx)
  fmt.Printf("%x\n", fx)

  type MyInt int32

  var m int = 5
  var n int32 = 6
  var a MyInt = MyInt(m)
  fmt.Println(a)
  var b MyInt = MyInt(n)
  fmt.Println(b)

  fmt.Println(GO_SLOGAN)
  fmt.Println(s1)
  fmt.Println(s2)

  var ss string = "hello"
  //ss[0] = 'K' // 错误：字符串的内容是不可改变的
  ss = "gopher" // ok
  fmt.Println(ss)

  fmt.Println("---------------------------------------------")

  var cs = "中国人"
  fmt.Printf("the length of cs = %d\n", len(cs))

  for i := 0; i < len(cs); i++ {
    fmt.Printf("0x%x ", cs[i])
  }
  fmt.Printf("\n")

  fmt.Println("---------------------------------------------")
  var cs2 = "中国人"
  fmt.Printf("the character count in cs2 is = %d\n", utf8.RuneCountInString(cs2))
  for _, c := range cs2 {
    fmt.Printf("0x%x ", c)
  }
  fmt.Printf("\n")

  fmt.Println("---------------------------------------------")

  encodeRune()
  decodeRune()

}

// rune -> []byte
func encodeRune()  {
  var r rune = 0x4E2D
  fmt.Printf("the unicode charactor is %c\n", r) // 中
  buf := make([]byte, 3)
  _ = utf8.EncodeRune(buf, r) // 对rune进行utf-8编码
  fmt.Printf("utf-8 representation is 0X%X\n", buf)
}

// []byte -> rune
func decodeRune() {
  var buf = []byte{0xE4, 0xB8, 0xAD}
  r, _ := utf8.DecodeRune(buf) // 对 buf 进行 utf-8 解码
  fmt.Printf("the unicode charactor after decoding [0xE4, 0xB8, 0xAD] is %s\n", string(r))
}
