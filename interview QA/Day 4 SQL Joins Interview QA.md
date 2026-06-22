# Day 4 SQL Joins Interview Questions & Answers

## Azure Data Engineer Preparation Handbook

---

# Table of Contents

1. Database Relationships
2. Primary Key & Foreign Key
3. SQL Joins
4. INNER JOIN
5. LEFT JOIN
6. RIGHT JOIN
7. FULL JOIN
8. SELF JOIN
9. Multiple Table Joins
10. Data Engineering Use Cases
11. Scenario-Based Interview Questions
12. Quick Revision Sheet

---

# SECTION 1: DATABASE RELATIONSHIPS

## Q1. What is a Relational Database?

### Answer

A relational database stores data in multiple tables and connects those tables using relationships.

### Example

### Customers Table

| CustomerID | CustomerName |
| ---------- | ------------ |
| 1          | Sai          |
| 2          | Ravi         |

### Orders Table

| OrderID | CustomerID |
| ------- | ---------- |
| 101     | 1          |
| 102     | 2          |

CustomerID is used to establish a relationship between the two tables.

### Interview Answer

A relational database organizes data into tables and connects them using relationships to reduce redundancy and improve data consistency.

---

## Q2. Why do we use multiple tables?

### Answer

We use multiple tables to:

* Avoid duplicate data
* Improve data consistency
* Reduce storage requirements
* Simplify maintenance

### Interview Answer

Relational databases separate data into logical tables to improve integrity and eliminate redundancy.

---

# SECTION 2: PRIMARY KEY & FOREIGN KEY

## Q3. What is a Primary Key?

### Answer

A Primary Key uniquely identifies each record in a table.

### Example

```sql
CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);
```

### Key Properties

* Unique
* Cannot be NULL
* One primary key per table

---

## Q4. What is a Foreign Key?

### Answer

A Foreign Key creates a relationship between two tables.

### Example

```sql
CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY(CustomerID)
    REFERENCES Customers(CustomerID)
);
```

### Interview Answer

A Foreign Key maintains referential integrity by linking records between tables.

---

## Q5. Why do we use Foreign Keys?

### Answer

Foreign Keys:

* Maintain data integrity
* Prevent invalid references
* Connect related tables

---

# SECTION 3: SQL JOINS

## Q6. What is a JOIN?

### Answer

A JOIN combines rows from multiple tables using a common column.

### Interview Answer

SQL joins allow retrieval of related data stored across different tables.

---

## Q7. Why are JOINS important?

### Answer

Most business data is stored in separate tables.

Examples:

* Customers and Orders
* Employees and Departments
* Products and Sales

Joins help combine this data for reporting and analytics.

---

# SECTION 4: INNER JOIN

## Q8. What is INNER JOIN?

### Answer

INNER JOIN returns only matching records from both tables.

### Syntax

```sql
SELECT *
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

---

## Q9. How does INNER JOIN work?

### Answer

It compares values from both tables and returns only rows where a match exists.

---

## Q10. What happens to non-matching records?

### Answer

Non-matching records are excluded from the result.

---

## Q11. Real Business Example

### Question

Show employee names with department names.

### Answer

```sql
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;
```

---

# SECTION 5: LEFT JOIN

## Q12. What is LEFT JOIN?

### Answer

LEFT JOIN returns:

* All rows from the left table
* Matching rows from the right table

---

## Q13. What happens when there is no match?

### Answer

Columns from the right table contain NULL values.

---

## Q14. Syntax

```sql
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

---

## Q15. Difference Between INNER JOIN and LEFT JOIN

### INNER JOIN

Returns only matching rows.

### LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

---

## Q16. Real Azure Scenario

### Answer

Find all customers even if they have never placed an order.

LEFT JOIN is commonly used for this requirement.

---

# SECTION 6: RIGHT JOIN

## Q17. What is RIGHT JOIN?

### Answer

RIGHT JOIN returns:

* All rows from the right table
* Matching rows from the left table

---

## Q18. Syntax

