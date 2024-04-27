-- +goose Up
CREATE TABLE IF NOT EXISTS balances (
  id varchar(255),
  account_id varchar(255),
  balance int,
  created_at date
);

-- +goose Down
DROP TABLE balances;
