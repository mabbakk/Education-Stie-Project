<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 - EDUM</title>
    <link rel="stylesheet" href="/css/index.css">
</head>
<body>
<header>
    <div class="container">
        <h1 class="logo">EDUM</h1>
    </div>
</header>

<section class="section">
    <div class="container">
        <h2>로그인</h2>
        <form>
            <label for="email">이메일:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">비밀번호:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">로그인</button>
        </form>
    </div>
</section>

<footer>
    <div class="container">
        <div class="text">
            <p>Copyright&copy;EDUM.All rights reserved.</p>
            <p>무단 전재, 재배포 밒 AI 학습 이용을 금지합니다.</p>
        </div>
    </div>
</footer>
</body>
</html>
