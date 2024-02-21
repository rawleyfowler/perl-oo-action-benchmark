package main

type User struct {
	name string
	age  int
}

func (u User) execute() User {
	return User{name: u.name, age: u.age}
}

func main() {
	for i := 1; i <= 1000000; i++ {
		user := User{name: "Tim", age: 12}.execute
		// Fatal compile error: user declared and not used
		_ = user // "use" it so Golang will compile
	}
}

/* On jhannah's laptop on git SHA 8f559e5a42f:

✗ go version
go version go1.21.5 darwin/amd64
✗ time go run golang.go
go run golang.go  0.13s user 0.15s system 78% cpu 0.362 total

✗ time perl perl.pl
perl perl.pl  1.72s user 0.01s system 98% cpu 1.759 total
✗ time perl corinna.pl
perl corinna.pl  2.99s user 0.02s system 99% cpu 3.031 total
✗ time ruby ruby.rb
ruby ruby.rb  0.55s user 0.03s system 98% cpu 0.587 total
✗ time python3 python.py
python3 python.py  0.64s user 0.02s system 98% cpu 0.676 total
*/
