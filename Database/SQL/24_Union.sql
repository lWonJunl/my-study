-- Database/SQL/24_Union.sql

CREATE TABLE java_students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE sql_students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO java_students (id, name) VALUES
(1, 'kim'),
(2, 'lee'),
(3, 'park');

INSERT INTO sql_students (id, name) VALUES
(1, 'lee'),
(2, 'choi'),
(3, 'park');

-- 1. 중복 제거해서 합치기
SELECT name
FROM java_students
UNION
SELECT name
FROM sql_students;

-- 2. 중복 유지해서 합치기
SELECT name
FROM java_students
UNION ALL
SELECT name
FROM sql_students;

-- 3. 어느 수업에서 온 데이터인지 함께 표시
SELECT name,
       'Java' AS course
FROM java_students
UNION ALL
SELECT name,
       'SQL' AS course
FROM sql_students;