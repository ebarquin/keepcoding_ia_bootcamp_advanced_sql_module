# 📖 Advanced SQL Practice - Bootcamp IA

This repository contains the solution for the Advanced SQL practice as part of the Artificial Intelligence Bootcamp. Various SQL scripts have been developed in PostgreSQL and BigQuery for data modeling, database creation, and data processing.

## 📌 Project Description

The goal of this practice is to implement a data model for managing calls in an IVR (Interactive Voice Response) system. Several SQL queries are developed to generate key indicators and cleaning functions.

## 🔧 Prerequisites

To run the scripts, you need:

- PostgreSQL installed on your system or using a cloud instance (e.g., Tembo.io).
- Access to Google BigQuery with a sandbox environment enabled.
- A compatible SQL execution environment (e.g., TablePlus, DBeaver, VS Code).

## 📚 Module Topics

In this module, we have worked with **PostgreSQL** and **BigQuery**, exploring different advanced SQL techniques for data processing and analysis. Topics covered include:

### 🔹 Databases and Modeling

- Definition and organization of relational databases.
- Creation of entity-relationship diagrams (ERD).
- Normalization and normal forms (1NF, 2NF, 3NF).
- Referential integrity and primary/foreign keys.

### 🔹 SQL Language and Its Components

- **DDL (Data Definition Language)**: CREATE, ALTER, DROP.
- **DML (Data Manipulation Language)**: INSERT, UPDATE, DELETE.
- **DQL (Data Query Language)**: SELECT, JOINs, subqueries, aggregate functions.
- **DCL (Data Control Language)**: GRANT, REVOKE.

### 🔹 BigQuery

- Introduction to BigQuery and its working environment.
- Creation and management of datasets and tables.
- Advanced queries in BigQuery.

### 🔹 Data Warehousing and ETL

- Concept of Data Warehouse, Data Lake, and Data Mart.
- Differences between OLTP and OLAP.
- ETL (Extract, Transform, Load) and ELT processes.

### 🔹 Advanced SQL

- **Best practices in SQL**: aliases, indentation, modularization with CTEs.
- **Conditional expressions**: CASE WHEN, COALESCE.
- **Aggregate functions**: COUNT, SUM, AVG, STRING_AGG.
- **Queries with subqueries and CTEs (Common Table Expressions).**
- **Use of triggers and stored functions in PostgreSQL.**

## 📁 Repository Structure

The repository is structured as follows:

```
/
|-- diagrams/       # Entity-relationship diagrams
|-- scripts/
|   |-- 02.sql      # Creacion de la base de datos
|   |-- 03.sql    	# Crear la tabla ivr_detail
|   |-- 04.sql      # Generar el campo vdn_aggregation
|   |-- 05.sql      # Generar los campos document_type y document_identification
|   |-- 06.sql      # Generar el campo customer_phone
|   |-- 07.sql      # Generar el campo billing_account_id
|   |-- 08.sql      # Generar el campo masiva_lg
|   |-- 09.sql     	# Generar el campo info_by_phone_lg
|   |-- 10.sql 		# Generar el campo info_by_dni_lg
|   |-- 11.sql 		# Generar los campos repeated_phone_24H, cause_recall_phone_24H
|-- README.md
```

## 🚀 Usage Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/your_username/your_repository.git
   ```
2. Navigate to the repository folder:
   ```bash
   cd your_repository
   ```
3. Execute the scripts in the specified order within the `scripts/` folder.

## 📄 License

Copyright (c) 2025 Eugenio Barquin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## 📬 Contact

If you have any questions or suggestions, feel free to reach out.

---
This project is part of the Artificial Intelligence Bootcamp at Keepcoding.
