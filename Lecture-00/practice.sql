CREATE DATABASE showroom;
USE showroom;

CREATE TABLE cars(
car_id INT PRIMARY KEY,
brand VARCHAR(30),
model VARCHAR(50),
year INT,
fuel VARCHAR(20),
transmission VARCHAR(20),
color VARCHAR(20),
city VARCHAR(30),
price_lakh DECIMAL(6,2),
stock INT,
owner_name VARCHAR(50)
);

INSERT INTO cars VALUES
(1,'Tata','Nexon',2022,'Diesel','Automatic','Black','Surat',9.35,2,'Raj Patel'),
(2,'Tata','Punch',2023,'Hybrid','Manual','Blue','Vadodara',10.7,3,'Amit Shah'),
(3,'Tata','Harrier',2024,'Electric','Automatic','Red','Rajkot',12.05,4,'Rohan Mehta'),
(4,'Tata','Safari',2021,'Petrol','Manual','Grey','Gandhinagar',13.4,5,'Priya Shah'),
(5,'Hyundai','Creta',2022,'Diesel','Automatic','Silver','Ahmedabad',14.75,6,NULL),
(6,'Hyundai','Venue',2023,'Hybrid','Manual','White','Surat',16.1,7,'Nikhil Patel'),
(7,'Hyundai','Verna',2024,'Electric','Automatic','Black','Vadodara',17.45,8,NULL),
(8,'Hyundai','i20',2021,'Petrol','Manual','Blue','Rajkot',18.8,9,NULL),
(9,'Mahindra','XUV700',2022,'Diesel','Automatic','Red','Gandhinagar',20.15,10,'Raj Patel'),
(10,'Mahindra','Thar',2023,'Hybrid','Manual','Grey','Ahmedabad',21.5,11,'Amit Shah'),
(11,'Mahindra','Scorpio N',2024,'Electric','Automatic','Silver','Surat',22.85,12,'Rohan Mehta'),
(12,'Mahindra','Bolero Neo',2021,'Petrol','Manual','White','Vadodara',24.2,1,'Priya Shah'),
(13,'Toyota','Fortuner',2022,'Diesel','Automatic','Black','Rajkot',25.55,2,NULL),
(14,'Toyota','Innova Hycross',2023,'Hybrid','Manual','Blue','Gandhinagar',26.9,3,'Nikhil Patel'),
(15,'Toyota','Glanza',2024,'Electric','Automatic','Red','Ahmedabad',28.25,4,NULL),
(16,'Toyota','Hyryder',2021,'Petrol','Manual','Grey','Surat',29.6,5,NULL),
(17,'Honda','City',2022,'Diesel','Automatic','Silver','Vadodara',30.95,6,'Raj Patel'),
(18,'Honda','Amaze',2023,'Hybrid','Manual','White','Rajkot',32.3,7,'Amit Shah'),
(19,'Honda','Elevate',2024,'Electric','Automatic','Black','Gandhinagar',33.65,8,'Rohan Mehta'),
(20,'Honda','WR-V',2021,'Petrol','Manual','Blue','Ahmedabad',35.0,9,'Priya Shah'),
(21,'Kia','Seltos',2022,'Diesel','Automatic','Red','Surat',36.35,10,NULL),
(22,'Kia','Sonet',2023,'Hybrid','Manual','Grey','Vadodara',37.7,11,'Nikhil Patel'),
(23,'Kia','Carens',2024,'Electric','Automatic','Silver','Rajkot',39.05,12,NULL),
(24,'Kia','Syros',2021,'Petrol','Manual','White','Gandhinagar',40.4,1,NULL),
(25,'MG','Hector',2022,'Diesel','Automatic','Black','Ahmedabad',41.75,2,'Raj Patel'),
(26,'MG','Astor',2023,'Hybrid','Manual','Blue','Surat',43.1,3,'Amit Shah'),
(27,'BMW','X1',2024,'Electric','Automatic','Red','Vadodara',44.45,4,'Rohan Mehta'),
(28,'BMW','3 Series',2021,'Petrol','Manual','Grey','Rajkot',45.8,5,'Priya Shah'),
(29,'Audi','A4',2022,'Diesel','Automatic','Silver','Gandhinagar',47.15,6,NULL),
(30,'Audi','Q3',2023,'Hybrid','Manual','White','Ahmedabad',48.5,7,'Nikhil Patel'),
(31,'Mercedes','C-Class',2024,'Electric','Automatic','Black','Surat',49.85,8,NULL),
(32,'Mercedes','GLA',2021,'Petrol','Manual','Blue','Vadodara',51.2,9,NULL),
(33,'Tata','Nexon',2022,'Diesel','Automatic','Red','Rajkot',52.55,10,'Raj Patel'),
(34,'Tata','Punch',2023,'Hybrid','Manual','Grey','Gandhinagar',53.9,11,'Amit Shah'),
(35,'Tata','Harrier',2024,'Electric','Automatic','Silver','Ahmedabad',55.25,12,'Rohan Mehta'),
(36,'Tata','Safari',2021,'Petrol','Manual','White','Surat',56.6,1,'Priya Shah'),
(37,'Hyundai','Creta',2022,'Diesel','Automatic','Black','Vadodara',57.95,2,NULL),
(38,'Hyundai','Venue',2023,'Hybrid','Manual','Blue','Rajkot',59.3,3,'Nikhil Patel'),
(39,'Hyundai','Verna',2024,'Electric','Automatic','Red','Gandhinagar',60.65,4,NULL),
(40,'Hyundai','i20',2021,'Petrol','Manual','Grey','Ahmedabad',62.0,5,NULL),
(41,'Mahindra','XUV700',2022,'Diesel','Automatic','Silver','Surat',63.35,6,'Raj Patel'),
(42,'Mahindra','Thar',2023,'Hybrid','Manual','White','Vadodara',64.7,7,'Amit Shah'),
(43,'Mahindra','Scorpio N',2024,'Electric','Automatic','Black','Rajkot',66.05,8,'Rohan Mehta'),
(44,'Mahindra','Bolero Neo',2021,'Petrol','Manual','Blue','Gandhinagar',67.4,9,'Priya Shah'),
(45,'Toyota','Fortuner',2022,'Diesel','Automatic','Red','Ahmedabad',68.75,10,NULL),
(46,'Toyota','Innova Hycross',2023,'Hybrid','Manual','Grey','Surat',70.1,11,'Nikhil Patel'),
(47,'Toyota','Glanza',2024,'Electric','Automatic','Silver','Vadodara',71.45,12,NULL),
(48,'Toyota','Hyryder',2021,'Petrol','Manual','White','Rajkot',72.8,1,NULL),
(49,'Honda','City',2022,'Diesel','Automatic','Black','Gandhinagar',74.15,2,'Raj Patel'),
(50,'Honda','Amaze',2023,'Hybrid','Manual','Blue','Ahmedabad',75.5,3,'Amit Shah');

