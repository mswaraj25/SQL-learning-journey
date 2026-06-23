# Day 5 SQL GROUP BY & HAVING Interview Questions & Answers

## Azure Data Engineer Preparation

---

# SECTION 1: GROUP BY FUNDAMENTALS

## Q1. What is GROUP BY?

### Answer

GROUP BY is used to group rows that have the same values in specified columns.

### Example

```sql
SELECT Department
FROM Employees
GROUP BY Department;
```

### Interview Answer

GROUP BY groups similar records together and is commonly used with aggregate functions such as COUNT, SUM, AVG, MIN, and MAX.

---

## Q2. Why do we use GROUP BY?

### Answer

We use GROUP BY to create summarized reports.

Examples:

- Employees per department
- Total sales per city
- Average salary per department

---

## Q3. Can GROUP BY be used without aggregate functions?

### Answer

Yes.

```sql
SELECT Department
FROM Employees
GROUP BY Department;
```

This returns unique departments.

---

## Q4. Which functions are commonly used with GROUP BY?

### Answer

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

---

## Q5. What happens if GROUP BY is omitted?

### Answer

The aggregate function calculates results for the entire table.

Example:

```sql
SELECT AVG(Salary)
FROM Employees;
```

Returns one average for all employees.

---

# SECTION 2: COUNT WITH GROUP BY

## Q6. How do you count employees in each department?

### Answer

```sql
SELECT
Department,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department;
```

---

## Q7. What is COUNT(*)?

### Answer

COUNT(*) counts all rows.

---

## Q8. Difference between COUNT(*) and COUNT(Column)?

### Answer

COUNT(*)

Counts all rows.

COUNT(Column)

Counts only non-NULL values.

---

## Q9. Business Example of COUNT?

### Answer

Find total orders per customer.

```sql
SELECT
CustomerID,
COUNT(*) AS Total_Orders
FROM Orders
GROUP BY CustomerID;
```

---

# SECTION 3: SUM WITH GROUP BY

## Q10. What is SUM()?

### Answer

SUM() calculates total values.

---

## Q11. Find total salary by department.

### Answer

```sql
SELECT
Department,
SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department;
```

---

## Q12. Business Use of SUM()?

### Answer

- Total revenue
- Total sales
- Total salary expenses
- Total transactions

---

# SECTION 4: AVG WITH GROUP BY

## Q13. What is AVG()?

### Answer

AVG() calculates the average value.

---

## Q14. Find average salary by department.

### Answer

```sql
SELECT
Department,
AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY Department;
```

---

## Q15. Real Business Example?

### Answer

Find average order value per customer.

---

# SECTION 5: MIN AND MAX

## Q16. What does MIN() do?

### Answer

Returns the smallest value.

---

## Q17. What does MAX() do?

### Answer

Returns the largest value.

---

## Q18. Find highest salary in each department.

### Answer

```sql
SELECT
Department,
MAX(Salary) AS Highest_Salary
FROM Employees
GROUP BY Department;
```

---

## Q19. Find lowest salary in each department.

### Answer

```sql
SELECT
Department,
MIN(Salary) AS Lowest_Salary
FROM Employees
GROUP BY Department;
```

---

# SECTION 6: MULTIPLE COLUMN GROUP BY

## Q20. Can GROUP BY use multiple columns?

### Answer

Yes.

---

## Example

```sql
SELECT
Department,
City,
COUNT(*)
FROM Employees
GROUP BY Department, City;
```

---

## Q21. Why use multiple columns?

### Answer

To create more detailed summaries.

Example:

Department-wise employee count by city.

---

# SECTION 7: HAVING CLAUSE

## Q22. What is HAVING?

### Answer

HAVING filters grouped results.

---

## Q23. Why do we use HAVING?

### Answer

To filter aggregate results.

---

## Example

```sql
SELECT
Department,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 5;
```

---

## Q24. Difference between WHERE and HAVING?

### Answer

| WHERE | HAVING |
|---------|---------|
| Filters rows | Filters groups |
| Used before GROUP BY | Used after GROUP BY |

---

## Q25. Can HAVING be used without GROUP BY?

### Answer

Yes.

But it is mostly used with GROUP BY.

---

## Q26. Which executes first: WHERE or HAVING?

### Answer

WHERE executes before GROUP BY.

HAVING executes after GROUP BY.

---

# SECTION 8: EXECUTION ORDER

## Q27. What is SQL execution order?

### Answer

```text
FROM
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
```

---

## Q28. Why is execution order important?

### Answer

It helps understand how SQL processes queries internally.

---

# SECTION 9: BUSINESS REPORTING QUESTIONS

## Q29. Find departments having more than 2 employees.

### Answer

```sql
SELECT
Department,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 2;
```

---

## Q30. Find departments with average salary above ₹60,000.

### Answer

```sql
SELECT
Department,
AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 60000;
```

---

## Q31. Find departments with salary expense above ₹100,000.

### Answer

```sql
SELECT
Department,
SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department
HAVING SUM(Salary) > 100000;
```

---

# SECTION 10: AZURE DATA ENGINEERING QUESTIONS

## Q32. Why is GROUP BY important in Data Engineering?

### Answer

GROUP BY is used to create summarized datasets for reporting and analytics.

---

## Q33. Where is GROUP BY used in Azure Data Factory?

### Answer

- Data Flows
- ETL Transformations
- Data Aggregation

---

## Q34. Where is GROUP BY used in Databricks?

### Answer

Databricks uses GROUP BY in SQL and PySpark for large-scale aggregations.

---

## Q35. Where is GROUP BY used in Azure Synapse?

### Answer

For analytical queries and data warehouse reporting.

---

## Q36. Where is GROUP BY used in Power BI?

### Answer

Power BI performs aggregations similar to SQL GROUP BY.

---

# SECTION 11: SCENARIO QUESTIONS

## Q37. Find employee count by department.

### Answer

```sql
SELECT
Department,
COUNT(*)
FROM Employees
GROUP BY Department;
```

---

## Q38. Find average salary by department.

### Answer

```sql
SELECT
Department,
AVG(Salary)
FROM Employees
GROUP BY Department;
```

---

## Q39. Find highest salary by department.

### Answer

```sql
SELECT
Department,
MAX(Salary)
FROM Employees
GROUP BY Department;
```

---

## Q40. Find departments with more than three employees.

### Answer

```sql
SELECT
Department,
COUNT(*)
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 3;
```

---

# QUICK REVISION SHEET

## What is GROUP BY?

Groups similar rows together.

## What is HAVING?

Filters grouped results.

## Difference between WHERE and HAVING?

WHERE filters rows.

HAVING filters groups.

## Most Common Aggregate Functions?

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

## SQL Execution Order?

FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY

## Why is GROUP BY important?

Used for reporting, analytics, dashboards, ETL pipelines, and data warehousing.

---

# DAY 5 INTERVIEW CHECKLIST

✅ GROUP BY

✅ COUNT()

✅ SUM()

✅ AVG()

✅ MIN()

✅ MAX()

✅ Multiple Column GROUP BY

✅ HAVING

✅ WHERE vs HAVING

✅ SQL Execution Order

✅ Azure Data Engineering Use Cases

✅ 40 Interview Questions & Answers