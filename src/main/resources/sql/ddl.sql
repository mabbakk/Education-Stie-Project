-- 데이터베이스 생성
CREATE DATABASE instagram_clone
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

-- 회원 테이블
CREATE TABLE users
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(50) NOT NULL,
    email           VARCHAR(100) UNIQUE,
    password        VARCHAR(100),
    refresh_token   VARCHAR(225)

);