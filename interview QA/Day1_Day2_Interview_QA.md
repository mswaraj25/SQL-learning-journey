# SQL Learning Journey - Day 1 & Day 2 Interview Questions and Answers

Day 1 Topics: Database, Table, Row, Column, SQL, SELECT, WHERE, Data Types, Primary Key, Foreign Key.

1. What is a Database?
Answer: An organized collection of data.

2. What is a Table?
Answer: A collection of related data organized into rows and columns.

3. What is SQL?
Answer: Structured Query Language used to manage databases.

4. What is SELECT?
Answer: Used to retrieve data.
Example: SELECT * FROM Employees;

5. What is WHERE?
Answer: Used to filter rows.
Example: SELECT * FROM Employees WHERE Department='IT';

6. What is a Primary Key?
Answer: Uniquely identifies a record and cannot be NULL.

7. What is a Foreign Key?
Answer: References a primary key in another table.

Day 2 Topics: DISTINCT, ORDER BY, LIMIT, OFFSET, COUNT, SUM, AVG, MIN, MAX.

1. What is DISTINCT?
Answer: Returns unique values.

2. What is ORDER BY?
Answer: Sorts data.

3. ASC vs DESC?
ASC = Small to Large. DESC = Large to Small.

4. What is LIMIT?
Answer: Restricts number of rows returned.

5. What is OFFSET?
Answer: Skips rows before returning results.

6. COUNT(*) vs COUNT(column)?
COUNT(*) counts all rows. COUNT(column) ignores NULL values.

7. What is SUM()?
Answer: Adds values.

8. What is AVG()?
Answer: Calculates average.

9. What is MIN()?
Answer: Returns smallest value.

10. What is MAX()?
Answer: Returns largest value.

11. Highest Salary Query:
SELECT * FROM Employees ORDER BY Salary DESC LIMIT 1;

12. Top 3 Salaries Query:
SELECT * FROM Employees ORDER BY Salary DESC LIMIT 3;

13. Pagination:
LIMIT 20 OFFSET 0, LIMIT 20 OFFSET 20.
