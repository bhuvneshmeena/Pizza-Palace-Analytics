# Pizza Sales Analysis Project

## Overview

The analysis of the pizza sales dataset involves answering 13 specific questions about customer behavior, pizza preferences, and revenue generation. The analysis is divided into three categories:

* #### Descriptive Analysis: 
This category includes queries that provide an overview of the dataset, such as the total number of orders placed, the total revenue generated from pizza sales, and the highest-priced pizza.
* #### Exploratory Analysis:
This category includes queries that explore the relationships between different variables in the dataset, such as the distribution of orders by hour of the day, the category-wise distribution of pizzas, and the top 5 most ordered pizza types along with their quantities.
* #### Inferential Analysis:
This category includes queries that draw conclusions about the dataset, such as the top 3 most ordered pizza types based on revenue, the percentage contribution of each pizza type to total revenue, and the cumulative revenue generated over time.

## Dataset

The dataset used in this project consists of several tables, including:

* `orders`: contains information about each order, including the order ID, date, and customer ID
* `order_details`: contains information about each item in an order, including the order ID, pizza ID, and quantity
* `pizzas`: contains information about each pizza, including the pizza ID, name, and price
* `pizza_types`: contains information about each pizza type, including the pizza type ID, name, and category

## How to Install and Run the Project
### Prerequisites
* A relational database management system (RDBMS) such as MySQL or PostgreSQL
* A SQL client or IDE such as SQL Server Management Studio or IntelliJ IDEA
* A CSV file reader or spreadsheet software such as Microsoft Excel or Google Sheets

### Installation
* Create a new database in your RDBMS and import the provided CSV files (orders.csv, order_details.csv, pizzas.csv, and pizza_types.csv) into the corresponding tables.
* Review the SQL queries provided in the Q1.sql to Q13.sql files and modify them as necessary to fit your database schema.
* Execute the SQL queries in your SQL client or IDE to generate the results.

### Running the Project
* Open the Q1.sql to Q13.sql files and execute each query in sequence to generate the results.
* Review the results of each query and analyze the insights gained from the pizza sales data.
* Use the results to answer questions about customer behavior, pizza preferences, and revenue generation.

## Results
The results of each query are stored in separate CSV files (Q1.csv to Q13.csv) for easy analysis and visualization.
