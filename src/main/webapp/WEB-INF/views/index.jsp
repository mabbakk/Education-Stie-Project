<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDUM</title>
    <link rel="stylesheet" href="/css/index.css">
</head>
<body>
<header>
    <div class="container">
        <h1 class="logo">EDUM</h1>
        <nav>
            <ul class="nav-links">
                <li><a href="index.html">홈</a></li>
                <li><a href="#courses">강좌</a></li>
                <li><a href="#about">소개</a></li>
                <li><a href="#contact">문의</a></li>
                <li><a href="signup">회원가입</a></li>
                <li><a href="login">로그인</a></li>
            </ul>
        </nav>
    </div>
</header>

<main>
    <section id="home" class="hero">
        <div class="hero-content">
            <p>EDUM, 나의 성장을 통한 더 큰 내일의 가능성.</p>
            <%--        <a href="#courses" class="btn">강좌 탐색하기</a>--%>
        </div>
    </section>


    <%-- EDUM 소개 --%>
    <section id="about" class="section">
        <div class="container">
            <h2>INTRO</h2>
            <p>EDUM은 귀하의 필요에 맞춘 최상의 사내 교육 솔루션을 제공합니다.</p>
        </div>
    </section>


    <%-- 강좌 소개란--%>
    <section id="courses" class="section">
        <div class="container">
            <h2>우리의 강좌</h2>
            <p>스킬을 향상시키기 위한 다양한 강좌를 확인하세요.</p>
            <div class="course-list">
                <div class="course-item">
                    <h3>리더십 트레이닝</h3>
                    <p>현대 직장에서의 리더십 스킬을 개발하세요.</p>
                </div>
                <div class="course-item">
                    <h3>프로젝트 관리</h3>
                    <p>효과적인 프로젝트 관리의 기본을 배우세요.</p>
                </div>
                <div class="course-item">
                    <h3>기술 스킬</h3>
                    <p>우리의 강좌로 기술 전문성을 강화하세요.</p>
                </div>
            </div>
        </div>
    </section>


    <section id="contact" class="section">
        <div class="container">
            <h2>고객센터</h2>
            <a href="#" class="ask-for">구매 상담 / 환불 / 시스템 장애 문의</a>
        </div>
    </section>
</main>

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
