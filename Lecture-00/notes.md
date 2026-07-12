select * from longlist; -- selects all the data rows 
select title from longlist; -- selects all the title
select title,author from longlist; -- selects title and authors from table

= OPERATOR IS CASE SENSITIVE 

LIMIT -- SELECTS LIMITED AMOUNT OF ROWS 
select title from longlist LIMIT 10; -- selects first 20  title

WHERE -- TO APPLY CONDITIONS 
SELECT * FROM LONGLIST WHERE YEAR=2023; -- SELECTS ALL BOOKS FROM YEAR 2023

NOT OPERATOR -- WORKS AS NEGATION 
SYMBOL != <> NOT 
select "title" from "longlist" WHERE "format" !='hardcover';  -- selects books where format is not hardcover"
select "title" from "longlist" WHERE "format" <>'hardcover';  -- selects books where format is not hardcover"
select "title" from "longlist" WHERE NOT "format"='hardcover';  -- selects books where format is not hardcover"

AND OR () -- PUT togather two or more conditions 
SELECT * FROM LONGLIST WHERE "YEAR"=2023 OR "YEAR"=2022; -- BOOKS IN 2022 OR 2023 
SELECT * FROM LONGLIST WHERE ("YEAR"=2023 OR "YEAR"=2022) AND "format"='hardcover'; -- BOOKS IN 2022 OR 2023 AND fromat iis hardcover 

NULL( IS NULL , IS NOT NULL)
select title,translator from LONGLIST where "translator" IS NULL; -- gives  null values for translator 
select title,translator from LONGLIST where "translator" IS NOT NULL; -- gives not  null values for translator 

LIKE ( to find keywors or similar words)
( % to match any character around a string
  _ to match any single character )
select title from longlist where "title" LIKE '%love%'; -- gives titles including love at start middle end anywhere
select title from longlist where "title" LIKE 'The%'; -- gives title starting from The we also get books starting with there or they 
select title from longlist where "title" LIKE 'The %'; -- gives title starting from The then space and then other words (The love,the tritinity) etc
select title from longlist where "title" LIKE 'The%love%'; -- the at beggining then any characters then love then any characters
select title from longlist where "title" LIKE 'P_re' -- means that _ can have any character so any character present will get returend NOT CASE SENSITIVE 
select title from longlist where "title" LIKE 'T___' means that _ can have any character so any character present will get returend here returned valur will have 4 character since 3 underscore and letter and T 


>,<,>=,<= TO BUILD RANGES IN QUERIES 
SELECT TITLE FROM LONGLIST WHERE YEAR >= 2019 and year <= 2023; -- selects title where year is 2019,20,21,22,23

BETWEEN .. AND ... OPRERATOR
SELECT TITLE FROM LONGLIST WHERE YEAR BETWEEN 2019 AND 2023; -- selects title where year is 2019,20,21,22,23

ORDER BY (asc desc)
select title,rating from longlist ORDER BY rating ; -- orders by rating in asending order 
select title,rating from longlist ORDER BY rating; -- orders by rating in desending order

for alphabets is orders by first letter 
select title,rating from longlist ORDER BY title -- orderd by alphabets in asc 

AGGREGATE FUNCTIONS ( MIN MAX COUNT AVG SUM ) -- ONLY SINGLE CELL

SELECT AVG("RATING") FROM LONGLIST; -- DOES THE AVG AND RETURNS IN COLUMNS NAME AS AVG("RATING")
SELECT AVG("RATING") AS AVERAGE  FROM LONGLIST; -- DOES THE AVG AND RETURNS IN COLUMNS NAME AS AVERAGE 
SELECT ROUND(AVG("RATING",2)) AS AVERAGE  FROM LONGLIST; -- DOES THE AVG AND RETURNS IN COLUMNS NAME AS ROUND(AVG("RATING",2)) AND ROUND UPTO 2 DECIMAL POINTS 
SELECT MAX("RATING) FROM LONGLIST; -- SELECTS MAX RATING 
SELECT MIN("RATING) FROM LONGLIST; -- SELECTS MIN RATING 
SELECT SUM("VOTES") FROM LONGLIST; -- SUMS UP ALL VOTES
SELECT COUNT(*) FROM LONGLIST; -- COUNTS NUMBER OF ROWS IN DATABASE
SELECT COUNT("TRANSLATORS") FROM LONGLIST; -- COUNTS NUMBER OF TRANSLATORS DO NOT COUNT NULL VALUES 
MAX MIN IN ALPHABETS LIKE MIN FOR A AND MAX FOR Z IS LIKE THIS TYPE 

DISTINCT KEYWORD -- USE FOR UNIQUE VALUES 
SELECT DISTINCT PUBLISHER FROM LONGLIST -- SELECTS UNIQUE PUBLISHERS FROM DB
SELECT  COUNT( DISTINCT "PUBLISHERS") FROM LONGLIST;
