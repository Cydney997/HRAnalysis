SELECT j.job_title, AVG(e.salary) AS average_salary
FROM Employees AS e
JOIN Jobs AS j ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY average_salary DESC;

SELECT d.department_name, AVG(e.salary) AS average_salary
FROM Employees AS e
JOIN Departments AS d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY average_salary DESC;

SELECT d.department_name, e.employee_name
FROM Departments AS d
JOIN Department_Heads AS dh ON d.department_id = dh.department_id
JOIN Employees AS e ON dh.employee_id = e.employee_id;

SELECT employee_name
FROM Employees
WHERE manager_id = 1;

SELECT e.employee_name AS employee, m.employee_name AS manager
FROM Employees AS e
LEFT JOIN Employees AS m ON e.manager_id = m.employee_id;