select * from cars;  -- show all cars              
select brand, model from cars;  -- Show only the brand and model columns from the cars table.
select distinct brand from cars; -- Show all unique brands from the cars table.
select distinct city from cars; -- Show all unique cities from the cars table.
select * from cars where city='Ahmedabad'; -- Show all cars that are available in Ahmedabad.
select * from cars where fuel='petrol';-- Show all cars whose fuel type is Petrol.
select * from cars where price_lakh>30;-- Show all cars whose price is greater than 30 lakh.
select * from cars where year =2024; -- Show all cars manufactured in 2024.
select * from cars where Fuel='petrol' and transmission='Automatic';-- Show all cars that satisfy BOTH conditions Fuel is Petrol Transmission is Automatic
select * from cars where Fuel='Diesel' or Fuel= 'Hybrid';-- Show all cars that are either: Diesel or hybrid
select * from cars where city != 'ahmedabad';-- Show all cars that are NOT from Ahmedabad.
select * from cars where city='Surat' and price_lakh>'20';-- Show all cars where city = 'Surat' AND price_lakh > 20.
select * from cars where brand like 'T%'; -- Show all cars where brand starts with 'T'.
select * from cars where model like '%a'; -- Show all cars where model ends with 'a'.
 select * from cars where price_lakh between 15 and 30;-- Show all cars where price_lakh is between 15 and 30.
select * from cars where owner_name is NULL; -- Show all cars where owner_name is NULL.
select * from cars where owner_name is NOT NULL; -- Show all cars where owner_name is NOT NULL.-
select * from cars order by  price_lakh desc;  -- Show all cars ordered by price_lakh in descending order. 
select * from cars order by brand; -- Show all cars ordered by brand in ascending order.
select COUNT(*)from cars; -- Count the total number of cars.
select AVG(price_lakh) as average_price from cars; -- Find the average price_lakh.
select MAX(price_lakh) from cars;-- Maximum price_lakh
select MIN(price_lakh) from cars;-- Minimum price_ lakh
select distinct Fuel from cars; -- different fuels
select * from cars LIMIT 5; -- Show only the first 5 cars.
select * from cars LIMIT 10;-- Show only the first 10 cars.
select * from cars order by price_lakh desc limit 3; -- Show the 3 most expensive cars.
select * from cars order by price_lakh limit 5; -- Show the 5 most cheapest cars.
select * from cars limit 5 offset 5; -- Skip the first 5 cars and show the next 5 cars.
select * from cars where brand= 'Toyota' order by price_lakh desc limit 4;  -- Show the 4 most expensive Toyota cars.
select * from cars order by brand asc , price_lakh desc; -- Show all cars ordered by brand ASC and then price_lakh DESC.
select * from cars order by year desc,price_lakh desc,brand asc; -- Show all cars ordered by year DESC, then price_lakh DESC, then brand ASC.
select * from cars order by fuel asc,city asc,model desc; -- Show all cars ordered by fuel ASC, city ASC, and model DESC.
select AVG(price_lakh) as amd_average from cars where city= 'Ahmedabad' and fuel= 'Petrol';-- Find the average price of Petrol cars in Ahmedabad.
select COUNT(model) from cars where brand='Toyota';-- Count all Toyota Automatic cars.
select MAX(price_lakh) from cars where transmission = 'Automatic';-- Find the maximum price of Automatic cars.
select MIN(stock) from cars where fuel = 'Diesel';-- Find the minimum stock of Diesel cars
select AVG(price_lakh) from cars where year>2022; -- Find the average price of cars manufactured after 2022.
select COUNT(model) from cars where city ='Ahmedabad'; -- Count the number of Petrol cars in Ahmedabad