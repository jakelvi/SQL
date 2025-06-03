-- CREATE TABLE january_jobs AS
-- SELECT *

-- FROM 
--     job_postings_fact

-- WHERE 
--     EXTRACT(MONTH FROM job_posted_date) = 1 

WITH january_jobs AS (--CTE definition starts here
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
) --CTE definition ends here

SELECT * 
FROM january_jobs