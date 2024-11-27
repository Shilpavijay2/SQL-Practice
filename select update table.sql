-- Step 1: Create the database
CREATE DATABASE Lab1;

-- Step 2: Use the newly created database
USE Lab1;

-- Step 3: Create the Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Step 4: Create the Instructor table
CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Step 5: Insert data into the Student table
INSERT INTO Student (StudentID, FirstName, LastName, Email)
VALUES
(1, 'Jane', 'Smith', 'jane.smith@example.com'),
(2, 'John', 'Doe', 'john.doe@example.com');

-- Step 6: Insert data into the Instructor table
INSERT INTO Instructor (InstructorID, FirstName, LastName, Email)
VALUES
(1, 'Roger', 'White', 'roger.white@example.com'),
(2, 'Sarah', 'Johnson', 'sarah.johnson@example.com');

-- Step 7: Update the Student table with new email for Jane Smith
UPDATE Student
SET Email = 'jane_Smith@example.com' WHERE FirstName = 'Jane' AND LastName = 'Smith';

UPDATE Student
SET Email = 'jane_Smith@example.com'
WHERE FirstName = 'Jane' AND LastName = 'Smith';

-- Step 8: Update the Instructor table with new email for Roger White
UPDATE Instructor
SET Email = 'rogerwhite@example.com'
WHERE FirstName = 'Roger' AND LastName = 'White';

SELECT * FROM Instructor;

DELETE FROM Student
WHERE FirstName = 'Jane';

SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE IF NOT EXISTS school1;
USE school1;
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,  -- auto-incrementing student ID
    first_name VARCHAR(50),                     -- first name of the student
    last_name VARCHAR(50)                       -- last name of the student
);
INSERT INTO students (first_name, last_name)
VALUES
  ('John', 'Doe'),
  ('Jane', 'Smith'),
  ('Jack', 'Brown'),
  ('Jill', 'White'),
  ('Alice', 'Johnson'),
  ('James', 'Williams');
  
  select * from students;
  
  SELECT first_name, last_name, student_id
FROM students
WHERE first_name LIKE 'J%';

SELECT DISTINCT last_name
FROM students;

SELECT first_name, COUNT(*)
FROM students
GROUP BY first_name
HAVING COUNT(*) > 1;

CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
INSERT INTO students (first_name, last_name)
VALUES
    ('John', 'Doe'),
    ('Jane', 'Smith'),
    ('John', 'Brown'),
    ('Jack', 'Johnson'),
    ('Jane', 'Davis'),
    ('Jill', 'White'),
    ('James', 'Williams'),
    ('John', 'Smith');

SELECT first_name, COUNT(*) AS name_count
FROM students
GROUP BY first_name
HAVING COUNT(*) > 1;

SELECT first_name, COUNT(*) FROM students GROUP BY first_name HAVING COUNT(*) > 1;
SELECT first_name, last_name
FROM students
WHERE first_name = 'Jill';

SELECT first_name, last_name, student_id
FROM students
WHERE student_id > 1;

SELECT first_name, last_name, student_id
FROM students
WHERE first_name = 'John' OR  student_id > 2;

SELECT first_name, last_name, student_id
FROM students
WHERE student_id BETWEEN 1 AND 3;

SELECT first_name, last_name
FROM students
WHERE first_name IN ('John', 'Jane', 'Jack');

SELECT first_name, last_name
FROM students
WHERE first_name LIKE 'J%';
SELECT first_name, last_name
FROM students
WHERE first_name LIKE '%oh%';

SELECT first_name, last_name
FROM students
WHERE student_id IS NULL;

CREATE TABLE students1 (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT
);

INSERT INTO students1 (first_name, last_name, age)
VALUES
    ('John', 'Doe', 22),
    ('Jane', 'Smith', 19),
    ('Jack', 'White', 20),
    ('Jill', 'Brown', 18),
    ('James', 'Black', 23),
    ('Jessica', 'Green', 25),
    ('Jordan', 'Blue', 17);
    
SELECT first_name, last_name, age
FROM students1
WHERE age > 20;
SELECT first_name, last_name, age
FROM students1
WHERE first_name = 'John';

SELECT first_name, last_name, age
FROM students1
WHERE age BETWEEN 18 AND 22;

SELECT first_name, last_name, age
FROM students1
WHERE first_name LIKE 'J%';

SELECT first_name, last_name, age
FROM students1
WHERE age != 20;

-- Step 1: Create the BankAccount table
CREATE TABLE BankAccount (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    account_holder_name VARCHAR(100),
    account_balance DECIMAL(10, 2)
);

-- Step 2: Insert data into the BankAccount table
INSERT INTO BankAccount (account_holder_name, account_balance)
VALUES
    ('John Doe', 1500.75),
    ('Jane Smith', 3200.50),
    ('Alice Johnson', 4200.10),
    ('Bob Brown', 1850.00),
    ('Charlie Davis', 5000.00);
    
    SELECT account_holder_name, account_balance
FROM BankAccount;

SELECT account_holder_name, account_balance
FROM BankAccount
WHERE account_balance > 1000;

UPDATE BankAccount
SET account_balance = 1500.75
WHERE account_id = 5;

select * from BankAccount;

CREATE TABLE employees_filtered (
    employee_id INT,
    employee_name VARCHAR(255),
    experience_years INT,
    department VARCHAR(255)
);
INSERT INTO employees_filtered (employee_id, employee_name, experience_years, department)
VALUES (1, 'John Doe', 7, 'Sales'),
       (2, 'Jane Smith', 8, 'Marketing'),
       (3, 'Emily Davis', 6, 'IT'),
       (5, 'John Doe', 6, 'Sales'),
       (6, 'Michael Green', 7, 'HR'),
       (7, 'Lisa Brown', 9, 'Finance'),
       (8, 'Richard Lee', 6, 'Marketing');
       
       SELECT * FROM employees_filtered
WHERE experience_years BETWEEN 5 AND 10;

CREATE TABLE order_details_filtered (
    order_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    customer_id INT
);
INSERT INTO order_details_filtered (order_id, product_id, quantity, order_date, customer_id)
VALUES  (101, 2001, 3, '2023-11-20', 501),
        (102, 2002, 5, '2023-11-21', 502),
       (103, 2003, 2, '2023-11-22', 503),
       (104, 2004, 4, '2023-11-23', 504);
       
       SELECT * FROM order_details_filtered
WHERE order_date BETWEEN '2023-11-19' AND '2023-11-23';

