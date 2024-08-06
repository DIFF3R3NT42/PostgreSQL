SELECT
    job_title,
    CASE
        WHEN MAX(salary) > 45800 THEN 'Good'
        WHEN MAX(salary) BETWEEN 27500 AND 45800 THEN 'Medium'
        WHEN MAX(salary) < 27500 THEN 'Need Improvement'
    END category
FROM employees
GROUP BY job_title
ORDER BY category, job_title;