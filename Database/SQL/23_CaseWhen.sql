CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    score INTEGER NOT NULL
);

INSERT INTO students (id, name, score) VALUES
(1, 'kim', 90),
(2, 'lee', 75),
(3, 'park', 85),
(4, 'choi', 60);

-- 1. 80점 이상 PASS, 나머지 FAIL
SELECT name,
       score,
       CASE
           WHEN score >= 80 THEN 'PASS'
           ELSE 'FAIL'
       END AS result
FROM students;

-- 2. 점수별 등급
SELECT name,
       score,
       CASE
           WHEN score >= 90 THEN 'A'
           WHEN score >= 80 THEN 'B'
           WHEN score >= 70 THEN 'C'
           ELSE 'F'
       END AS grade
FROM students;

-- 3. PASS / FAIL 인원 수
SELECT
    SUM(
        CASE
            WHEN score >= 80 THEN 1
            ELSE 0
        END
    ) AS pass_count,

    SUM(
        CASE
            WHEN score < 80 THEN 1
            ELSE 0
        END
    ) AS fail_count
FROM students;