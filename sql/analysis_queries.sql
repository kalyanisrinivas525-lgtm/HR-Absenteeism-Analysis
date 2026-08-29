-- HR Absenteeism Analysis
-- SQL Analysis Queries

-- 1. Overall KPI Summary
SELECT
    COUNT(*) AS total_records,
    SUM(absenteeism_hours) AS total_absenteeism_hours,
    ROUND(AVG(absenteeism_hours), 2) AS average_absenteeism_hours,
    MAX(absenteeism_hours) AS maximum_absenteeism_hours,
    MIN(absenteeism_hours) AS minimum_absenteeism_hours
FROM absenteeism;


-- 2. Absenteeism by Reason
SELECT
    reason_for_absence,
    COUNT(*) AS absence_count,
    SUM(absenteeism_hours) AS total_hours
FROM absenteeism
GROUP BY reason_for_absence
ORDER BY total_hours DESC;


-- 3. Absenteeism by Month
SELECT
    month_of_absence,
    COUNT(*) AS absence_count,
    SUM(absenteeism_hours) AS total_hours
FROM absenteeism
GROUP BY month_of_absence
ORDER BY total_hours DESC;


-- 4. Absenteeism by Day of Week
SELECT
    day_of_week,
    COUNT(*) AS absence_count,
    SUM(absenteeism_hours) AS total_hours
FROM absenteeism
GROUP BY day_of_week
ORDER BY total_hours DESC;


-- 5. Absenteeism by Season
SELECT
    seasons,
    COUNT(*) AS absence_count,
    SUM(absenteeism_hours) AS total_hours
FROM absenteeism
GROUP BY seasons
ORDER BY total_hours DESC;
