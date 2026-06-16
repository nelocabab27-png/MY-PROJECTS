USE hr;

SELECT last_name, salary 
FROM employees 
WHERE salary > 12000;


SELECT last_name, department_id 
FROM employees 
WHERE employee_id = 176;


SELECT last_name, salary 
FROM employees 
WHERE salary NOT BETWEEN 5000 AND 12000;


SELECT last_name, job_id, hire_date 
FROM employees 
WHERE last_name IN ('Matos', 'Taylor') 
ORDER BY hire_date ASC;


SELECT last_name, department_id 
FROM employees 
WHERE department_id IN (20, 50) 
ORDER BY last_name ASC;


SELECT last_name AS "Employee", salary AS "Monthly Salary" 
FROM employees 
WHERE (salary BETWEEN 5000 AND 12000) 
  AND department_id IN (20, 50);


SELECT last_name 
FROM employees 
WHERE last_name LIKE '__a%';


SELECT last_name 
FROM employees 
WHERE last_name LIKE '%a%' 
  AND last_name LIKE '%e%';
  
CREATE TABLE my_employee (
    id INT NOT NULL,
    last_name VARCHAR(25),
    first_name VARCHAR(25),
    userid VARCHAR(8),
    salary DECIMAL(9,2),
    CONSTRAINT my_employee_id_nn PRIMARY KEY (id)
);

DESCRIBE my_employee;

INSERT INTO my_employee 
VALUES (1, 'Patel', 'Ralph', 'rpatel', 895);

INSERT INTO my_employee (id, last_name, first_name, userid, salary) VALUES (2, 'Dancs', 'Betty', 'bdancs', 860);
INSERT INTO my_employee (id, last_name, first_name, userid, salary) VALUES (3, 'Biri', 'Ben', 'bbiri', 1100);
INSERT INTO my_employee (id, last_name, first_name, userid, salary) VALUES (4, 'Newman', 'Chad', 'cnewman', 750);
INSERT INTO my_employee (id, last_name, first_name, userid, salary) VALUES (5, 'Ropeburn', 'Audrey', 'aropebur', 1550);

SELECT * FROM my_employee;

COMMIT;

UPDATE my_employee 
SET last_name = 'Drexler' 
WHERE id = 3;

UPDATE my_employee 
SET salary = 1000 
WHERE salary < 900;

SELECT * FROM my_employee;

DELETE FROM my_employee 
WHERE last_name = 'Dancs' AND first_name = 'Betty';

SELECT * FROM my_employee;

COMMIT;
