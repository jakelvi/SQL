/* UNION combines results from two or more SELECT statements
They need to have the same amount of columns, and the data type must match.

SELECT column_name
FROM table_one

UNION --combine the two.

SELECT column_name
FROM table_two
*/

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs