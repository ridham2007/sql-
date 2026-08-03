create database dealership;
USE dealership;
create table suzuki (
		car_id INT PRIMARY KEY,
        car_name VARCHAR(20),
        model VARCHAR(10),
        fuel VARCHAR(10),
        colour VARCHAR(10),
        transmission VARCHAR(10),
        price_lakh DECIMAL(6,2)
        );
select * from suzuki;
create table employees(
				e_id INT PRIMARY KEY,
                e_name VARCHAR(15),
                e_city VARCHAR(5),
                e_phone VARCHAR(10)
                );
select * from employees;
create table customers(
				c_id INT PRIMARY KEY,
                c_name VARCHAR(10),
                c_city VARCHAR(10),
                car_id INT
                );
select * from customers;
create table sale(
					sale_id INT PRIMARY KEY,
					car_id INT,
                    e_id INT,
                    c_id INT
                    );
select * from sales;

insert into suzuki
			  values(1,'baleno','zeta','petrol','white','auto',13.00);
insert into suzuki
				values (2,'Baleno','Delta','Petrol','Blue','Manual',9.20),
					(3,'Baleno','Alpha','Petrol','Grey','Manual',11.20),
					(4,'Baleno','Zeta','Petrol','Black','Auto',13.00),
					(5,'Swift','Delta','Petrol','White','Manual',8.00),
					(6,'Swift','Alpha','Petrol','Red','Manual',9.40),
					(7,'Swift','Zeta','Petrol','Blue','Auto',10.80),
					(8,'Dzire','Delta','Petrol','Silver','Manual',8.80),
					(9,'Dzire','Alpha','Petrol','White','Manual',10.20),
					(10,'Dzire','Zeta','Petrol','Black','Auto',11.80),
					(11,'Brezza','Delta','Petrol','Grey','Manual',10.50),
					(12,'Brezza','Alpha','Petrol','Blue','Manual',12.40),
					(13,'Brezza','Zeta','Petrol','White','Auto',14.20),
					(14,'Fronx','Delta','Petrol','Red','Manual',9.80),
					(15,'Fronx','Alpha','Petrol','Black','Manual',11.70),
					(16,'Fronx','Zeta','Petrol','Silver','Auto',13.60),
					(17,'Ertiga','Delta','Petrol','White','Manual',10.80),
					(18,'Ertiga','Alpha','Petrol','Grey','Manual',12.60),
					(19,'Ertiga','Zeta','Petrol','Blue','Auto',14.80),
					(20,'Grand Vitara','Delta','Petrol','Black','Manual',14.50),
					(21,'Grand Vitara','Alpha','Petrol','White','Auto',16.80),
					(22,'Grand Vitara','Zeta','Petrol','Blue','Auto',19.20);
select * from suzuki;

insert into employees 
		values	(1,'Raj','AMD','9876543210'),
				(2,'Soham','RJT','9876543211'),
				(3,'Veena','SNR','9876543212'),
				(4,'Amit','JAM','9876543213'),
				(5,'Priya','SUR','9876543214'),
				(6,'Riya','GNR','9876543215'),
				(7,'Karan','AMD','9876543216'),
				(8,'Neha','BRD','9876543217');
select * from employees;

insert into customers
					VALUES	(1,'Rahul','AMD',2),
							(2,'Pooja','RJT',4),
							(3,'Kunal','SNR',5),
							(4,'Sneha','SUR',7),
							(5,'Yash','JAM',9),
							(6,'Nidhi','AMD',10),
							(7,'Harsh','BRD',11),
							(8,'Komal','GNR',13),
							(9,'Vivek','RJT',14),
							(10,'Meera','SNR',16),
							(11,'Rohan','SUR',17),
							(12,'Isha','AMD',18),
							(13,'Dhruv','JAM',20),
							(14,'Krupa','BRD',21),
							(15,'Ankit','GNR',22);
select * from customers;

INSERT INTO sale VALUES
			(1,2,1,1),
			(2,4,2,2),
			(3,5,3,3),
			(4,7,4,4),
			(5,9,5,5),
			(6,10,6,6),
			(7,11,7,7),
			(8,13,8,8),
			(9,14,1,9),
			(10,16,2,10),
			(11,17,3,11),
			(12,18,4,12),
			(13,20,5,13),
			(14,21,6,14),
			(15,22,7,15);
select * from sale;
drop table sales;
select * from customers;


select * from suzuki;                     -- Show all cars.
select car_name,price_lakh from suzuki;   -- Show only car_name and price_lakh.
select * from suzuki where fuel='petrol'; -- Show all Petrol cars.
select * from suzuki where price_lakh>10; -- Show all cars costing more than 10 lakh
select * from suzuki order by price_lakh desc; -- Show all cars ordered by price from highest to lowest.
select count(*) from suzuki; -- Count total cars.
select AVG(price_lakh) from suzuki; -- Find the average price of all cars.
select DISTINCT fuel from suzuki; 	-- Show unique fuel types.
select * from customers; 			-- Show all customers 
select * from customers where c_city='AMD'; -- Show customers from Ahmedabad.
SELECT COUNT(*),c_city FROM CUSTOMERS group by c_city; -- Count customers in each city
SELECT c_name from customers ORDER BY c_name; -- Show customer names in alphabetical order.

select * from employees; -- Show all employees
select * from employees where e_city='SNR'; -- Show employees from Surendranagar.
select count(*) from employees; -- Count total employees.
select e_name from employees order by e_name; -- Show employee names in alphabetical order.

select * from sale; -- Show all sales
select count(*) from sale; -- Count total sales.
select * from sale order by sale_id desc; -- Show sales ordered by sale_id descending.
select sale_id,car_id,e_id from sale; -- Show only sale_id, car_id, and e_id.

select c_name,car_name from customers JOIN suzuki ON customers.car_id=suzuki.car_id;  -- Show the customer name and the car name.
select c_name,price_lakh  from customers JOIN suzuki ON customers.car_id=suzuki.car_id; -- Show the customer name and the price of the car.
select c_name,model,fuel from customers JOIN suzuki ON customers.car_id=suzuki.car_id; -- Show the customer name, model and fuel type.
select c_name from customers JOIN suzuki ON customers.car_id=suzuki.car_id where fuel='Petrol'; -- Show the names of customers who bought Petrol cars.
select sale_id,c_name from sale join customers ON customers.c_id=sale.c_id;-- Show the sale_id and the customer name.
select sale_id,e_name from sale join employees ON employees.e_id=sale.e_id;  -- Show the sale_id and the employee name.
select sale_id,car_name from sale JOIN suzuki ON sale.car_id=suzuki.car_id;-- Show the sale_id and the car_name.
select c_name,e_name from customers; -- Show the customer name and the employee name.
select c_name,e_name from sale join customers ON sale.c_id=customers.c_id join employees ON sale.e_id=employees.e_id; -- Show the customer name and the employee name.
select sale_id,c_name,e_name,car_name,price_lakh from sale  -- -- show sale_id,c_name,e_name,car_name,price_lakh 
join customers ON sale.c_id=customers.c_id              
	JOIN employees ON sale.e_id=employees.e_id
		JOIN suzuki ON sale.car_id=suzuki.car_id;