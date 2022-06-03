SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.assignment_id) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id, name, day, chapter
ORDER BY total_requests DESC;