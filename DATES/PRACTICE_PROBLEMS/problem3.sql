SELECT DISTINCT 
    c.name

FROM job_postings_fact j

JOIN 
    company_dim c ON j.company_id = c.company_id
WHERE 
    j.job_health_insurance = TRUE
    AND EXTRACT(YEAR FROM j.job_posted_date) = 2023
    AND EXTRACT(QUARTER FROM j.job_posted_date) = 2