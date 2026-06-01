# SQL Practice for QA Testing

This project is a basic SQL practice project using SQLite.

The goal is to practice common SQL queries that may be used in QA testing, such as data validation, filtering, counting records, and checking relationships between tables.

## Tools

* SQLite
* DB Browser for SQLite
* VS Code
* Git / GitHub

## Database Tables

This project includes two tables: `users` and `orders`.

### users

The `users` table stores basic user information.

| Column | Description |
| ------ | ----------- |
| id     | User ID     |
| name   | User name   |
| email  | User email  |
| status | User status |

### orders

The `orders` table stores order information.

| Column       | Description     |
| ------------ | --------------- |
| id           | Order ID        |
| user_id      | Related user ID |
| product_name | Product name    |
| amount       | Order amount    |
| status       | Order status    |

## SQL Topics Practiced

* CREATE TABLE
* INSERT
* SELECT
* WHERE
* AND / OR
* LIKE
* ORDER BY
* LIMIT
* COUNT
* SUM
* AVG
* GROUP BY
* HAVING
* UPDATE
* DELETE
* ALTER TABLE
* JOIN
* LEFT JOIN
* IS NULL

## Project Structure

```text
SQL-practice
├── database
│   └── qa_practice.db
├── notes
│   └── learning-notes.md
├── sql
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   ├── 03_basic_crud.sql
│   ├── 04_filter_queries.sql
│   ├── 05_group_by_stats.sql
│   └── 06_join_queries.sql
└── README.md
```

## Practice Files

### 01_create_tables.sql

Creates the `users` and `orders` tables.

### 02_insert_data.sql

Inserts sample users and orders data.

### 03_basic_crud.sql

Practices basic CRUD operations:

* SELECT
* INSERT
* UPDATE
* DELETE

### 04_filter_queries.sql

Practices filtering and sorting queries:

* WHERE
* AND
* OR
* LIKE
* ORDER BY
* LIMIT

### 05_group_by_stats.sql

Practices statistics and grouping queries:

* COUNT
* SUM
* AVG
* GROUP BY
* HAVING

### 06_join_queries.sql

Practices multi-table queries:

* JOIN
* LEFT JOIN
* IS NULL
* GROUP BY with JOIN

## QA Testing Use Cases

These SQL queries can be used for QA testing scenarios such as:

* Checking whether test data exists in the database
* Verifying user status after an update
* Counting filtered records
* Validating search results
* Checking whether orders are correctly linked to users
* Finding users without related orders

## Learning Goal

The goal of this project is to build basic SQL query skills for QA testing and software testing interviews.
