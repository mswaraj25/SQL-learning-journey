#create database Sonicsolutions;
#use sonicsolutions;
#create table employees(employee varchar(50),department varchar(50),salary dec(10,2),city varchar(50));
#insert into employees values ('brahmi','IT',250000.00,'london'),('avs','HR',75000.00,'bristol'),('raviteja','IT',100000.00,'sheffield'),('suribabu','HR',25000.00,'manchester');
#select*from employees;
#insert into  employees values ('ramu','audit',45000.00,'hyderabad')
##insert into  employees values ('ramu','audit',45000.00,'hyderabad')
#insert into  employees values ('ramana','it',95000.00,'hyderabad')


#updation of a column details with certain value
/*
update employees
set department = 'IT'
WHERE department = 'it'
*/

                                       ######## GROUP BY #########
                                       
                 #---->GIVE ME THE LIST OF DEPARTMENTS IN THE SONICSOLUTIONS COMPANY
					/*
                        SELECT department
                        from employees
                        group by department;
                      */  
                      
                      
                      
				#------>Give me totalno of employees in each department whose salary is greater than 60000.00
                      /*   select department,count(*) as employee_count
                         from employees
                         where salary > 60000.00
                         group by department;
                         */
                                 #here where should be written before group by according to execution order
                            
                            
                            
				#----->give me the city with department and count of employees with name has second letter as"A"(multiple column group by)
			         /*  
                         select department,city ,count(*) as emp_secondletter_a
                         from employees
                         where employee like '_a%'
                         group by  department,city;
                      */  
                      
                      
                      
				#------>Give me the employees with maximum salary in each department and their city
                        #here we use inner query and alias employee table 'e' for the required output 
                        #GROUP BY is not used because employee is not grouped or aggregated.
		                           /* 
                                   select employee,department,city,salary from employees e
                                    where salary = ( 
                                                   select max(salary) from employees
                                                    where department = e.department
                                                   );
					                */
                        
	#Find toatal employees in each department
    /*
    select department,count(*) as total_employees
    from employees
    group by department;
    */
    
    #find emp_count city-wise and department-wise
    /*
    select city,department,count(*) as emp_count
    from employees
    group by city,department;
    */
    
    
    #Find total salary paid in each city
    /*
    select city,sum(salary) as total_salaries_paid
    from employees
    group by city;
    */
    
    #find average salary in each department
    /*
    select department,avg(salary) as avg_salary
    from employees
    group by department;
    */
    
    #find the count of employees in each city
    /*
    select city,count(employee) as emp_count
    from employees
    group by city;
    */
    
    #find the total count of departments in each city
   /*
   select city ,count(distinct department) as dept_count
    from employees
    group by city;
    */
    
    #Find employee count as department wise and city wise
    /*
    select city,department ,count(employee) as emp_count
    from employees
    group by department,city;
    */
    
    #Find avg salary via dept wise and city wise
    /*
    select department,city,avg(salary)as avg_salary 
    from employees
    group by department,city;
    */
    
    #find the department with highest total salary
    /*
    select department,sum(salary) as total_salary
    from employees
    group by department
    order by total_salary desc 
    limit 1;
    */
    
    
    
    
                              ########        HAVING         ###########
                              # WHERE filters the rows 
                              # HAVING filters groups
     
	#Find departments having more than 1 employee
    /*
    select department,count(*) as emp_count
    from employees
    group by department
    having emp_count > 1;
    */
    
    #Find cities having total salary greater than 95000
    /*
    select city,sum(salary) as total_salary
    from employees
    group by city
    having total_salary>95000
    */
    
    #Find departments with avg salary greater than 75000
   /*
   select department,avg(salary) as req_avg_salary
    from employees
    group by department
    having req_avg_salary >75000
    */
    
   # find the city having highest average salary using the method of HAVING AND SUB QUERY
  /* 
   SELECT city,avg(salary) as avg_salary
   from employees
   group by city
   having avg_salary = 
                       ( select max(avg_salary)
                         from 
                             ( select avg(salary) as avg_salary
                               from employees
                               group by city
                               ) x
                               );
   */
   
   
   
   #Find the difference between max salary and min salary in each department
   /*
   select department,max(salary) - min(salary) as salary_gap
   from employees
   group by department;
	*/
    
    
    
    #find dept-city combination having atleast 2 employees
   /* 
    select city,department,count(*) as emp_count
    from employees
    group by city,department
    having emp_count >= 2;
    */
    
    
						##########       ALIASES      ##########
                        
    #Find employees earning equal to their department minimum salary 
    /*
    select employee,department,salary
    from employees e
    where salary = (
                     select min(salary)
                     from employees
                     where department = e.department
                     );
     */                
					