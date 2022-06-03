SELECT students.name as student_name, avg(assignment_submissions.duration) as average
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student_name
ORDER BY average DESC;