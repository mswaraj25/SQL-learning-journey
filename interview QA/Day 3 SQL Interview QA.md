# Day 3 SQL Interview Questions & Answers

## Azure Data Engineer Preparation

### Topics Covered

* WHERE
* AND
* OR
* NOT
* BETWEEN
* IN
* LIKE
* Wildcards (% and _)
* AS Alias
* Real-World Employee Filtering
* Azure Data Engineering Scenarios

Prepared By: Sai

Goal: Azure Data Engineer

---

# Section 1: WHERE Clause

## Q1. What is WHERE?

### Answer

WHERE filters records based on conditions.

### Example

```sql
SELECT *
FROM Employees
WHERE Department='IT';
```

---

## Q2. Why is WHERE important?

### Answer

WHERE helps retrieve only required records instead of the entire table.

Without WHERE:

```sql
SELECT *
FROM Employees;
```

With WHERE:

```sql
SELECT *
FROM Employees
WHERE Salary > 50000;
```

---

## Q3. Can WHERE work with numbers?

### Answer

Yes.

```sql
SELECT *
FROM Employees
WHERE Salary > 60000;
```

---

## Q4. Can WHERE work with dates?

### Answer

Yes.

```sql
SELECT *
FROM Employees
WHERE JoiningDate > '2024-01-01';
```

---

# Section 2: AND Operator

## Q5. What is AND?

### Answer

AND requires all conditions to be true.

```sql
SELECT *
FROM Employees
WHERE Department='IT'
AND Salary > 60000;
```

---

## Q6. When should AND be used?

### Answer

When multiple conditions must be satisfied simultaneously.

Example:

* Department = IT
* Salary > 60000

Both conditions must be true.

---

## Q7. Azure Scenario

Find completed orders above ₹50,000.

```sql
SELECT *
FROM Orders
WHERE Status='Completed'
AND Amount > 50000;
```

---

# Section 3: OR Operator

## Q8. What is OR?

### Answer

OR returns rows when at least one condition is true.

```sql
SELECT *
FROM Employees
WHERE Department='IT'
OR Department='HR';
```

---

## Q9. Difference Between AND and OR

| AND                         | OR                        |
| --------------------------- | ------------------------- |
| All conditions must be true | Any condition can be true |
| More restrictive            | Less restrictive          |

---

# Section 4: NOT Operator

## Q10. What is NOT?

### Answer

NOT reverses a condition.

```sql
SELECT *
FROM Employees
WHERE NOT Department='IT';
```

---

## Q11. Use Case of NOT

### Answer

Used to exclude unwanted records.

---

# Section 5: BETWEEN

## Q12. What is BETWEEN?

### Answer

BETWEEN filters values within a range.

```sql
SELECT *
FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;
```

---

## Q13. Is BETWEEN Inclusive?

### Answer

Yes.

It includes both:

* 50000
* 70000

---

## Q14. Can BETWEEN be used with dates?

### Answer

Yes.

```sql
SELECT *
FROM Orders
WHERE OrderDate
BETWEEN '2025-01-01'
AND '2025-01-31';
```

---

# Section 6: IN Operator

## Q15. What is IN?

### Answer

IN checks multiple values in one condition.

```sql
SELECT *
FROM Employees
WHERE City IN
('Hyderabad','Bangalore');
```

---

## Q16. Why IN instead of OR?

Instead of:

```sql
WHERE City='Hyderabad'
OR City='Bangalore'
OR City='Chennai'
```

Use:

```sql
WHERE City IN
('Hyderabad','Bangalore','Chennai')
```

Cleaner and easier to maintain.

---

# Section 7: LIKE Operator

## Q17. What is LIKE?

### Answer

LIKE performs pattern matching.

```sql
SELECT *
FROM Employees
WHERE EmployeeName LIKE 'S%';
```

---

## Q18. What does % mean?

### Answer

% represents zero or more characters.

Example:

```sql
LIKE 'P%'
```

Matches:

* Priya
* Pooja
* Prakash

---

## Q19. What does _ mean?

### Answer

_ represents exactly one character.

Example:

```sql
LIKE '_ai'
```

Matches:

* Sai

---

## Q20. Difference Between % and _

| Wildcard | Meaning             |
| -------- | ------------------- |
| %        | Multiple characters |
| _        | Single character    |

---

# Section 8: Alias (AS)

## Q21. What is AS?

### Answer

AS creates a temporary alias.

```sql
SELECT EmployeeName AS Employee
FROM Employees;
```

---

## Q22. Why use aliases?

### Answer

Aliases improve readability.

Instead of:

```text
EmployeeName
```

Show:

```text
Employee
```

---

# Section 9: Real Employee Filtering Questions

## Q23. Find IT employees

```sql
SELECT *
FROM Employees
WHERE Department='IT';
```

---

## Q24. Find employees earning more than ₹60,000

```sql
SELECT *
FROM Employees
WHERE Salary > 60000;
```

---

## Q25. Find employees from Hyderabad

```sql
SELECT *
FROM Employees
WHERE City='Hyderabad';
```

---

## Q26. Find employees from Hyderabad or Bangalore

```sql
SELECT *
FROM Employees
WHERE City IN
('Hyderabad','Bangalore');
```

---

## Q27. Find employees earning between ₹50K and ₹80K

```sql
SELECT *
FROM Employees
WHERE Salary BETWEEN 50000 AND 80000;
```

---

## Q28. Find employees whose names start with P

```sql
SELECT *
FROM Employees
WHERE EmployeeName LIKE 'P%';
```

---

## Q29. Find employees whose names end with a

```sql
SELECT *
FROM Employees
WHERE EmployeeName LIKE '%a';
```

---

# Section 10: Azure Data Engineer Interview Questions

## Q30. Why is filtering important in Data Engineering?

### Answer

Filtering:

* Reduces data volume
* Improves performance
* Reduces storage costs
* Improves ETL efficiency

---

## Q31. How is WHERE used in Azure Data Factory?

### Answer

To load only required records.

Example:

```sql
WHERE OrderDate >= '2025-01-01'
```

---

## Q32. How is BETWEEN used in ETL pipelines?

### Answer

To load specific date ranges.

---

## Q33. How is IN used in reporting?

### Answer

To filter multiple regions, departments, or business units.

---

## Q34. Why should Data Engineers avoid loading unnecessary rows?

### Answer

Because:

* Storage costs increase
* Processing slows down
* ETL jobs take longer
* Pipeline performance decreases

---

# Day 3 Master Revision Checklist

✅ WHERE

✅ AND

✅ OR

✅ NOT

✅ BETWEEN

✅ IN

✅ LIKE

✅ % Wildcard

✅ _ Wildcard

✅ AS Alias

✅ Real Employee Filtering

✅ Azure Data Engineering Use Cases

✅ 34 Interview Questions & Answers

---

# Git Commands

```bash
git add .
git commit -m "Added Day 3 Interview QA"
git push
```

