# Singapore Bank Analytics

A PostgreSQL project using simulated banking data to practice SQL and relational database concepts.

The database contains customer, account and transaction data. I used SQL to analyse customer balances, transaction activity and account usage.

## Database Structure

The project uses three main tables:
- `customers`
- `accounts`
- `transactions`

The tables are linked as follows:
`customers` → `accounts` → `transactions`

## SQL Skills Used

- Creating tables
- Primary and foreign keys
- INNER JOIN
- GROUP BY
- SUM, AVG and COUNT
- HAVING
- ORDER BY
- LIMIT
- CASE WHEN
- Views

## Analysis

Some of the questions explored in this project include:
- Which customers have the highest total account balances?
- Which customers own more than one account?
- Which customer segment has the highest transaction value?
- Which transaction categories have the highest transaction value?
- What is the average transaction amount by account type?
- Which accounts have the highest number of transactions?

## Files

- `01_create_tables.sql` - creates the database tables
- `02_insert_data.sql` - inserts the sample data
- `03_create_view.sql` - creates a joined view for analysis
- `04_analysis.sql` - contains the analysis queries

## Tools

- PostgreSQL
- pgAdmin
- SQL
- GitHub

## Note

All data used in this project is simulated and does not represent real customers or transactions.
