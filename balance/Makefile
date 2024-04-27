.PHONY: migrate

migrate_up:
	goose mysql "root:root@tcp(mysqlbalance:33062)/balance" up

migrate_down:
	goose mysql "root:root@tcp(mysqlbalance:33062)/balance" down
