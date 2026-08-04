-- Bank Transaction SQL Analysis 
-- File 3: Create View

-- Join customer, account and transaction data into one view

CREATE VIEW customer_account_transactions AS 
SELECT 
	customers.customer_id,
	customers.name,
	customers.age, 
	customers.customer_segment, 
	accounts.account_id, 
	accounts.account_type, 
	accounts.balance, 
	transactions.transaction_id, 
	transactions.transaction_date, 
	transactions.transaction_type, 
	transactions.transaction_category, 
	transactions.amount
FROM customers 
INNER JOIN accounts
	ON customers.customer_id = accounts.customer_id
INNER JOIN transactions
	ON accounts.account_id = transactions.account_id;