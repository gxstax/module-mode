package main

import (
	"bytes"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"strings"
)

func CapReader(r io.Reader) io.Reader {
	return &capitalizedReader{r: r}
}

type capitalizedReader struct {
	r io.Reader
}

func (r *capitalizedReader) Read(p []byte) (int, error) {
	n, err := r.r.Read(p)
	if err != nil {
		return 0, err
	}

	q := bytes.ToUpper(p)
	for i, v := range q {
		p[i] = v
	}
	return n, err
}

func greetings(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Welcome")
}

func main() {
	r := strings.NewReader("hello, gopher!\n")
	lr := CapReader(io.LimitReader(r, 4))
	if _, err := io.Copy(os.Stdout, lr); err != nil {
		log.Fatal(err)
	}

	http.ListenAndServe(":8080", http.HandlerFunc(greetings))
}
