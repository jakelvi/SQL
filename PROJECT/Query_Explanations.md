# Query Explanations — Data Analyst SQL Project

This document provides detailed explanations of each SQL query included in the project, outlining their goals, logic, and the SQL techniques used.

---

### 🔹 Query 1: Top 10 Highest Paying Remote Data Analyst Jobs

**Objective:**
Identify the 10 highest-paying Data Analyst jobs that are remote (`job_location = 'Anywhere'`).

**Key Features:**

* Filters jobs to only include 'Data Analyst' titles with non-null yearly salary data.
* Joins `job_postings_fact` with `company_dim` to fetch company names.
* Sorts results in descending order of salary.

**SQL Concepts Used:**

* `LEFT JOIN`
* `WHERE` with multiple conditions
* `ORDER BY` and `LIMIT`

---

### 🔹 Query 2: Skills Required for Top Paying Analyst Jobs

**Objective:**
Identify the skills required for the top 10 highest-paying Data Analyst jobs.

**Key Features:**

* Uses a CTE (`top_paying_jobs`) to isolate the top 10 high-paying jobs.
* Joins the result with `skills_job_dim` and `skills_dim` to get the relevant skills.

**SQL Concepts Used:**

* CTE (`WITH`)
* `INNER JOIN`
* Reuse of filtered results

---

### 🔹 Query 3: Most In-Demand Skills for Remote Analysts

**Objective:**
Find the top 5 most commonly required skills in remote Data Analyst jobs.

**Key Features:**

* Filters remote jobs (`job_work_from_home = TRUE`).
* Aggregates job IDs by skill and counts demand.
* Orders skills by demand count.

**SQL Concepts Used:**

* `GROUP BY`
* `COUNT()`
* `ORDER BY`
* `LIMIT`

---

### 🔹 Query 4: Top Skills Based on Average Salary

**Objective:**
Find skills associated with the highest average salaries for Data Analyst roles.

**Key Features:**

* Includes only jobs with non-null salary values.
* Aggregates and averages `salary_year_avg` per skill.
* Orders results to highlight the most valuable skills.

**SQL Concepts Used:**

* `AVG()`
* `ROUND()`
* `GROUP BY`

---

### 🔹 Query 5: Most Optimal Skills to Learn

**Objective:**
Combine skill demand and salary to identify the most optimal skills to learn for Data Analysts.

**Key Features:**

* First CTE (`skills_demand`) counts how many times each skill appears.
* Second CTE (`avg_salary`) computes average salary per skill.
* Final query joins the two and ranks results by both demand and salary.

**SQL Concepts Used:**

* Multiple CTEs (`WITH`)
* Combined filtering (job title, remote, non-null salary)
* `INNER JOIN` across subqueries
* Ordering by two metrics

---

These queries provide actionable insights for job seekers and skill learners in the data analytics field.
