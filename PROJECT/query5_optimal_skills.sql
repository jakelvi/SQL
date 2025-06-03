/*
What are the most optimal skills to learn?
Identify skills in high demand and associated with high average salaries for Data Analyst roles.
*/

WITH skills_demand AS (
SELECT 
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_dim.skill_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND 
    salary_year_avg IS NOT NULL AND
    job_work_from_home IS TRUE
GROUP BY    
    skills_dim.skill_id, skills_dim.skills
),
 avg_salary AS (
SELECT 
    skills_dim.skill_id,
    skills_dim.skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL AND
    job_work_from_home IS TRUE
GROUP BY    
    skills_dim.skill_id, skills_dim.skills
)

SELECT 
    skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_salary

FROM 
    skills_demand

INNER JOIN avg_salary ON skills_demand.skill_id = avg_salary.skill_id 

ORDER BY
    demand_count DESC, 
    avg_salary DESC

LIMIT 25
