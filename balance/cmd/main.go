package main

import (
	"balance/internal/web/webserver"
	"database/sql"
	"fmt"

	_ "github.com/go-sql-driver/mysql"
)

func main() {
	db, err := sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8&parseTime=True&loc=Local", "root", "root", "mysqlbalance", "33062", "balance"))

	if err != nil {
		fmt.Println("Balance database error", err)
		panic(err)
	}

	fmt.Println("DB", db)

	defer db.Close()

	webserver := webserver.NewWebServer(":3003")

	fmt.Println("\n[ON] Balance server is running...")
	webserver.Start()
}
