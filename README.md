# ubiquitous-system
👩🏾‍💻 **HR Business Analysis Project (SQL)**

📋 **OVERVIEW**

This project demonstrates my SQL skills in database creation, relationship identification, and querying. This database includes key business tables that track employee information, department structures, job roles, and salary data. The queuries performed on this database answer important business questions and provide actionable insights for HR teams.

ℹ️ **DATABASE SCHEMA**

Table Name    Description

Employees     Contains employee information such as names, hire dates, and job assignments.

Departments  Stores information about the departments employees work in.

Jobs          Defines job roles, including job titles and salary ranges.

Salaries      Records the actual salary information for each employee.

🔎 **SAMPLE QUERIES AND INSIGHTS**

1. The highest average salary is for the IT Manager role, while the lowest is for the HR Specialist Role.

Code:

   SELECT j.job_title, AVG(e.salary) AS average_salary
	
   FROM Employees AS e
	
   JOIN Jobs AS j ON e.job_id = j.job_id
	
   GROUP BY j.job_title
	
   ORDERBY average_salary DESC;
	
   
2. The IT department has the highest average salary.

Code:

   SELECT d.department_name, AVG (e.salary) AS average_salary
	
   FROM Employees AS e
	
   JOIN Departments AS d ON e.department_id = d.department_id
	
   GROUP BY d.department_name
	
   ORDER BY average_salary DESC;


  🗂️ **PROJECT FILES**
  
   
