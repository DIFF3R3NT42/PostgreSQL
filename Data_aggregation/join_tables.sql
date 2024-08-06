SELECT
    d.id AS id,
    d.department_name,
    d.manager_id,
    e.id AS id,
    e.first_name,
    e.last_name,
    e.job_title,
    e.department_id,
    e.manager_id,
    e.hire_date,
    e.salary,
    e.address_id
FROM
    employees AS e,
    departments AS d
WHERE e.department_id = d.id;