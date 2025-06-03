SELECT 
job_title_short AS title,
job_location AS location,
job_posted_date::DATE AS date
-- Cleans the hours and minutes.
FROM job_postings_fact
LIMIT 10