<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 - EDUM</title>
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/signup.css">
</head>
<body>
<header>
    <div class="container">
        <h1 class="logo">EDUM</h1>
    </div>
</header>

<section class="section">
    <div class="container">
        <div class="title">
            <h2>회원가입</h2>
            <hr>
        </div>

        <form>
            <label for="username">성함:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">이메일:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">비밀번호:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">회원가입</button>
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
