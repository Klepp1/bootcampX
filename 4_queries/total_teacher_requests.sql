SELECT count(assistance_requests.*) as total_assistances, teachers.name as name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;
