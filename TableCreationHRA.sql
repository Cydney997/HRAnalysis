
CREATE TABLE Departments (
	department_id INT PRIMARY KEY,
	department_name VARCHAR(30)
	);

CREATE TABLE Jobs (
	job_id INT PRIMARY KEY,
	job_title VARCHAR(50),
	min_salary DECIMAL(10, 2),
	max_salary DECIMAL(10, 2),
	department_id INT
	FOREIGN KEY(department_id) REFERENCES Departments(department_id)
	)

CREATE TABLE Employees (
	employee_id INT PRIMARY KEY,
	employee_name NVARCHAR(100),
	hire_date DATE,
	job_id INT,
	department_id INT,
	salary DECIMAL(10, 2),
	manager_id INT,
	FOREIGN KEY (job_id) REFERENCES Jobs(job_id),
	FOREIGN KEY (department_id) REFERENCES Departments(department_id),
	FOREIGN KEY(manager_id) REFERENCES Employees(employee_id)
	)

CREATE TABLE Salaries (
	salary_id INT PRIMARY KEY,
	employee_id INT,
	salary DECIMAL(10, 2),
	start_date DATE,
	end_date DATE,
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
	)

CREATE TABLE Performance (
	performance_id INT PRIMARY KEY,
	employee_id INT,
	review_date DATE,
	performance_score INT,
	comments NVARCHAR(250)
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
	)

	CREATE TABLE Department_Heads (
	department_id INT,
	employee_id INT,
	FOREIGN KEY (department_id) REFERENCES Departments(department_id),
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
	)
