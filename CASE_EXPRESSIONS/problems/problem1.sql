/*
I want to categorize the salaries from each job posting. To see if it fits my desired salary range.

Put salary into different buckets.
Define whats a high, standard, or low salary with our own conditions.
Only to look at jobs for data analyst.
Order from highest to lowest.
*/

SELECT
    job_id,
    salary_year_avg,
    CASE 
        WHEN salary_year_avg >= 75000 THEN
        'High_job_salary'
        WHEN salary_year_avg >= 50000 THEN 'Mid_job_salary'
        WHEN salary_year_avg >= 25000 THEN 'Low_job_salary'
    END AS job_salary_category

FROM   
    job_postings_fact

WHERE 
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL

ORDER BY
    salary_year_avg DESC