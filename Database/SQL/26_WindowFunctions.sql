-- DAY38: Window Functions

-- 문제 1: 전체 직원 급여 순위
SELECT
    emp_name,
    salary,
    ROW_NUMBER() OVER (
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees
ORDER BY salary DESC;


-- 문제 2: 부서별 급여 순위
SELECT
    emp_name,
    dept_id,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS dept_rank
FROM employees
ORDER BY dept_id ASC, dept_rank ASC;


-- 문제 3: ROW_NUMBER, RANK, DENSE_RANK 비교
SELECT
    student_name,
    score,
    ROW_NUMBER() OVER (
        ORDER BY score DESC, student_id ASC
    ) AS row_num,
    RANK() OVER (
        ORDER BY score DESC
    ) AS score_rank,
    DENSE_RANK() OVER (
        ORDER BY score DESC
    ) AS dense_rank
FROM exam_scores
ORDER BY score DESC, student_id ASC;