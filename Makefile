.PHONY: migrate

migrate_up:
	goose mysql "root:root@tcp(mysql:3306)/wallet" up

migrate_down:
	goose mysql "root:root@tcp(mysql:3306)/wallet" down

start:
	cd walletcore && go run cmd/main.go

enter:
	docker exec -it fc-eda-goapp-1 bash