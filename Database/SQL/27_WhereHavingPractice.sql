-- DAY42: WHERE와 HAVING 복습

-- 1. 실습 테이블 생성
CREATE TABLE sales (
    id INTEGER PRIMARY KEY,
    customer_id VARCHAR(10),
    amount INTEGER
);

-- 2. 실습 데이터 입력
INSERT INTO sales (id, customer_id, amount) VALUES
(1, 'A', 50),
(2, 'A', 70),
(3, 'B', 30),
(4, 'B', 40),
(5, 'C', 150);

-- 3. 거래 금액이 40 이상인 데이터만 집계
-- 고객별 합계가 100 이상인 고객 조회
-- 합계 내림차순 정렬
SELECT
    customer_id,
    SUM(amount) AS total
FROM sales
WHERE amount >= 40
GROUP BY customer_id
HAVING SUM(amount) >= 100
ORDER BY total DESC;

-- 4. 실습 테이블 정리
DROP TABLE sales;
