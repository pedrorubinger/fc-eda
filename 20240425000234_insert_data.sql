-- +goose Up
INSERT INTO clients (id, name, email, created_at) VALUES ('1', 'John Doe', 'john@example.com', '2024-04-25');
INSERT INTO clients (id, name, email, created_at) VALUES ('2', 'Jane Smith', 'jane@example.com', '2024-04-25');

INSERT INTO accounts (id, client_id, balance, created_at) VALUES ('1', '1', 1000, '2024-04-25');
INSERT INTO accounts (id, client_id, balance, created_at) VALUES ('2', '2', 500, '2024-04-25');

INSERT INTO transactions (id, account_id_from, account_id_to, amount, created_at) VALUES ('1', '1', '2', 200, '2024-04-25');
INSERT INTO transactions (id, account_id_from, account_id_to, amount, created_at) VALUES ('2', '2', '1', 100, '2024-04-25');

-- +goose Down
DELETE FROM transactions WHERE id IN ('1', '2');
DELETE FROM accounts WHERE id IN ('1', '2');
DELETE FROM clients WHERE id IN ('1', '2');

