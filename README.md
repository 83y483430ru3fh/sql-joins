# SQL Joins Practice – Task 5

## 📌 Objective
This project is part of the **SQL Developer Internship Task 5**.  
The goal is to understand and implement different types of SQL joins (`INNER`, `LEFT`, `RIGHT`, `FULL`)  
and apply them to example datasets.

---

## 📂 Project Contents
- **`joins.sql`** → Contains all join queries (INNER, LEFT, RIGHT, FULL).
- **`tables.sql`** → Script to create and insert sample data into tables (`Customers`, `Orders`).
- **`screenshots/`** → Query execution screenshots.
- **`README.md`** → Project documentation (this file).

---

## 🗂 Database Tables
We used **two related tables**:

**Customers**
| CustomerID | CustomerName | Country |
|------------|--------------|---------|
| 1 | Amit Sharma | India |
| 2 | Priya Verma | India |
| 3 | John Smith | USA |
| 4 | Sara Khan | UAE |

**Orders**
| OrderID | CustomerID | OrderDate | Amount |
|---------|------------|-----------|--------|
| 101 | 1 | 2025-08-01 | 5000.00 |
| 102 | 1 | 2025-08-02 | 3000.00 |
| 103 | 2 | 2025-08-03 | 7000.00 |
| 104 | 4 | 2025-08-04 | 2000.00 |

---

## 📝 SQL Queries

### 1️⃣ INNER JOIN
```sql
SELECT c.CustomerName, o.OrderID, o.Amount
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;
