# HRAnalysis
👩🏾‍💻 **HR Business Analysis Project (SQL)**

📋 **OVERVIEW**

This project demonstrates my SQL skills in database creation, relationship identification, and querying. The database includes key business tables that track employee information, department structures, job roles, and salary data. The queuries performed on this database answer important business questions and provide actionable insights for **HR teams**.

ℹ️ **DATABASE SCHEMA**

|Table Name |  Description|
|-----------|---------------------------------------------------------------------------------|
|Employees  |  Contains employee information such as names, hire dates, and job assignments.  |
|Departments|  Stores information about the departments employees work in.|
|Jobs       |  Defines job roles, including job titles and salary ranges.|
|Salaries   |  Records the actual salary information for each employee.|
|Manager    |  Contains manager name and employee id as foreign

🔎 **SAMPLE QUERIES AND INSIGHTS**

1. The highest average salary is for the IT Manager role, while the lowest is for the HR Specialist Role.

Code:
```sql
   SELECT j.job_title, AVG(e.salary) AS average_salary
   FROM Employees AS e
   JOIN Jobs AS j ON e.job_id = j.job_id
   GROUP BY j.job_title
   ORDER BY average_salary DESC;
```
   
2. The IT department has the highest average salary.

Code:
```sql
   SELECT d.department_name, AVG (e.salary) AS average_salary
   FROM Employees AS e
   JOIN Departments AS d ON e.department_id = d.department_id
   GROUP BY d.department_name
   ORDER BY average_salary DESC;
```

  🗂️ **PROJECT FILES**
  
  |File Name | Description|
  |-----------|--------------------------------------------------------------------------------|
  |[TableCreationHRA.sql](./TableCreationHRA.sql)| Queries used to create tables for the HR Analysis database.|
  |[InsertIntoHRA.sql](./InsertIntoHRA.sql)| Queries used to insert data into tables.|
  |[QueriesHRA.sql](./QueriesHRA.sql)| Complete list of sample queries.|
  

🔨 **TOOLS USED**

* **SQL Server Management Studio** (SSMS)
  
* **Microsoft SQL Server**
  
* **Markdown** for project documentation
  
* **GitHub** for version control


🤔 **Next Steps**
* Add more queries to extract insights (e.g., employee tenure analysis).
* Explore data visualization tools like Power BI or Tableau to present findings.
* Document any additional insights gained from the queries.


![CurtseyGIF](https://github.com/user-attachments/assets/ce34a8fc-be23-4747-90ca-86676222201c)
