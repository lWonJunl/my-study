-- DAY37: CTE

-- 문제 1: 급여 350만 원 이상 직원
WITH high_salary AS (
    SELECT emp_name, salary
    FROM employees
    WHERE salary >= 3500000
)
SELECT *
FROM high_salary
ORDER BY salary DESC;

-- 문제 2: 부서별 평균 급여와 직원 수
WITH dept_stats AS (
    SELECT
        dept_id,
        AVG(salary) AS avg_salary,
        COUNT(*) AS employee_count
    FROM employees
    GROUP BY dept_id
)
SELECT
    d.dept_name,
    s.avg_salary,
    s.employee_count
FROM dept_stats AS s
JOIN departments AS d
    ON s.dept_id = d.dept_id
ORDER BY s.avg_salary DESC;