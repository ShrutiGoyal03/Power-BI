/*
Create tables:
Employee with attributes (id, name, city, department, salary)
Dept with attributes (id, name)
Company with attributes (id, name, revenue)
*/

/*
CREATE TABLE Employee(
	id INT PRIMARY KEY,
    name VARCHAR(50) ,
    city VARCHAR(50) ,
    dept_id INT ,
    salary INT
);
CREATE TABLE Dept(
	id INT,
    name VARCHAR(50)
);

CREATE TABLE company(
	id INT,
    name VARCHAR(100),
    revenue INT
);
*/
-- Add rows into All tables

INSERT INTO Dept(id,name)
VALUES
(1,'IT'),
(2,'Management'),
(3,'Admin'),
(4,'Support');

INSERT INTO company(id,name,revenue)
VALUES
(1001,'IBM', 2000000),
(1002,'GOOGLE', 9000000),
(1003,'Apple', 10000000);

INSERT INTO employee (id,name,city,dept_id,salary)
VALUES
(101,'Dev', 'London', 1, 80000),
(102,'Aisha', 'London', 1, 70000),
(103,'Priya', 'Paris', 3, 60000),
(104,'Avi', 'Paris', 3, 50000),
(105,'Palash', 'London', 2, 110000),
(106,'Josh', 'London', 2, 90000),
(107,'Alisha', 'Rome', 4, 30000),
(108,'Ram', 'London', 3, 110000);

--fetching all data from all 3 tbles

SELECT * from Dept;
SELECT * FROM company;
SELECT * FROM Employee;

--Change the name of dept with id =  1 to 'Mgmt'

UPDATE Dept
SET name = 'Mgmt'
WHERE id = 1;

-- Delete employees with salary greater than 100 000
DELETE FROM employee
WHERE salary > 100000;

--employees with salary greater than 50 000 and smaller than 70 000
SELECT * FROM employee
WHERE salary BETWEEN 50000 AND 70000;

--names of employees with salary greater than 70 000 together with employees who work on the 'Admin' department.
SELECT name FROM employee
WHERE salary > 70000
OR dept_id IN (
	SELECT id FROM dept
    WHERE name = 'Admin'
);


--employees that work in city that starts with 'L'
SELECT * FROM employee
WHERE city LIKE 'L%';

