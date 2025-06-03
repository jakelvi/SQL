
WITH top_five_skills AS(
SELECT skill_id,
COUNT(*) AS skill_count
FROM skills_job_dim
GROUP BY
    skill_id
ORDER BY
skill_count DESC
LIMIT 5
)

SELECT s.skill_id,
    s.skills AS skill_name,
    t.skill_count
FROM top_five_skills t

JOIN 
    skills_dim s ON t.skill_id = s.skill_id
ORDER BY
    t.skill_count DESC


-- SELECT * 
-- FROM skills_dim