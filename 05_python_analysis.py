# Singapore Bank Analytics
# Python / pandas analysis

import pandas as pd

# Load the data
customers = pd.read_csv("customers.csv")
accounts = pd.read_csv("accounts.csv")
transactions = pd.read_csv("transactions.csv")


# Join customer and account data
customer_accounts = customers.merge(
    accounts,
    on="customer_id",
    how="inner"
)


# Join transaction data
full_data = customer_accounts.merge(
    transactions,
    on="account_id",
    how="inner"
)


# Q1: Which customers have the highest total transaction value?
customer_totals = (
    full_data.groupby("name")["amount"]
    .sum()
    .reset_index()
    .rename(columns={"amount": "total_transaction_value"})
    .sort_values("total_transaction_value", ascending=False)
)

print(customer_totals)


# Q2: Which customer segment has the highest total transaction value?
customer_segment_totals = (
    full_data.groupby("customer_segment")["amount"]
    .sum()
    .reset_index()
    .rename(columns={"amount": "total_transaction_value"})
    .sort_values("total_transaction_value", ascending=False)
)

print(customer_segment_totals)


# Q3: What is the average transaction amount for each account type?
account_type_average = (
    full_data.groupby("account_type")["amount"]
    .mean()
    .reset_index()
    .rename(columns={"amount": "average_transaction_value"})
    .sort_values("average_transaction_value", ascending=False)
)

print(account_type_average)


# Q4: Which transaction categories have the highest total transaction value?
transaction_category_totals = (
    full_data.groupby("transaction_category")["amount"]
    .sum()
    .reset_index()
    .rename(columns={"amount": "total_transaction_value"})
    .sort_values("total_transaction_value", ascending=False)
)

print(transaction_category_totals)


# Q5: Who are the top 5 customers by total transaction value?
print(customer_totals.head(5))


# Q6: Which customers have total transaction value above 5,000?
above_5000 = customer_totals[
    customer_totals["total_transaction_value"] > 5000
]

print(above_5000)


# Q7: What are the 10 largest individual transactions?
sorted_transactions = full_data.sort_values(
    "amount",
    ascending=False
)

print(
    sorted_transactions[
        [
            "name",
            "account_id",
            "account_type",
            "transaction_date",
            "transaction_category",
            "amount"
        ]
    ].head(10)
)


# Q8: Which accounts have the highest number of transactions?
account_transaction_counts = (
    full_data.groupby(
        ["account_id", "account_type", "name"]
    )["transaction_id"]
    .count()
    .reset_index()
    .rename(columns={"transaction_id": "count_transactions"})
    .sort_values("count_transactions", ascending=False)
)

print(account_transaction_counts)