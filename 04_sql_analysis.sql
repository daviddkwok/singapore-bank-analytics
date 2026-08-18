-- =====================================================
-- BANK TRANSACTION SQL ANALYSIS
-- =====================================================

-- Question 1:
-- What accounts does each customer own?
-- Show the customer's name, account ID, account type, and balance.

-- Write your query below:

SELECT name, account_id, account_type, balance 
FROM customers
INNER JOIN accounts
	ON customers.customer_id = accounts.customer_id;

-- =====================================================

-- Question 2:
-- What is each customer's total account balance?
-- Show the customer's name and total balance.
-- Sort from highest total balance to lowest.

-- Write your query below:

SELECT name, SUM(balance) AS total_balance
FROM customers
INNER JOIN accounts
	ON customers.customer_id = accounts.customer_id
GROUP BY customers.customer_id, name
ORDER BY SUM(balance) DESC;

-- =====================================================

-- Question 3:
-- Which customers have more than one account?
-- Show the customer's name and number of accounts.

-- Write your query below:

SELECT name, COUNT (account_id) AS number_of_accounts
FROM customers
INNER JOIN accounts
	ON customers.customer_id = accounts.customer_id
GROUP BY customers.customer_id, name
HAVING COUNT(account_id) > 1;

-- =====================================================

-- Question 4:
-- Who are the top 5 customers by total account balance?
-- Show the customer's name and total balance.
-- Sort from highest to lowest.

-- Write your query below:

SELECT name, SUM(balance) AS total_balance
FROM customers
INNER JOIN accounts
	ON customers.customer_id = accounts.customer_id
GROUP BY customers.customer_id, name
ORDER BY total_balance DESC
LIMIT 5;

-- =====================================================

-- Question 5:
-- What is the total transaction value for each customer?
-- Show the customer's name and total transaction amount.
-- Sort from highest to lowest.

-- Write your query below:

SELECT name, SUM(amount) AS total_transaction_amount
FROM customer_account_transactions
GROUP BY customer_id, name
ORDER BY total_transaction_amount DESC;

-- =====================================================

-- Question 6:
-- Which customer segment has the highest total transaction value?
-- Show the customer segment and total transaction amount.
-- Sort from highest to lowest.

-- Write your query below:

SELECT customer_segment, SUM(amount) AS total_transaction_value
FROM customer_account_transactions
GROUP BY customer_segment
ORDER BY total_transaction_value DESC
LIMIT 1;

-- =====================================================

-- Question 7:
-- Which transaction categories have the highest total transaction value?
-- Show the transaction category and total transaction amount.
-- Sort from highest to lowest.

-- Write your query below:

SELECT transaction_category, SUM(amount) AS total_transaction_value
FROM customer_account_transactions
GROUP BY transaction_category
ORDER BY total_transaction_value DESC;

-- =====================================================

-- Question 8:
-- What is the average transaction amount for each account type?
-- Show the account type and average transaction amount.
-- Sort from highest average to lowest.

-- Write your query below:

SELECT account_type, ROUND(AVG(amount)::numeric, 2) AS average_transaction_amount
FROM customer_account_transactions
GROUP BY account_type
ORDER BY average_transaction_amount DESC;

-- =====================================================

-- Question 9:
-- Which customers have a total transaction value above 5000?
-- Show the customer's name and total transaction amount.
-- Sort from highest to lowest.

-- Write your query below:

SELECT name, SUM(amount) AS total_transaction_amount
FROM customer_account_transactions
GROUP BY customer_id, name
HAVING SUM(amount) > 5000
ORDER BY total_transaction_amount DESC;

-- =====================================================

-- Question 10:
-- What are the 10 largest transactions?
-- Show:
-- customer name
-- account ID
-- account type
-- transaction date
-- transaction category
-- transaction amount
-- Sort from largest transaction to smallest.

-- Write your query below:

SELECT name, account_id, account_type, transaction_date, transaction_category, amount 
FROM customer_account_transactions
ORDER BY amount DESC
LIMIT 10;

-- =====================================================

-- Question 11:
-- Which accounts have the highest number of transactions?
-- Show the account ID, account type, customer name,
-- and number of transactions.
-- Sort from most transactions to least.

-- Write your query below:

SELECT account_id, account_type, name, COUNT(transaction_id) AS number_of_transactions
FROM customer_account_transactions
GROUP BY account_id, account_type, name
ORDER BY number_of_transactions DESC;

-- =====================================================

-- Question 12:
-- Which customers own both a Savings account and at least
-- one other type of account?
-- Show the customer's name.

-- Write your query below:

SELECT name FROM customers
INNER JOIN accounts
	ON customers.customer_id = accounts.customer_id
GROUP BY customers.customer_id, name
HAVING 
	SUM(CASE WHEN account_type = 'Savings' THEN 1 ELSE 0 END) >=1
	AND
	SUM(CASE WHEN account_type != 'Savings' THEN 1 ELSE 0 END) >=1;

-- =====================================================
-- END OF ANALYSIS
-- =====================================================
