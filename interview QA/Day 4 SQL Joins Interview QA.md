Day 4 SQL Joins Interview Questions & Answers
Azure Data Engineer Preparation
#SECTION 1: DATABASE RELATIONSHIPS
#Q1. What is a Relational Database?
Answer
A relational database stores data in multiple tables and connects those tables using relationships.
Example
Customers Table:
CustomerID	CustomerName
1	Sai
2	Ravi
Orders Table:
OrderID	CustomerID
101	1
102	2
CustomerID connects both tables.
Q2. Why do we use multiple tables?
Answer
To avoid:
Duplicate data
Data inconsistency
Storage waste
Interview Answer
A relational database stores related information in separate tables to improve data integrity and reduce redundancy.
Q3. What is a Primary Key?
Answer
A Primary Key uniquely identifies each row in a table.
Example
CREATE TABLE Customers(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50)
);
CustomerID cannot be duplicated.
Q4. What are the properties of a Primary Key?
Answer
Unique
Cannot be NULL
One Primary Key per table
Q5. What is a Foreign Key?
Answer
A Foreign Key creates a relationship between two tables.
Example
CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
CustomerID INT,
FOREIGN KEY(CustomerID)
REFERENCES Customers(CustomerID)
);
Q6. Why do we use Foreign Keys?
Answer
To maintain data integrity and establish relationships between tables.
SECTION 2: JOINS
Q7. What is a JOIN?
Answer
A JOIN combines data from multiple tables using a common column.
Example
Customers + Orders
Q8. Why are JOINS important?
Answer
Business data is usually stored across multiple tables.
To generate reports, we combine those tables using JOINS.
SECTION 3: INNER JOIN
Q9. What is INNER JOIN?
Answer
INNER JOIN returns only matching rows from both tables.
Syntax
SELECT *
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID;
Q10. How does INNER JOIN work?
Answer
It compares values in the joining columns and returns only matching records.
Q11. What records are excluded in INNER JOIN?
Answer
Non-matching rows from either table are excluded.
Q12. Real Business Example of INNER JOIN?
Answer
Show employee names and department names.
SELECT
e.EmployeeName,
d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID=d.DepartmentID;
SECTION 4: LEFT JOIN
Q13. What is LEFT JOIN?
Answer
LEFT JOIN returns:
All rows from the left table
Matching rows from the right table
Q14. What happens if no match exists?
Answer
NULL values are returned for right table columns.
Q15. Syntax of LEFT JOIN
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID=o.CustomerID;
Q16. Difference Between INNER JOIN and LEFT JOIN?
Answer
INNER JOIN:
Returns only matching rows.
LEFT JOIN:
Returns all rows from the left table and matching rows from the right table.
Q17. Real Azure Scenario for LEFT JOIN
Answer
Find all customers even if they have not placed orders.
SECTION 5: RIGHT JOIN
Q18. What is RIGHT JOIN?
Answer
RIGHT JOIN returns:
All rows from the right table
Matching rows from the left table
Q19. Syntax
SELECT *
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID=o.CustomerID;
Q20. Difference Between LEFT JOIN and RIGHT JOIN?
Answer
LEFT JOIN keeps all rows from left table.
RIGHT JOIN keeps all rows from right table.
SECTION 6: FULL JOIN
Q21. What is FULL JOIN?
Answer
FULL JOIN returns:
All rows from left table
All rows from right table
Matching rows
Q22. Does MySQL support FULL JOIN?
Answer
No.
MySQL does not directly support FULL OUTER JOIN.
Q23. How can FULL JOIN be achieved in MySQL?
Answer
Using UNION of LEFT JOIN and RIGHT JOIN.
SECTION 7: SELF JOIN
Q24. What is SELF JOIN?
Answer
A table joined with itself.
Q25. Real Example of SELF JOIN?
Answer
Employee and Manager relationship.
Employee table:
EmpID	Name	ManagerID
1	CEO	NULL
2	Sai	1
3	Ravi	1
Q26. SELF JOIN Query
SELECT
e.Name AS Employee,
m.Name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.ManagerID=m.EmpID;
Q27. When is SELF JOIN used?
Answer
Hierarchical data:
Employees and Managers
Categories and Subcategories
Parent-Child relationships
SECTION 8: MULTIPLE TABLE JOINS
Q28. Can SQL join more than two tables?
Answer
Yes.
Example
SELECT *
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID=d.DepartmentID
INNER JOIN Locations l
ON d.LocationID=l.LocationID;
Q29. Why are multiple joins used?
Answer
To combine data spread across several business tables.
SECTION 9: REAL DATA ENGINEERING QUESTIONS
Q30. Why are JOINS important in Data Engineering?
Answer
Data is stored across multiple systems and tables.
JOINS help combine that data for analytics and reporting.
Q31. Where are JOINS used in Azure Data Factory?
Answer
Mapping Data Flows
Data Transformations
ETL Pipelines
Q32. Where are JOINS used in Databricks?
Answer
Databricks uses SQL and PySpark joins to combine large datasets.
Q33. Where are JOINS used in Azure Synapse?
Answer
To build analytical datasets and reports.
Q34. Where are JOINS used in Power BI?
Answer
Relationships between tables act similarly to joins.
SECTION 10: SCENARIO QUESTIONS
Q35. Customer Table + Orders Table
How do you show customer names and order amounts?
Answer
Use INNER JOIN.
SELECT
c.CustomerName,
o.Amount
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID;
Q36. Show all customers even without orders.
Answer
Use LEFT JOIN.
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID=o.CustomerID;
Q37. Show employees and departments.
Answer
SELECT
e.EmployeeName,
d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID=d.DepartmentID;
Q38. What will happen if JOIN condition is missing?
Answer
A Cartesian Product occurs.
Every row combines with every other row.
This creates huge unnecessary data.
Q39. What is a Cartesian Product?
Answer
When every row from Table A joins with every row from Table B.
Example:
5 rows × 10 rows = 50 rows.
Q40. What is the most commonly used JOIN in industry?
Answer
INNER JOIN.
It is used in almost every reporting and ETL project.
