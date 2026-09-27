# IT Support Ticket Management System

A beginner-friendly **MySQL database project** designed to simulate an IT Support / Service Desk ticket management system.

The project manages employees, company devices, and technical support tickets. It demonstrates how SQL can be used to store, retrieve, join, filter, and analyze IT support data.

---

## Project Overview

This project simulates a company's internal IT support database.

The database contains:

* **20 employees**
* **20 devices**
* **50 support tickets**

The system allows IT support teams to track:

* Employees
* Departments
* Company devices
* Operating systems
* Device status
* Support tickets
* Ticket priority
* Ticket status
* Ticket creation dates

---

## Technologies Used

* **MySQL**
* **PopSQL**
* **SQL**
* **Git / GitHub**

---

## Database Structure

The database contains three main tables:

### 1. Employees

Stores information about company employees.

| Column        | Description         |
| ------------- | ------------------- |
| `employee_id` | Unique employee ID  |
| `name`        | Employee name       |
| `department`  | Employee department |
| `email`       | Employee email      |

### 2. Devices

Stores information about company devices.

| Column             | Description               |
| ------------------ | ------------------------- |
| `device_id`        | Unique device ID          |
| `employee_id`      | Employee using the device |
| `device_type`      | Laptop or Desktop         |
| `operating_system` | Windows version           |
| `status`           | Active or Repair          |

### 3. Tickets

Stores IT support tickets.

| Column        | Description                     |
| ------------- | ------------------------------- |
| `ticket_id`   | Unique ticket ID                |
| `employee_id` | Employee who reported the issue |
| `device_id`   | Device related to the issue     |
| `issue`       | Description of the problem      |
| `priority`    | Low, Medium, or High            |
| `status`      | Open, In Progress, or Closed    |
| `created_at`  | Ticket creation date            |

---

## Database Relationships

The tables are connected using **Primary Keys** and **Foreign Keys**.

```text
EMPLOYEES
   |
   | employee_id
   |
   +------------------+
   |                  |
   v                  v
DEVICES            TICKETS
   |                  |
   | device_id        | employee_id
   +------------------+
          |
          | device_id
          v
       TICKETS
```

### Relationships

```text
employees.employee_id
        ↓
devices.employee_id

employees.employee_id
        ↓
tickets.employee_id

devices.device_id
        ↓
tickets.device_id
```

---

## SQL Concepts Demonstrated

This project demonstrates several important SQL concepts:

* `CREATE DATABASE`
* `CREATE TABLE`
* Primary Keys
* Foreign Keys
* `INSERT`
* `SELECT`
* `UPDATE`
* `DELETE`
* `WHERE`
* `ORDER BY`
* `JOIN`
* Multiple-table `JOIN`
* `GROUP BY`
* `COUNT()`
* `AVG()`
* `HAVING`
* Subqueries
* Views
* Filtering and sorting
* IT support reporting

---

## Example Queries

### Find devices that need repair

```sql
SELECT
    device_id,
    device_type,
    operating_system,
    status
FROM devices
WHERE status = 'Repair';
```

### Find high-priority tickets

```sql
SELECT
    ticket_id,
    employee_id,
    issue,
    priority,
    status
FROM tickets
WHERE priority = 'High';
```

### Count tickets by status

```sql
SELECT
    status,
    COUNT(*) AS ticket_count
FROM tickets
GROUP BY status;
```

### Find tickets assigned to each employee

```sql
SELECT
    employees.name,
    COUNT(tickets.ticket_id) AS ticket_count
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
GROUP BY employees.name
ORDER BY ticket_count DESC;
```

### Combine employees, devices, and tickets

```sql
SELECT
    employees.name,
    devices.device_type,
    devices.operating_system,
    tickets.issue,
    tickets.priority,
    tickets.status
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
JOIN devices
    ON tickets.device_id = devices.device_id;
```

---

## Project Structure

```text
it-support-ticket-system/
│
├── README.md
│
├── sql/
│   ├── 01_database.sql
│   ├── 02_tables.sql
│   ├── 03_data.sql
│   └── 04_queries.sql
│
└── docs/
```

### SQL files

**01_database.sql**

Creates the database.

**02_tables.sql**

Creates the `employees`, `devices`, and `tickets` tables and defines their relationships.

**03_data.sql**

Populates the database with sample employees, devices, and support tickets.

**04_queries.sql**

Contains SQL queries for IT support reporting and analysis.

---

## How to Run the Project

### 1. Clone the repository

```bash
git clone YOUR_REPOSITORY_URL
```

### 2. Open the project

```bash
cd it-support-ticket-system
```

### 3. Open MySQL or PopSQL

Run the SQL files in the following order:

```text
01_database.sql
02_tables.sql
03_data.sql
04_queries.sql
```

The order is important because the database and tables must exist before inserting data and running queries.

---

## Example IT Support Reports

The database can be used to answer questions such as:

* How many tickets are currently open?
* How many high-priority tickets exist?
* Which employees have submitted the most tickets?
* Which departments generate the most support tickets?
* Which devices require repair?
* Which tickets are currently open and high priority?
* How many tickets exist for each priority level?
* Which employees have more tickets than the average?

These are examples of the types of reports an IT Support or Service Desk team could generate using SQL.

---

## Learning Objectives

This project was created to practice SQL in a realistic IT Support environment.

The main objectives were to learn how to:

1. Design a relational database.
2. Create tables and relationships.
3. Use primary and foreign keys.
4. Insert and manage data.
5. Retrieve information using SQL.
6. Combine information using `JOIN`.
7. Group and analyze support data.
8. Use subqueries for more advanced analysis.
9. Create reusable SQL views.
10. Build a practical SQL portfolio project.

---

## Future Improvements

Possible future improvements include:

* Add IT support technicians
* Add ticket assignment
* Add ticket resolution dates
* Calculate ticket resolution time
* Add software inventory
* Add ticket categories
* Add SLA tracking
* Create support dashboards
* Connect the database to Python
* Build a web interface for the support system

---

## Author

**Ahmed Imed Eddine**

Computer Science Student | IT Support | SQL | Linux | Cloud & DevOps

This project is part of my technical portfolio and learning journey toward IT Support, Support Engineering, Linux Administration, Cloud, and DevOps roles.
