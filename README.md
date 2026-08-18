# Singapore Bank Analytics

A PostgreSQL and Python project using simulated banking data to practise SQL, relational database concepts and data analysis with pandas.

The database contains customer, account and transaction data. I used SQL and Python/pandas to analyse customer balances, transaction activity and account usage.

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

## Python / pandas Skills Used

- Loading CSV files with `read_csv()`
- `groupby()`
- `sum()`, `mean()` and `count()`
- `agg()`
- `reset_index()`
- `sort_values()`
- `merge()`
- Analysing data across multiple datasets

## Analysis

Some of the questions explored in this project include:
- Which customers have the highest total account balances?
- Which customers own more than one account?
- Which customer segment has the highest transaction value?
- Which transaction categories have the highest transaction value?
- What is the average transaction amount by account type?
- Which accounts have the highest number of transactions?

SQL and Python/pandas were used to analyse the same simulated banking dataset from different perspectives.

## Files

- `01_create_tables.sql` - creates the database tables
- `02_insert_data.sql` - inserts the sample data
- `03_create_view.sql` - creates a joined view for analysis
- `04_sql_analysis.sql` - contains the SQL analysis queries
- `05_python_analysis.py` - contains the Python/pandas analysis
- `customers.csv` - customer data used in the Python analysis
- `accounts.csv` - account data used in the Python analysis
- `transactions.csv` - transaction data used in the Python analysis

## Tools

- PostgreSQL
- pgAdmin
- SQL
- Python
- pandas
- VS Code
- GitHub

## Note

All data used in this project is simulated and does not represent real customers or transactions.
