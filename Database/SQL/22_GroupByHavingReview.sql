-- Database/SQL/22_GroupByHavingReview.sql

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    score INTEGER NOT NULL
);

INSERT INTO students (id, name, department, score) VALUES
(1, 'kim', 'CS', 90),
(2, 'lee', 'CS', 80),
(3, 'park', 'Business', 70),
(4, 'choi', 'Business', 90),
(5, 'han', 'Design', 75);

-- 1. 평균 점수가 80점 이상인 학과
SELECT department,
       COUNT(id) AS student_count,
       AVG(score) AS avg_score
FROM students
GROUP BY department
HAVING AVG(score) >= 80;

-- 2. 학생이 2명 이상인 학과
SELECT department,
       COUNT(id) AS student_count
FROM students
GROUP BY department
HAVING COUNT(id) >= 2;

-- 3. 평균 점수가 80점 이상이고 학생도 2명 이상인 학과
SELECT department,
       COUNT(id) AS student_count,
       AVG(score) AS avg_score
FROM students
GROUP BY department
HAVING AVG(score) >= 80
   AND COUNT(id) >= 2;