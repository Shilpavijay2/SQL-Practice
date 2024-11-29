CREATE DATABASE Lab12;

-- Step 2: Use the newly created database
USE Lab12;

CREATE TABLE employee_department_info (
    employee_id INT,
    employee_name VARCHAR(255),
    department_id INT,
    department_name VARCHAR(255)
);
INSERT INTO employee_department_info (employee_id, employee_name, department_id, department_name)
VALUES
(1, 'Alice', 101, 'HR'),
(2, 'Bob', 102, 'IT'),
(3, 'Charlie', 103, 'Marketing');

SELECT employees.id, employees.name, departments.id, departments.name
FROM employees
JOIN departments ON employees.department_id = departments.id; 

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department_id INT
);

INSERT INTO employees (id, name, department_id)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103);

INSERT INTO departments (id, name)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Marketing');

SELECT employees.id, employees.name, departments.id, departments.name
FROM employees
JOIN departments ON employees.department_id = departments.id;

