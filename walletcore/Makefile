.PHONY: migrate

migrate_up:
	goose mysql "root:root@tcp(mysql:33061)/wallet" up

migrate_down:
	goose mysql "root:root@tcp(mysql:33061)/wallet" down
