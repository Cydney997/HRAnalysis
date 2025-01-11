INSERT INTO Departments (department_id, department_name) VALUES
(1, 'Sales'),
(2, 'Human Resources'),
(3, 'IT (Information Technology)'),
(4, 'Marketing'),
(5, 'Finance'),
(6, 'Customer Service'),
(7, 'Operations'),
(8, 'Research & Development'),
(9, 'Legal'),
(10, 'Procurement');

INSERT INTO Jobs (job_id, job_title, min_salary, max_salary, department_id) VALUES
(101, 'Sales Manager', 50000, 80000, 1),
(102, 'HR Specialist', 45000, 70000, 2),
(103, 'IT Manager', 60000, 90000, 3),
(104, 'Marketing Coordinator', 40000, 65000, 4),
(105, 'Finance Analyst', 55000, 85000, 5),
(106, 'Customer Support', 35000, 55000, 6),
(107, 'Quality Analyst', 55000, 85000, 7),
(108, 'Research Coordinator', 45000, 60000, 8),
(109, 'Legal Consultant', 75000, 95000, 9),
(110, 'Procurement Manager', 60000, 90000, 10);

INSERT INTO Employees (employee_id, employee_name, hire_date, job_id, department_id, salary, manager_id)
VALUES
(1, 'John Doe', '2018-05-15', 101, 1, 55000, NULL),
(2, 'Jane Smith', '2020-06-01', 102, 2, 62000, 1),
(3, 'Bob Johnson', '2019-09-12', 103, 3, 72000, NULL),
(4, 'Alice Brown', '2021-03-10', 104, 4, 45000, 2),
(5, 'Michael Lee', '2022-08-22', 105, 5, 58000, 3),
(6, 'Brennan Mulligan', '2020-06-08', 106, 6, 52000, 4),
(7, 'Kingston Brown', '2023-08-23', 107, 7, 68000, 5),
(8, 'Sofia Lee', '2024-05-15', 108, 8, 50000, 8),
(9, 'Bruce Kugrich', '2015-10-05', 109, 9, 95000, 9),
(10, 'Pete Conlin', '2025-01-01', 110, 10, 65000, NULL)

INSERT INTO Department_Heads (department_id, employee_id) VALUES
(1, 1),
(2, 2),
(3, 3), 
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Salaries (salary_id, employee_id, salary, start_date, end_date) VALUES
(1, 1, 55000, '2018-05-15', NULL),
(2, 2, 62000, '2020-06-01', NULL),
(3, 3, 72000, '2019-09-12', NULL),
(4, 4, 45000, '2021-03-10', NULL),
(5, 5, 58000, '2022-08-22', NULL),
(6, 6, 52000, '2020-06-08', NULL),
(7, 7, 68000, '2023-08-23', NULL),
(8, 8, 50000, '2024-05-15', NULL),
(9, 9, 95000, '2015-10-05', NULL),
(10, 10, 65000, '2025-01-01', NULL);

INSERT INTO Performance( performance_id, employee_id, review_date, performance_score, comments) VALUES
(1, 1, NULL, NULL, NULL),
(2, 2, '2024-05-10', 78, 'Meets expectations'),
(3, 3, NULL, NULL, NULL),
(4, 4, '2024-05-02', 80, 'Steady performance'),
(5, 5, '2024-05-20', 88, 'Demonstrates strong analytical skills'),
(6, 6, '2024-05-22', 90, 'Outstanding Performance'),
(7, 7, '2024-05-18', 85, 'Consistently exceeds expectations'),
(8, 8, '2024-05-15', 75, 'Research skills developing at an acceptable rate'),
(9, 9, '2020-05-17', 90, 'Continuously meets expectations'),
(10, 10, NULL, NULL, NULL);