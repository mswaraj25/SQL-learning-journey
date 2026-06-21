create  database MNCdb;
use MNCdb;
CREATE TABLE Employees(EmployeeID INT PRIMARY KEY,EmployeeName VARCHAR(100),Department VARCHAR(50),Salary DECIMAL(10,2),City VARCHAR(50));
INSERT INTO Employees VALUES(101,'Sai','IT',60000,'Hyderabad'),(102,'Rahul','HR',45000,'Bangalore'),(103,'Priya','Finance',55000,'Chennai'),(104,'Anjali','IT',70000,'Hyderabad'),(105,'Kiran','Sales',50000,'Mumbai'),(106,'Ravi','IT',80000,'Bangalore'),(107,'Pooja','HR',48000,'Hyderabad');

################filtering using AND ###########

	       ##employees who are in it and has salary greater than 60000 (display whole details of the employee from table with condition)

                    select * from employees where department = 'it' and salary > 60000; 
                    
                    
		   ###show only names of the employees with a condition of working in hyderabad and salary less than 99999
           
                      select employeename from employees where city = 'hyderabad' and salary < 99999;
                     
###############. Filtering using OR #############

                #find employees data who works in hyderabad or chennai
                
                select * from employees where city = 'hyderabad' or city ='chennai';
               
               
               ###############. Filtering using NOT #############

               ##find employeenames  who are not WORKING IN CHENNAI
               
			select employeename from employees where not city = 'chennai';
            
            
 ############### Filtering using BETWEEN ##########
 
	       ######find employees data whose salary is BETWEEN 55k to 70k from highest to lowest
           
           select * from employees  where salary between 55000 and 70000 order by salary desc;
           
##############filtering with IN ############# in is used for track data like for different city employees of a organisation 

            select * from employees where city in  ('hyderabad','chennai');
           
           
###############Filtering using LIKE ##############
             
                  # data of employees whose name starts with letter 'S'
             
            select * from employees where employeename like 's%'; 
           
                  #data of employees whose name ends with letter 'i'
           
           select *from employees where employeename like '%i';
           
                   #data of employees whose name contains letterv'a' anywhere in their name
           
           select * from employees where employeename like '%a%';
           
                   #data of employees whose name has third letter as'o'
                   
			select * from employees where employeename like '__o%';
            
		
        #################    ALIASES (AS)  ############
        
          #  AS is used to alias the name of column or table names
        
                select employeename as worker from employees;
        
 
 
 
 
            
            
                     
                     
                     
           
        
        