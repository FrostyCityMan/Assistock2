<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2022-11-18
  Time: 오후 4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%--    --%>

    <%--    --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="../js/jquery-3.6.1.min.js"></script>
    <script src="../js/jquery.cookie.js"></script>
    <link rel="stylesheet" as="style"
          href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.5/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="stylesheet" href="../css/Index.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>당신의 투자를 위한
        의사결정 지원 플랫폼, 어시스톡</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../images/Favi4.png"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <%--    <link href="../css/styles.css" rel="stylesheet"/>--%>
    <!--    anyChart -->


</head>
<body>

<%----%>

<%----%>
<!-- Responsive navbar-->

<!-- Page header with logo and tagline-->
<header>
    <div class="top-nav container">
        <div class="logo">
            <a href="http://192.168.14.24:9095/" style="color: white">
                <img src="../images/Favi.png" style="width: 40px; padding-right: 5px; margin-right: 5px;">A S S I S T O
                C K
            </a>
        </div>
        <ul>
            <li><a href="http://192.168.14.24:9095/">Home</a></li>
            <li><a href="http://192.168.14.24:9095/Pricing">Pricing</a></li>
            <li><a href="http://192.168.14.24:9095/about">About</a></li>
            <%
                if (session.getAttribute("ID") == null) {
            %>
            <li><a href="http://192.168.14.24:9095/login">Login</a></li>
            <%} else {%>
            <li><a href="http://192.168.14.24:9095/dashboard">대쉬보드</a></li>
            <li><a class="btn-logout" href="http://192.168.14.24:9095/">Logout</a></li>
            <% }%>
        </ul>

    </div> <!-- end top-nav -->

    <div class="hero container" id="top-nv">
        <div class="hero-image">
            <img src="../images/loginLogo.png"
                 alt="hero image">
        </div>
        <div class="hero-copy" style=" margin: 0 auto; text-align: center;">
            <h1>당신의 투자를 위한<br>
                의사결정 지원 플랫폼, 어시스톡</h1>

            <div class="hero-buttons">
                <a href="http://192.168.14.24:9095/login" class="button button-white">가입하기</a>
                <a href="http://192.168.14.24:9095/Pricing" class="button button-white">구독하기</a>
            </div>
        </div> <!-- end hero-copy -->


    </div> <!-- end hero -->

</header>


<!-- Page content-->
<div class="featured-section">
    <div class="container">
        <div class="intro-container">
            <p id="first-intro">
                내 모든 투자 결정을 한눈에 분석하고 한 곳에서 관리하세요.<br>
                이제껏 경험 못 했던 쉽고 편리한 투자 분석 서비스,<br>
                어시스톡과 함께라면 당신의 투자가 새로워질 거예요.
            </p>
        </div>

        <section class="et-hero-tabs">
            <div id="second-intro">
                <img src="../images/Favi3.png">
                <h1>사람과 세상,<br>
                    그 이상을 연결하는 어시스톡 <br>
                    실시간 무료로 즐겨보세요.</h1>
            </div>
            <div class="et-hero-tabs-container">
                <a class="et-hero-tab" href="#tab-es6">오늘의 키워드</a>
                <a class="et-hero-tab" href="#tab-flexbox">주가 분석</a>
                <a class="et-hero-tab" href="#tab-react">원자재 분석</a>
                <a class="et-hero-tab" href="#tab-angular">대쉬보드</a>
                <a class="et-hero-tab" href="#tab-other">뉴스레터</a>
                <span class="et-hero-tab-slider"></span>
            </div>
        </section>

        <!-- Main -->
        <main class="et-main">
            <section class="et-slide" id="tab-es6">
                <img src="../images/loading.gif" id="loadimg">
                <h1>오늘의 키워드</h1>
                <h3>매일 수집된 뉴스 내 주요 키워드 (인물, 기관, 장소 등)를 분석하여 보여드려요.</h3>
                <div id="wordCloud"></div>
                <a href="javascript:void(0)" onclick="search1()">찾기</a>
            </section>
            <section class="et-slide" id="tab-flexbox">
                <h1>주가 분석</h1>
                <h3>국내 뉴스를 분석하여 주가 등락을 예측해드려요.</h3>
                <h3>TO-DO : 주가 분석 사용방법 넣고 구독페이지 연결하기</h3>
            </section>
            <section class="et-slide" id="tab-react">
                <h1>원자재 분석</h1>
                <h3>국제 이슈를 분석하여 원자재 가격 등락을 예측해드려요.</h3>
                <h3>TO-DO : 원자재 사용방법 넣고 구독페이지 연결하기</h3>
            </section>
            <section class="et-slide" id="tab-angular">
                <h1>대쉬보드</h1>
                <h3>개별 보고서 및 총 포트폴리오의 데이터를 분석해보세요.</h3>
                <h3>TO-DO : 대쉬보드 ex페이지 하나 넣고 구독페이지 연결하기</h3>
            </section>
            <section class="et-slide" id="tab-other">
                <h1>뉴스레터</h1>
                <h3>장 시작전에 설정하신 키워드에 맞는 주식의 가격을 메일로 만나보세요.</h3>
                <h3>TO-DO : 키워드 설정하는 모습 모여주기.</h3>
            </section>
        </main>


    </div>
