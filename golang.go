package main

type User struct {
	name string
	age  int
}

func (u User) execute() map[string]any {
	return map[string]any{"name": u.name, "age": u.age}
}

func main() {
	for i := 1; i <= 1000000; i++ {
		user := User{name: "Tim", age: 12}.execute
		// Fatal compile error: user declared and not used
		_ = user // "use" it so Golang will compile
	}
}
