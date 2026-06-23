 
 
                               ########### JOINS ###########
	#------> here we should mention the primary key in first table and foriegn key in second table with reference to first table
            #----->  primary key must be unique & contain in both tables 
            #-----> foreign key is the matching column of the first table

#create database AMAZON;
#use AMAZON;
#create table customers (customerID int  primary key ,customername varchar(50));
#insert into customers values(1,'sai'),(2,'ravi'),(3,'priya');
#create table orders(orderID int primary key,customerID int,Amount dec(10,2), foreign key (customerID) references customers(customerID));
#insert into orders values(101,1,5000.00),(102,2,3000.00),(103,1,7000.00);
#create table employees_amazon(empID int,Name varchar(50),managerID INT);
#INSERT into employees_amazon values (1,'CEO',null),(2,'sai',1),(3,'raju',2);


      #EXECUTION ORDER OF QUERIES ----> FROM,JOIN,WHERE,GROUP BY,AGGREGATE FUNCTIONS,HAVING,SELECT,ORDER BY,LIMIT,OFFSET
						########   INNER JOIN   #####
				#------->INNER JOIN returns only matching records
							
 #--------> give me the details of name of customers and their amounts
 
         #select c.customername , o.amount from customers c inner join orders o on c.customerID = o.customerID;
         
         
 #--------->give  customer & their order details who placed an order
 
           #select c.customerID,c.customername,o.orderID,o.amount from customers c inner join orders o on c.customerID = o.customerID;
           
          #GIVE me the  data of complete customer and order information who placed minimum one order
          
		     #select c.customerID,c.customername,o.orderID,o.amount from customers c inner join orders o on c.customerID = o.customerID;

#----------->show only customer names and amounts of their orders

           #select c.customername,o.amount from customers c inner join orders o on c.customerID = O.customerID;
           
#------------>show total amount spent by each customer

            #select c.customername,sum(o.amount) as total_spent from customers c inner join orders o on c.customerID = o.customerID group by c.customername;

#----------->show number of orders placed by each customer

             #select c.customername,count(o.orderID) as total_orders from customers c inner join orders o on c.customerID = o.customerID group by c.customername;

#----------->show me the customers who placed more than one order
             
             #select c.customername,count(o.orderID) as total_orders from customers c inner join orders o on c.customerID = o.customerID group by c.customername having total_orders > 1;




                                      #####. LEFT JOIN   ####
                           #--------->ALL ROWS FROM LEFT TABLE (CUSTOMERS TABLE)
                           #--------->MATCHING ROWS FROM RIGHT TABLE (ORDERS TABLE)
                           #--------->IF NO MATCHING HAPPENS RETURNS NULL IN THEIR PLACES
                           
#----------->SHOW ALL THE CUSTOMERS WHO HASN'T PLACED THE ORDER ALSO
 
          # select c.customername,c.customerID,o.orderID,o.amount from customers c left join orders o on c.customerID = o.customerID;

               #HERE LEFT JOIN SHOWS PRIYA RECORD BECAUSE ALL THE RECORDS FROM (LEFT TABLE)= CUSTOMER TABLE

#------------>show the values of nill in the above question with certain vocabulary

           #select c.customername,c.customerID,coalesce(o.orderID, 'no order')as orderID,coalesce (o.amount,'zero')as amount from customers c left join orders o on c.customerID = o.customerID;

                       #---> COALESCE() FUNCTION returns the first non null value of the list and used to replace null values in query results
                       
                       
                       
                    #############    RIGHT JOIN     #########
					   
                       #------>OPPOSITE TO LEFT JOIN
       
       
       #---------->GIVE ALL THE RECORDS OF ORDERS (RIGHT TABLE) WITH CORRESPONDING OR MATCHING CUSTOMERS DETAILS(LEFT TABLE) 
       
       
                  #SELECT *FROM Customers c RIGHT JOIN Orders o ON c.CustomerID=o.CustomerID;
                  
                  
	#------------>GIVE THE DATA OF ALL THE CUSTOMERS WHO PLACED ORDERS

                    # select c.customername,c.customerID,o.orderID,o.amount from customers c RIGHT join orders o on c.customerID = o.customerID;

         #-----> HERE RIGHT JOIN DOESNT SHOW PRIYA RECORD BECAUSE SHE DOENT PLACED ANY ORDER
         
                                
                                ####### SELF JOIN #######
                                
                                
       #here using amazon database and employees table
    #SELECT e.Name Employee,m.Name Manager FROM Employees e left JOIN Employees m ON e.ManagerID=m.EmpID;          
# for the query is made on same table so aliases(e,m)are used to distinguish 
#here e.name = name in employee table and m.name = name in managers table
#-->>>>e.managerID = m.empID means matching employee's managerID with manager's empID
          #---->>>>if left join is used it displays all employees with their managers
          #----->>>if right join is used it displays all the managers with employees
          
          
              ###### NATURAL JOIN ####------>it gives the join of tables using common column names
          
          
					######### FULL JOIN ######## -------> (LEFT JOIN) UNION (RIGHT JOIN)
                                 
                                 
                                 
                                 
                                 
                                 
							

          
         
         