###primary key(unique value and must not be null) and foriegn key.
	CREATE database Institution;
    use Institution;
  CREATE TABLE Students(StudentID INT PRIMARY KEY,Name VARCHAR(50));
  CREATE TABLE Courses(CourseID INT PRIMARY KEY,StudentID INT,CourseName VARCHAR(50),FOREIGN KEY(StudentID)REFERENCES Students(StudentID));   
   insert into students values(101,'sai' ),(102,'ravi'),(103,'krishna'),(104,'ram'),(105,'ganesh');
   insert into courses values(1,101,'sql'),(2,102,'python'),(3,103,'azure'),(4,104,'sql'),(5,105,'powerbi'),(6,101,'databricks');
   
   
                    #------->>  #which student is enrolled in sql? answer sai,ram
 select Name from students s
 join courses c
 on s.studentid = c.studentid
 where coursename = 'sql';
 
          #-------->>which courses sai is enrolled?
 select coursename from courses where studentid = 101;
 
            #------------->> how many courses sai has taken??
 select COUNT(*) AS totalcourses from courses where studentid = 101; 
 
       #------------>>>display all students with their courses??
 select s.name,c.Coursename 
 from students s 
 join courses c
 on s.studentid = c.studentid;

#--------------------------------------------------------------------------------------------- 
			#------------which student is enrolled in maximum courses?
select s.name 
from students s
join courses c
on s.studentid = c.studentid            
 group by s.studentid, s.name
 order by count(c.courseid) desc
 limit 1;

#----------------------------------------------

CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Employees(EmployeeID INT PRIMARY KEY,EmployeeName VARCHAR(100),Department VARCHAR(50));
 INSERT INTO Employees VALUES(101,'Sai','IT'),(102,'Rahul','HR'),(103,'Priya','Finance'),(104,'Anjali','IT'),(105,'Kiran','Sales');
 select distinct department from employees; #------->shows unique values in the paticular column of the table

CREATE TABLE EmployeeSalary(EmployeeID INT,EmployeeName VARCHAR(100),Salary DECIMAL(10,2));
INSERT INTO EmployeeSalary VALUES(101,'Sai',60000),(102,'Rahul',45000),(103,'Priya',55000),(104,'Anjali',70000),(105,'Kiran',50000);

#####order by ascending
 #-------
          select salary from employeesalary
 #-------
           order by salary asc;
 
 #####order by descending
 #--------
           select salary from employeesalary 
 #---------
            order by salary desc;
 
 #######limit----- no of rows to show
             #want only first 3 rows of the table
            #--------
            select * from employeesalary limit 3;
            
 ######order by  and limit
             # want top 3 salaries from highest to lowest (with name and id)
            #---- 
		select salary,employeename ,employeeid from employeesalary order by salary desc  limit 3;
            
#######offset (means skip rows) and it cannot be used alone it is used with limit 
                      #skip first 4 rows of the table
             #------
             select * from employeesalary limit 1 offset 4;
             
##########. AGGREGATE FUNCTIONS
                       #COUNT
             select count(*) from employeesalary       #-----> total no of employees
            
                        #SUM
			 select sum(salary) from employeesalary;    #------> total money of salaries of employees
            
                      #AVERAGE
			 select avg(salary) from employeesalary;     #-------> average salary of the employees
            
                        #MAX
                        
			 select max(salary) from employeesalary;   # ---------->maximum salary of the employees
            
                        #MINt
			select min(salary) from employeesalary;   #---------->minimum salary of the employees
            
             


