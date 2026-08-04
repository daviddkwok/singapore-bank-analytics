-- Bank Transaction SQL Analysis
-- File 1: Create Tables

-- 1. Customers Table: Stores basic customer information
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	age INTEGER,
	customer_segment TEXT
);


-- 2. Accounts Table: Each account belongs to one customer
CREATE TABLE accounts(
	account_id INTEGER PRIMARY KEY,
	customer_id INTEGER,
	account_type TEXT,
	balance REAL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


-- 3. Transactions Table: Each transaction belongs to one account
CREATE TABLE transactions(
	transaction_id SERIAL PRIMARY KEY,
	account_id INTEGER,
	transaction_date DATE,
	transaction_type TEXT,
	transaction_category TEXT,
	amount REAL,
	FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);