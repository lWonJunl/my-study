-- 예시 테이블
CREATE TABLE accounts (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    balance INTEGER NOT NULL
);

-- 1. 15000원 송금 후 확정
BEGIN;

UPDATE accounts
SET balance = balance - 15000
WHERE id = 1;

UPDATE accounts
SET balance = balance + 15000
WHERE id = 2;

COMMIT;


-- 2. 작업 전체 취소
BEGIN;

UPDATE accounts
SET balance = balance - 10000
WHERE id = 1;

ROLLBACK;


-- 3. SAVEPOINT 이후 작업만 취소
BEGIN;

UPDATE accounts
SET balance = balance - 5000
WHERE id = 1;

SAVEPOINT middle;

UPDATE accounts
SET balance = balance + 5000
WHERE id = 2;

ROLLBACK TO SAVEPOINT middle;

COMMIT;