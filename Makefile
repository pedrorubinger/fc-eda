start_wallet:
	cd walletcore && go run cmd/main.go

start_balance:
	cd balance && go run cmd/main.go

enter_app:
	docker exec -it fc-eda-goapp-1 bash
