SELECT 
    EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') AS job_month,
    COUNT(*) AS job_per_month

FROM    
    job_postings_fact

WHERE 
    job_posted_date BETWEEN '2023-01-01' AND '2023-12-31'

GROUP BY 
    job_month

ORDER BY 
    job_month
