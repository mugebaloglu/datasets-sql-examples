--The output of this query will be the total value of all elements in the column. 

SELECT SUM(COST) FROM PETRESCUE;

SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

--The output of this query will be the maximum value of all elements in the column.

SELECT MAX(QUANTITY) FROM PETRESCUE;

--The output of this query will be the average of all elements in the column.

SELECT AVG(COST) FROM PETRESCUE;

--The output of this query will be the value of each element in the column rounded to the specified number of decimal places.

SELECT ROUND(COST) FROM PETRESCUE;

--The output of this query will be the length of each element in the column.

SELECT LENGTH(ANIMAL) FROM PETRESCUE;

--The output of this query will be each element in the column in upper case letters. 

SELECT UCASE(ANIMAL) FROM PETRESCUE;

SELECT LCASE(ANIMAL) FROM PETRESCUE;

--Write a query that displays the rescue date.

SELECT DAY(RESCUEDATE) FROM PETRESCUE;

SELECT MONTH(RESCUEDATE) FROM PETRESCUE;

SELECT YEAR(RESCUEDATE) FROM PETRESCUE;

-- Write a query that displays the third day of each rescue.

SELECT DATE_ADD(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE

SELECT DATE_ADD(RESCUEDATE, INTERVAL 2 MONTH) FROM PETRESCUE

--The following query would provide the date 3 days before the rescue.

SELECT DATE_SUB(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE

--Write a query that displays the length of time the animals have been rescued, for example, the difference between the current date and the rescue date.

SELECT DATEDIFF(CURRENT_DATE, RESCUEDATE) FROM PETRESCUE

SELECT FROM_DAYS(DATEDIFF(CURRENT_DATE, RESCUEDATE)) FROM PETRESCUE

--Write a query that displays the average cost of rescuing a single dog. Note that the cost per dog.

SELECT AVG(COST/QUANTITY) FROM PETRESCUE WHERE ANIMAL = 'Dog';

-- Write a query that displays the animal name in each rescue in uppercase without duplications.

SELECT DISTINCT UCASE(ANIMAL) FROM PETRESCUE;

-- Write a query that displays all the columns from the PETRESCUE table where the animal(s) rescued are cats. Use cat in lowercase in the query.

SELECT * FROM PETRESCUE WHERE LCASE(ANIMAL)="cat";

-- Write a query that displays the number of rescues in the 5th month.

SELECT SUM(QUANTITY) FROM PETRESCUE WHERE MONTH(RESCUEDATE)="05";,

-- The rescue shelter is supposed to find good homes for all animals within 1 year of their rescue. Write a query that displays the ID and the target date.

SELECT ID, DATE_ADD(RESCUEDATE, INTERVAL 1 YEAR) FROM PETRESCUE;

