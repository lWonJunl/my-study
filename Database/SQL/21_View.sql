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


-- 1. 85점 이상 학생 VIEW
CREATE VIEW high_score_students AS
SELECT id, name, score
FROM students
WHERE score >= 85;

SELECT *
FROM high_score_students;


-- 2. 학생 이름, 학과 이름, 점수를 보여주는 VIEW
CREATE VIEW student_details AS
SELECT s.name AS student_name,
       d.name AS department_name,
       s.score
FROM students AS s
JOIN departments AS d
ON s.department_id = d.id;

SELECT *
FROM student_details;


-- 3. 학과별 학생 수와 평균 점수를 보여주는 VIEW
CREATE VIEW department_stats AS
SELECT d.name AS department_name,
       COUNT(s.id) AS student_count,
       AVG(s.score) AS avg_score
FROM departments AS d
JOIN students AS s
ON d.id = s.department_id
GROUP BY d.id, d.name;