WITH
    job_counts AS(

SELECT 
    company_id,
    COUNT(*) AS job_count
  
FROM 
    job_postings_fact
GROUP BY
    company_id
    )

SELECT 
    company_id,
    job_count,
      CASE
        WHEN job_count < 10 THEN 'Small'
        WHEN job_count BETWEEN 10 AND 50 THEN 'Medium'
        ELSE 'Large'
    END AS size_catgory
    
FROM
    job_counts
--company_id is the key column that is the same on both tables.
--name is the company name in company_dim

