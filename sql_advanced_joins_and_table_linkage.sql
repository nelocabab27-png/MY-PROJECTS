USE hr;

SELECT location_id, street_address, city, state_province, country_name
FROM locations
NATURAL JOIN countries;

SELECT e.last_name, e.department_id, d.department_name
FROM employees e
JOIN departments d ON (e.department_id = d.department_id);

SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e
JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON (d.location_id = l.location_id)
WHERE l.city = 'Toronto';

SELECT e.last_name AS "Employee", e.employee_id AS "Emp#", 
       m.last_name AS "Manager", m.employee_id AS "Mgr#"
FROM employees e
JOIN employees m ON (e.manager_id = m.employee_id);

SELECT e.last_name AS "Employee", e.employee_id AS "Emp#", 
       m.last_name AS "Manager", m.employee_id AS "Mgr#"
FROM employees e
LEFT OUTER JOIN employees m ON (e.manager_id = m.employee_id)
ORDER BY e.employee_id;

SELECT e1.department_id AS "Dept#", e1.last_name AS "Employee", 
       e2.last_name AS "Colleague"
FROM employees e1
JOIN employees e2 ON (e1.department_id = e2.department_id)
WHERE e1.employee_id <> e2.employee_id
ORDER BY e1.department_id, e1.last_name;
