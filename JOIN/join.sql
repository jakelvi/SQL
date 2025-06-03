SELECT *

FROM job_postings_fact j
FULL OUTER JOIN company_dim c ON j.company_id = c.company_id
WHERE j.job_id IS NULL