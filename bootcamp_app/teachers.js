const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const query = `SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
GROUP BY teacher, cohort
ORDER BY teacher;`;

const cohortName = process.argv[2] || 'JUL02';
const values = [cohortName];

pool.query(query, values);