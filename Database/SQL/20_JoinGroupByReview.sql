-- 예시 테이블
CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department_id INTEGER,
    score INTEGER NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- 학과별 학생 수와 평균 점수(ver1)
SELECT d.name AS department,
       COUNT(s.id) AS student_count,
       AVG(s.score) AS avg_score
FROM departments AS d
JOIN students AS s
ON d.id = s.department_id
GROUP BY d.id, d.name;

-- 학과별 학생 수와 평균 점수(ver2)
SELECT d.name, 
    s.student_count, 
    s.avg_score
FROM departments AS d
JOIN (
    SELECT department_id,
        COUNT(name) AS student_count,
        AVG(score) AS avg_score
    FROM students
    GROUP BY department_id
) AS s
ON d.id = s.department_id;