SELECT cohorts.name as cohort, avg(completed_at - started_at) as average_assistance_request_duration
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohort
ORDER BY average_assistance_request_duration DESC
LIMIT 1;