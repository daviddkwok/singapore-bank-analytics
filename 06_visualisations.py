# Singapore Bank Analytics
# Python / pandas visualisations

import pandas as pd
import matplotlib.pyplot as plt

# Load the data
customers = pd.read_csv("customers.csv")
accounts = pd.read_csv("accounts.csv")
transactions = pd.read_csv("transactions.csv")


# Merge the data
customer_accounts = customers.merge(
    accounts,
    on="customer_id",
    how="inner"
)

full_data = customer_accounts.merge(
    transactions,
    on="account_id",
    how="inner"
)


# Chart 1: Top 5 customers by transaction value
top_5_customers = (
    full_data.groupby("name")["amount"]
    .sum()
    .reset_index()
    .rename(columns={"amount": "total_transaction_amount"})
    .sort_values("total_transaction_amount", ascending=False)
    .head(5)
)

plt.figure(figsize=(8, 5))
plt.bar(
    top_5_customers["name"],
    top_5_customers["total_transaction_amount"]
)

plt.title("Top 5 Customers by Transaction Value")
plt.xlabel("Customer Name")
plt.ylabel("Total Transaction Amount")
plt.tight_layout()
plt.savefig("charts/top_customers.png")
plt.show()
plt.close()


# Chart 2: Total transaction value by customer segment
customer_segment_totals = (
    full_data.groupby("customer_segment")["amount"]
    .sum()
    .reset_index()
    .rename(columns={"amount": "total_transaction_amount"})
    .sort_values("total_transaction_amount", ascending=False)
)

plt.figure(figsize=(8, 5))
plt.bar(
    customer_segment_totals["customer_segment"],
    customer_segment_totals["total_transaction_amount"]
)

plt.title("Total Transaction Value by Customer Segment")
plt.xlabel("Customer Segment")
plt.ylabel("Total Transaction Amount")
plt.tight_layout()
plt.savefig("charts/customer_segments.png")
plt.show()
plt.close()


# Chart 3: Average transaction value by account type
account_type_average = (
    full_data.groupby("account_type")["amount"]
    .mean()
    .reset_index()
    .rename(columns={"amount": "average_transaction_amount"})
    .sort_values("average_transaction_amount", ascending=False)
)

plt.figure(figsize=(8, 5))
plt.bar(
    account_type_average["account_type"],
    account_type_average["average_transaction_amount"]
)

plt.title("Average Transaction Value by Account Type")
plt.xlabel("Account Type")
plt.ylabel("Average Transaction Value")
plt.tight_layout()
plt.savefig("charts/account_type_average.png")
plt.show()
plt.close()