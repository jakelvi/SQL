/* Get the corresponding skill and skill type for each job posting in q1
Include those without any skills as well.
*/


SELECT
    j.job_id, 
    s.skill_id,
    j.job_title_short,
    sk.skills,
    sk.type
FROM job_postings_fact j
LEFT JOIN  skills_job_dim s ON j.job_id = s.job_id
LEFT JOIN skills_dim sk ON s.skill_id = sk.skill_id

WHERE EXTRACT (QUARTER FROM j.job_posted_date) = 1

