# Smart Parking & Vehicle Management System

## 1. Project Overview

The Smart Parking & Vehicle Management System is a database management project developed using **MySQL** to manage parking operations, vehicle registrations, parking slot availability, parking sessions, payments, and violations.

The main objective of this project is to design and implement a structured relational database that simplifies parking management through SQL queries, constraints, transactions, views, triggers, and stored procedures.

This project focuses entirely on SQL and database management without using any frontend or backend technologies.

## 2. Project Objectives

- Maintain vehicle owner and vehicle information.
- Manage multiple parking areas and parking slots.
- Track available and occupied parking slots.
- Record vehicle entry and exit times.
- Calculate parking charges based on parking duration and applicable rates.
- Maintain payment records.
- Track parking violations and fines.
- Generate parking and revenue reports.

## 3. Technologies Used

- **Database:** MySQL 8.4 LTS
- **Database Management Tool:** MySQL Workbench
- **Query Language:** SQL

## 4. Database Design

The project consists of the following nine main tables:

| Table Name | Description |
|---|---|
| `owners` | Stores vehicle owner details |
| `vehicle_types` | Stores vehicle categories |
| `vehicles` | Stores registered vehicle information |
| `parking_areas` | Stores parking area details |
| `parking_slots` | Maintains individual parking slots |
| `parking_rates` | Stores parking charges for vehicle types |
| `parking_sessions` | Tracks vehicle entry and exit |
| `payments` | Maintains parking payment records |
| `violations` | Stores parking violations and fines |

## 5. SQL Concepts Implemented

### 5.1 SQL Fundamentals
- DDL – CREATE, ALTER, DROP, TRUNCATE
- DML – INSERT, UPDATE, DELETE
- DQL – SELECT
- DCL – GRANT, REVOKE
- TCL – COMMIT, ROLLBACK, SAVEPOINT

### 5.2 SQL Query Operations
- WHERE, ORDER BY, GROUP BY, HAVING
- Aggregate Functions
- String and Date Functions
- Joins (INNER, LEFT, RIGHT)
- Subqueries and Correlated Subqueries
- Common Table Expressions (CTEs)
- Window Functions

### 5.3 Advanced SQL Concepts
- Views
- Indexes
- Stored Procedures
- Stored Functions
- Triggers
- Transactions
- Constraints
- Database Normalization

## 6. System Workflow

1. Register vehicle owners.
2. Register vehicles and assign vehicle types.
3. Create parking areas and parking slots.
4. Configure parking rates.
5. Check available parking slots.
6. Record vehicle entry and allocate a parking slot.
7. Record vehicle exit and calculate parking charges.
8. Store payment information.
9. Release the parking slot for the next vehicle.
10. Record violations and generate reports.

## 7. Reports and Analysis

The database supports the generation of the following reports:

- Total registered vehicles.
- Available and occupied parking slots.
- Currently parked vehicles.
- Daily and monthly parking revenue.
- Parking area-wise occupancy.
- Most frequently used parking slots.
- Vehicle-wise parking history.
- Unpaid parking fines.

## 8. Project Structure

```text
Smart-Parking-Management-System/
│
├── README.md
│
├── database/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_sample_data.sql
│   ├── 04_basic_queries.sql
│   ├── 05_joins_and_subqueries.sql
│   ├── 06_views.sql
│   ├── 07_triggers.sql
│   ├── 08_stored_procedures.sql
│   ├── 09_functions.sql
│   └── 10_transactions.sql
│
└── reports/
    └── (Optional SQL query outputs)
```

## 9. Project Status

**Currently Under Development**

This project is being developed to gain practical experience in SQL, relational database design, database normalization, and advanced MySQL concepts.

---

**Developed using MySQL | SQL Database Management Project**
