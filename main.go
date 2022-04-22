package main

import (
  "fmt"
  "github.com/google/uuid"
  "github.com/sirupsen/logrus"
)

func init()  {
  fmt.Println("init invoked")
}

func main() {
  logrus.Println("hello, go module mode")
  logrus.Println(uuid.NewString())
}
