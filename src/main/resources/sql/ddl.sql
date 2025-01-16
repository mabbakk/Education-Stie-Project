-- 데이터베이스 생성
CREATE DATABASE Education_Site
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

-- 회원 테이블
CREATE TABLE users
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(50) NOT NULL,  -- 로그인 할 때 필요한 정보
    email           VARCHAR(100) UNIQUE,   --      "
    password        VARCHAR(100),          --      "
    refresh_token   VARCHAR(225)   -- 회원가입 할 때는 안 쓰이고, 로그인할 때 쓰임.

);

SELECT * FROM users;
DELETE FROM users;
COMMIT;

