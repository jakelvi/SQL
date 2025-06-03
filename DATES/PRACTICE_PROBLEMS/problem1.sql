/* 
Write a query to find the average salary both yearly (salary_year_avg) and hourly (salary_hour_avg) for job postings that were posted after June 1, 2023.
Group the results by job schedule type.
 */

SELECT 
    AVG(salary_hour_avg) AS hourly_avg,
    AVG(salary_year_avg) AS yearly_avg

FROM 
    job_postings_fact

WHERE 
    job_posted_date::DATE > '2023-06-01'

GROUP BY 
    job_schedule_type