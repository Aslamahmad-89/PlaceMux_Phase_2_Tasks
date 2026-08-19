-- =========================================================
-- PLACE MUX - TASK 2
-- JOB SUPPLY ANALYSIS
-- SQL ANALYTICS
-- =========================================================

USE placemux_phase2;


-- =========================================================
-- 1. DATA VALIDATION
-- =========================================================

SELECT *
FROM job_posted_events;

-- Check total events
SELECT COUNT(*) AS total_events
FROM job_posted_events;

-- Check duplicate events
SELECT 
    event_id,
    COUNT(*) AS occurrence
FROM job_posted_events
GROUP BY event_id
HAVING COUNT(*) > 1;


-- =========================================================
-- 2. JOB SUPPLY KPIs
-- =========================================================

SELECT 
    COUNT(DISTINCT job_id) AS total_jobs,
    COUNT(DISTINCT company_id) AS unique_companies,
    COUNT(DISTINCT skill) AS unique_skills,
    COUNT(DISTINCT city) AS unique_cities
FROM job_posted_events;


-- =========================================================
-- 3. CITY-WISE JOB SUPPLY
-- =========================================================

SELECT 
    city,
    COUNT(DISTINCT job_id) AS jobs_posted
FROM job_posted_events
GROUP BY city
ORDER BY jobs_posted DESC;


-- =========================================================
-- 4. SKILL-WISE JOB SUPPLY
-- =========================================================

SELECT 
    skill,
    COUNT(DISTINCT job_id) AS jobs_posted
FROM job_posted_events
GROUP BY skill
ORDER BY jobs_posted DESC;


-- =========================================================
-- 5. COMPANY-WISE JOB POSTING
-- =========================================================

SELECT 
    company_id,
    COUNT(DISTINCT job_id) AS jobs_posted
FROM job_posted_events
GROUP BY company_id
ORDER BY jobs_posted DESC;


-- =========================================================
-- 6. SKILL THRESHOLD ANALYSIS
-- =========================================================

SELECT
    skill,
    COUNT(DISTINCT job_id) AS jobs,
    AVG(skill_threshold) AS avg_threshold,
    MIN(skill_threshold) AS min_threshold,
    MAX(skill_threshold) AS max_threshold
FROM job_posted_events
GROUP BY skill
ORDER BY avg_threshold DESC;


-- =========================================================
-- 7. THRESHOLD VALIDATION
-- =========================================================

SELECT *
FROM job_posted_events
WHERE skill_threshold < 0
   OR skill_threshold > 100;


-- =========================================================
-- 8. HIGH-THRESHOLD JOBS
-- =========================================================

SELECT
    job_id,
    company_id,
    job_title,
    skill,
    skill_threshold,
    city
FROM job_posted_events
WHERE skill_threshold >= 70
ORDER BY skill_threshold DESC;


-- =========================================================
-- 9. CITY + SKILL ANALYSIS
-- =========================================================

SELECT
    city,
    skill,
    COUNT(DISTINCT job_id) AS jobs_posted
FROM job_posted_events
GROUP BY city, skill
ORDER BY city, jobs_posted DESC;


-- =========================================================
-- 10. JOB POSTING RANKING
-- =========================================================

SELECT
    company_id,
    job_id,
    job_title,
    skill_threshold,
    RANK() OVER (
        ORDER BY skill_threshold DESC
    ) AS threshold_rank
FROM job_posted_events;


-- =========================================================
-- 11. COMPANY-WISE RANKING
-- =========================================================

SELECT
    company_id,
    job_id,
    job_title,
    skill_threshold,
    RANK() OVER (
        PARTITION BY company_id
        ORDER BY skill_threshold DESC
    ) AS company_rank
FROM job_posted_events;


-- =========================================================
-- 12. JOB SUPPLY VIEW
-- =========================================================

CREATE OR REPLACE VIEW jobs_posted_live AS
SELECT
    event_id,
    job_id,
    company_id,
    job_title,
    skill,
    skill_threshold,
    city,
    event_timestamp
FROM job_posted_events;


SELECT *
FROM jobs_posted_live;