</div>
<!-- Footer-->
<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-9">
                <h6>About</h6>
                <p class="text-justify">Assistock.co.kr 어시스톡 서비스는 종합일간지, 경제지, 지역일간지, 방송사 등과 같은 다양한
                    언론사로부터 수집한 뉴스로 구성된 통합 <i>데이터베이스에 빅데이터 분석 기술을 접목하여 만든 새로운 뉴스 분석</i>
                    서비스입니다. 어시스톡 서비스는 일회성으로 소모되는 뉴스 콘텐츠를 가치 있는 정보로 재사용할 수 있도록 최적의 분석
                    환경을 제공합니다. <br> <br>
                    <strong>(주)어시스톡</strong> <br>
                    06234 서울 강남구 테헤란로 124 4층<br/>
                    전화:02-0000-0000/ 연락처:010-9143-0000/ 대표자:김도훈<br/>

                </p>
            </div>

            <%--            <div class="col-xs-6 col-md-3">--%>
            <%--                <h6>Categories</h6>--%>
            <%--                <ul class="footer-links">--%>
            <%--                    <li><a href="http://scanfcode.com/category/c-language/">C</a></li>--%>
            <%--                    <li><a href="http://scanfcode.com/category/front-end-development/">UI Design</a></li>--%>
            <%--                    <li><a href="http://scanfcode.com/category/back-end-development/">PHP</a></li>--%>
            <%--                    <li><a href="http://scanfcode.com/category/java-programming-language/">Java</a></li>--%>
            <%--                    <li><a href="http://scanfcode.com/category/android/">Android</a></li>--%>
            <%--                    <li><a href="http://scanfcode.com/category/templates/">Templates</a></li>--%>
            <%--                </ul>--%>
            <%--            </div>--%>

            <div class="col-xs-6 col-md-3">
                <h6>Quick Links</h6>
                <ul class="footer-links">
                    <li><a href="http://192.168.14.24:9095/">Home</a></li>
                    <li><a href="http://192.168.14.24:9095/Pricing">Pricing</a></li>
                    <li><a href="http://192.168.14.24:9095/about">About</a></li>
                    <li><a href="http://192.168.14.24:9095/login">Login</a></li>
                    <li><a href="-">Sitemap</a></li>
                </ul>
            </div>
        </div>
        <hr>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12">
                <p class="copyright-text">Copyright &copy; 2022 All Rights Reserved by
                    <a href="#">Assistock</a>.
                </p>
            </div>

            <div class="col-md-4 col-sm-6 col-xs-12">
                <ul class="social-icons">
                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>

                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<%-- 워드 클라우드--%>
<script src="https://cdn.anychart.com/releases/8.11.0/js/anychart-core.min.js"></script>
<script src="https://cdn.anychart.com/releases/8.11.0/js/anychart-tag-cloud.min.js"></script>
<!-- Core theme JS-->
<script src="../js/scripts.js"></script>
</body>
</body>
</html>
