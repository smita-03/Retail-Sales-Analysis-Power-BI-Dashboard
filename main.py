import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="sm03@smita",
    database="retail_sales"
)

print("Connected Successfully")

import pandas as pd
df = pd.read_csv("dataset/retail_sales.csv")
print(df.head())