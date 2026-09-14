-- 예시 테이블
CREATE TABLE accounts (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    balance INTEGER NOT NULL
);

-- 1. 정상 송금 후 COMMIT
BEGIN;

UPDATE accounts
SET balance = balance - 10000
WHERE id = 1;

UPDATE accounts
SET balance = balance + 10000
WHERE id = 2;

COMMIT;


-- 2. 작업 전체 취소
BEGIN;

UPDATE accounts
SET balance = balance - 20000
WHERE id = 1;

ROLLBACK;


-- 3. SAVEPOINT 사용
BEGIN;

UPDATE accounts
SET balance = balance - 10000
WHERE id = 1;

SAVEPOINT after_kim;

UPDATE accounts
SET balance = balance + 10000
WHERE id = 2;

ROLLBACK TO SAVEPOINT after_kim;

COMMIT;