```sql
SELECT *
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

---

## Q19. Difference Between LEFT JOIN and RIGHT JOIN

### LEFT JOIN

Keeps all rows from the left table.

### RIGHT JOIN

Keeps all rows from the right table.

---

# SECTION 7: FULL JOIN

## Q20. What is FULL JOIN?

### Answer

FULL JOIN returns:

* All rows from left table
* All rows from right table
* Matching rows

---

## Q21. Does MySQL support FULL OUTER JOIN?

### Answer

No.

MySQL does not directly support FULL OUTER JOIN.

---

## Q22. How can FULL JOIN be implemented in MySQL?

### Answer

Using UNION between LEFT JOIN and RIGHT JOIN.

---

# SECTION 8: SELF JOIN

## Q23. What is SELF JOIN?

### Answer

A SELF JOIN joins a table with itself.

---

## Q24. Real Example

### Employee Table

| EmpID | Name | ManagerID |
| ----- | ---- | --------- |
| 1     | CEO  | NULL      |
| 2     | Sai  | 1         |
| 3     | Ravi | 1         |

---

## Q25. SELF JOIN Query

```sql
SELECT
    e.Name AS Employee,
    m.Name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.ManagerID = m.EmpID;
```

---

## Q26. When is SELF JOIN used?

### Answer

Used for hierarchical data:

* Employees and Managers
* Categories and Subcategories
* Parent-Child Relationships

---

# SECTION 9: MULTIPLE TABLE JOINS

## Q27. Can SQL join more than two tables?

### Answer

Yes.

### Example

```sql
SELECT *
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
INNER JOIN Locations l
ON d.LocationID = l.LocationID;
```

---

## Q28. Why do we use multiple joins?

### Answer

Business information is often distributed across several tables.

Multiple joins help create complete datasets for reporting.

---

# SECTION 10: DATA ENGINEERING INTERVIEW QUESTIONS

## Q29. Why are JOINS important in Data Engineering?

### Answer

Data engineers combine data from multiple systems and tables for analytics and reporting.

Joins are fundamental to ETL and data transformation processes.

---

## Q30. Where are JOINS used in Azure Data Factory?

### Answer

* Mapping Data Flows
* ETL Transformations
* Data Integration Pipelines

---

## Q31. Where are JOINS used in Databricks?

### Answer

Databricks uses SQL and PySpark joins to process large datasets.

---

## Q32. Where are JOINS used in Azure Synapse?

### Answer

To build analytical datasets and support reporting workloads.

---

## Q33. Where are JOINS used in Power BI?

### Answer

Relationships between tables work similarly to joins.

---

# SECTION 11: SCENARIO-BASED INTERVIEW QUESTIONS

## Q34. Show customer names and order amounts.

### Answer

```sql
SELECT
    c.CustomerName,
    o.Amount
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

---

## Q35. Show all customers even if they have not ordered.

### Answer

```sql
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

---

## Q36. Show employee names with department names.

### Answer

```sql
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;
```

---

## Q37. What happens if a JOIN condition is missing?

### Answer

A Cartesian Product occurs.

Every row from the first table combines with every row from the second table.

---

## Q38. What is a Cartesian Product?

### Answer

A Cartesian Product occurs when every row from one table is paired with every row from another table.

Example:

5 rows × 10 rows = 50 rows

---

## Q39. Which JOIN is used most frequently in industry?

### Answer

INNER JOIN.

It is the most commonly used join in reporting, ETL pipelines, analytics, and business applications.

---

# SECTION 12: QUICK REVISION SHEET

## One-Line Answers

### What is a Primary Key?

A unique identifier for each row.

### What is a Foreign Key?

A key that creates relationships between tables.

### What is a JOIN?

A method to combine data from multiple tables.

### What is INNER JOIN?

Returns matching rows only.

### What is LEFT JOIN?

Returns all left-table rows and matching right-table rows.

### What is RIGHT JOIN?

Returns all right-table rows and matching left-table rows.

### What is FULL JOIN?

Returns all rows from both tables.

### What is SELF JOIN?

A table joined with itself.

### What is a Cartesian Product?

Every row from one table combined with every row from another.

### Which JOIN is most commonly used?

INNER JOIN.

---

# Day 4 Completion Checklist

* Understand Primary Key
* Understand Foreign Key
* Write INNER JOIN from memory
* Write LEFT JOIN from memory
* Explain RIGHT JOIN
* Explain SELF JOIN
* Explain Cartesian Product
* Solve Employee–Department JOIN problems
* Push Day 4 work to GitHub

Congratulations on completing Day 4 SQL Joins preparation.
This topic is one of the most frequently asked SQL interview areas for Azure Data Engineer, Data Analyst, and ETL Developer roles.
