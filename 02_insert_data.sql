-- Bank Transaction SQL Analysis
-- File 2: Insert sample data

-- 1. Add 10 customers into the customer table
-- customer_id is generated automatically
INSERT INTO customers (name, age, customer_segment)
VALUES
    ('Alice Tan', 25, 'Mass Market'),
    ('Benjamin Lim', 34, 'Mass Affluent'),
    ('Chloe Lee', 42, 'Mass Affluent'),
    ('Daniel Wong', 29, 'Mass Market'),
    ('Emily Ng', 55, 'Private Banking'),
    ('Farhan Rahman', 31, 'Mass Market'),
    ('Grace Koh', 47, 'Mass Affluent'),
    ('Hannah Goh', 23, 'Mass Market'),
    ('Isaac Teo', 38, 'Mass Affluent'),
    ('Jason Ong', 61, 'Private Banking');


-- 2. Add 15 accounts into the accounts table
-- Some customers have more than one account
INSERT INTO accounts (account_id, customer_id, account_type, balance)
VALUES
    (101, 1, 'Savings', 12500.00),
    (102, 1, 'Current', 3200.00),

    (103, 2, 'Savings', 45000.00),
    (104, 2, 'Investment', 80000.00),

    (105, 3, 'Savings', 29000.00),

    (106, 4, 'Current', 8500.00),
    (107, 4, 'Savings', 14000.00),

    (108, 5, 'Savings', 120000.00),
    (109, 5, 'Investment', 250000.00),

    (110, 6, 'Savings', 9800.00),

    (111, 7, 'Investment', 72000.00),
    (112, 7, 'Savings', 36000.00),

    (113, 8, 'Savings', 4200.00),

    (114, 9, 'Current', 18500.00),

    (115, 10, 'Investment', 310000.00);


-- 3. Add 30 transactions into the transactions table
-- transaction_id is generated automatically
INSERT INTO transactions
    (account_id, transaction_date, transaction_type, transaction_category, amount)
VALUES
    (101, '2026-07-01', 'Deposit', 'Salary', 3200.00),
    (101, '2026-07-03', 'Withdrawal', 'Food', 85.50),

    (102, '2026-07-04', 'Transfer', 'Bills', 450.00),
    (102, '2026-07-06', 'Transfer', 'Shopping', 220.00),

    (103, '2026-07-02', 'Deposit', 'Salary', 5200.00),
    (103, '2026-07-09', 'Transfer', 'Investment', 1000.00),

    (104, '2026-07-05', 'Investment', 'Stocks', 5000.00),
    (104, '2026-07-12', 'Investment', 'Bonds', 2500.00),

    (105, '2026-07-07', 'Withdrawal', 'Travel', 1200.00),
    (105, '2026-07-14', 'Transfer', 'Bills', 650.00),

    (106, '2026-07-03', 'Deposit', 'Salary', 4100.00),
    (106, '2026-07-11', 'Transfer', 'Food', 180.00),

    (107, '2026-07-08', 'Transfer', 'Shopping', 340.00),
    (107, '2026-07-15', 'Withdrawal', 'Transport', 90.00),

    (108, '2026-07-01', 'Deposit', 'Business Income', 15000.00),
    (108, '2026-07-10', 'Transfer', 'Investment', 4000.00),

    (109, '2026-07-06', 'Investment', 'Stocks', 25000.00),
    (109, '2026-07-18', 'Investment', 'Funds', 12000.00),

    (110, '2026-07-04', 'Deposit', 'Salary', 3800.00),
    (110, '2026-07-13', 'Withdrawal', 'Food', 125.00),

    (111, '2026-07-02', 'Investment', 'Stocks', 7000.00),
    (111, '2026-07-16', 'Investment', 'Funds', 3500.00),

    (112, '2026-07-05', 'Deposit', 'Salary', 6800.00),
    (112, '2026-07-17', 'Transfer', 'Bills', 780.00),

    (113, '2026-07-03', 'Deposit', 'Allowance', 800.00),
    (113, '2026-07-14', 'Transfer', 'Shopping', 150.00),

    (114, '2026-07-08', 'Deposit', 'Salary', 5900.00),
    (114, '2026-07-20', 'Withdrawal', 'Travel', 900.00),

    (115, '2026-07-01', 'Investment', 'Stocks', 30000.00),
    (115, '2026-07-22', 'Investment', 'Bonds', 15000.00);