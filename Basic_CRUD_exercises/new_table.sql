CREATE TABLE IF NOT EXISTS company_chart
AS
SELECT
    CONCAT(employees.first_name, ' ', employees.last_name) AS full_name,
    employees.job_title,
    employees.department_id,
    employees.manager_id
FROM employees;