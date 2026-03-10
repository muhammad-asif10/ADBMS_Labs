# ADBMS Labs

This repository contains SQL lab exercises for the **Advanced Database Management Systems (ADBMS)** course. Each lab covers fundamental SQL concepts including Data Definition Language (DDL), Data Manipulation Language (DML), and Data Control Language (DCL).

---

## Lab 1 — Basic SQL (DDL & DML)

**File:** `lab1.sql`

### Section 1 — `person` Table

Creates a simple table and demonstrates basic CRUD operations.

**Table Schema**

| Column | Type         |
|--------|--------------|
| id     | INT          |
| name   | VARCHAR(100) |
| city   | VARCHAR(100) |

**Operations Covered**

- `CREATE TABLE` — Create the `person` table
- `INSERT INTO` — Add three records (Ahmad/Lahore, Ali/Multan, Muhammad Adeel/Pattoki)
- `SELECT *` — Retrieve all rows
- `SELECT city` — Retrieve a specific column
- `UPDATE` — Change Ali's city to London
- `DELETE` — Remove the record where `name = 'Ahmad'`
- `SELECT … WHERE` — Filter rows by name

---

### Section 2 — `employees` Table

Creates a more structured table with constraints and demonstrates the same CRUD patterns on a realistic dataset.

**Table Schema**

| Column    | Type           | Constraints                        |
|-----------|----------------|------------------------------------|
| emp_id    | SERIAL         | PRIMARY KEY                        |
| fname     | VARCHAR(50)    | NOT NULL                           |
| lname     | VARCHAR(50)    | NOT NULL                           |
| email     | VARCHAR(50)    | NOT NULL, UNIQUE                   |
| dept      | VARCHAR(50)    |                                    |
| salary    | DECIMAL(10, 2) | DEFAULT 30000.00                   |
| hire_date | DATE           | NOT NULL, DEFAULT CURRENT_DATE     |

**Sample Data** — 10 employees across IT, HR, Finance, and Marketing departments

**Operations Covered**

- `CREATE TABLE` — With constraints: `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `DEFAULT`
- `INSERT INTO` — Bulk insert of 10 employee records
- `SELECT *` — Retrieve all employees
- `SELECT email` — Retrieve a specific column
- `UPDATE` — Change department of `emp_id = 2` to `'cs'`
- `DELETE` — Remove the record where `fname = 'Raj'`

---

## Lab 2 — DDL, DML & DCL

**File:** `lab2.sql`

Introduces two related tables, expands on DML operations, and covers user permission management (DCL) and schema modification commands.

### Tables

**`Students`**

| Column     | Type        | Constraints |
|------------|-------------|-------------|
| StudentID  | INT         | PRIMARY KEY |
| Name       | VARCHAR(50) |             |
| Age        | INT         |             |
| Department | VARCHAR(50) |             |

**`Courses`**

| Column     | Type        | Constraints |
|------------|-------------|-------------|
| CourseID   | INT         | PRIMARY KEY |
| CourseName | VARCHAR(50) |             |
| Credits    | INT         |             |

### DML — Data Manipulation Language

| Statement  | Description                                        |
|------------|----------------------------------------------------|
| `INSERT`   | Add students (Ali, Sara) and courses               |
| `UPDATE`   | Set Age = 22 for StudentID = 1                     |
| `DELETE`   | Remove student where StudentID = 2                 |
| `SELECT *` | Retrieve all students                              |
| `SELECT … WHERE` | Retrieve Name and Department for Age > 20  |

### DCL — Data Control Language

| Statement  | Description                                              |
|------------|----------------------------------------------------------|
| `CREATE USER` | Create a new database user `Asif` with a password    |
| `GRANT SELECT` | Grant read-only access on `Students` to `Asif`      |
| `GRANT ALL PRIVILEGES` | Grant full access on `Students` to `Asif` |
| `GRANT SELECT, INSERT` | Grant specific privileges to `Asif`       |
| `REVOKE SELECT` | Revoke read access on `Students` from `Asif`     |

### DDL — Schema Modification

| Statement      | Description                                     |
|----------------|-------------------------------------------------|
| `ALTER TABLE`  | Add an `Email VARCHAR(100)` column to `Students`|
| `DROP TABLE`   | Delete the `Courses` table                      |

---

## Lab 3 — In Progress

**File:** `lab3.sql`

This lab is currently being developed.

---

## Concepts Summary

| Concept | Commands Used |
|---------|---------------|
| **DDL** (Data Definition Language) | `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE` |
| **DML** (Data Manipulation Language) | `INSERT`, `SELECT`, `UPDATE`, `DELETE` |
| **DCL** (Data Control Language) | `CREATE USER`, `GRANT`, `REVOKE` |
| **Constraints** | `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `DEFAULT`, `SERIAL` |

---

## Getting Started

These scripts are written for **PostgreSQL**. To run them:

```bash
psql -U <username> -d <database_name> -f lab1.sql
psql -U <username> -d <database_name> -f lab2.sql
```

Or open your preferred SQL client (e.g., pgAdmin, DBeaver) and execute the `.sql` files directly.
