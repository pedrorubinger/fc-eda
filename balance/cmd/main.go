package main

import (
	"balance/internal/web/webserver"
	"fmt"
)

func main() {

	webserver := webserver.NewWebServer(":3003")

	fmt.Println("\n[ON] Balance server is running...")
	webserver.Start()
}
