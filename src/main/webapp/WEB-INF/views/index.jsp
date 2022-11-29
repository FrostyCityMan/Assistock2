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
    <script src=../"js/scripts.js"></script>
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
    <link rel="icon" type="image/x-icon" href="../assets/Favi.ico"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <%--    <link href="../css/styles.css" rel="stylesheet"/>--%>
    <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
    <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>

</head>
<body>

<%----%>

<%----%>
<!-- Responsive navbar-->

<!-- Page header with logo and tagline-->
<header>
    <div class="top-nav container">
        <div class="logo"><img src="../images/Favi.png" style="width: 40px; padding-right: 5px; margin-right: 5px;">ASSISTOCK</div>
        <ul>
            <li><a href="http://localhost:9095/">Home</a></li>
            <li><a href="http://localhost:9095/Pricing">Pricing</a></li>
            <li><a href="http://localhost:9095/about">About</a></li>
            <li><a href="http://localhost:9095/login">Login</a></li>
        </ul>
    </div> <!-- end top-nav -->

    <div class="hero container">
        <div class="hero-image">
            <img src="../images/loginLogo.png"
                 alt="hero image">
        </div>
        <div class="hero-copy" style=" margin: 0 auto; text-align: center;">
            <h1>당신의 투자를 위한<br>
                의사결정 지원 플랫폼, 어시스톡</h1>

            <div class="hero-buttons">
                <a href="http://localhost:9095/login" class="button button-white">가입하기</a>
                <a href="http://localhost:9095/Pricing" class="button button-white">구독하기</a>
            </div>
        </div> <!-- end hero-copy -->


    </div> <!-- end hero -->

</header>


<!-- Page content-->
<div class="featured-section">
    <div class="container">
        <div class="intro-container">
            내 모든 투자 결정을 한눈에 분석하고 한 곳에서 관리하세요.<br>
            이제껏 경험 못 했던 쉽고 편리한 투자 분석 서비스,<br>
            어시스톡과 함께라면 당신의 투자가 새로워질 거예요.
        </div>

        <div class="row">
            <!-- Blog entries-->
            <div class="col-lg-8">
                <!-- Featured blog post-->
                <div class="card mb-4">
                    <div class="chart-area">
                        <div id="container" style="width:100%; height:350px;">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="small text-muted">여기다가,오늘날짜</div>
                        <h2 class="card-title">오늘의 키워드</h2>
                        <p class="card-text">점수가 가장 높은 뉴스 헤드라인 1</p>
                        <p class="card-text">점수가 가장 높은 뉴스 헤드라인 2</p>
                        <p class="card-text">점수가 가장 높은 뉴스 헤드라인 3</p>
                        <p class="card-text">점수가 가장 높은 뉴스 헤드라인 4</p>
                        <p class="card-text">점수가 가장 높은 뉴스 헤드라인 5</p>
                        <a class="btn btn-primary" href="#!">상세 보기</a>
                    </div>
                </div>
                <!-- Nested row for non-featured blog posts-->
                <div class="row">
                    <div class="col-lg-6">
                        <!-- Blog post-->
                        <div class="card mb-4">
                            <a href="#!"><img class="card-img-top"
                                              src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg"
                                              alt="..."/></a>
                            <div class="card-body">
                                <div class="small text-muted">여기다가,오늘날짜</div>
                                <h2 class="card-title h4">뉴스 1</h2>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Reiciendis
                                    aliquid atque, nulla.</p>
                                <a class="btn btn-primary" href="#!">상세보기</a>
                            </div>
                        </div>
                        <!-- Blog post-->
                        <div class="card mb-4">
                            <a href="#!"><img class="card-img-top"
                                              src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg"
                                              alt="..."/></a>
                            <div class="card-body">
                                <div class="small text-muted">여기다가, 오늘날짜</div>
                                <h2 class="card-title h4">뉴스</h2>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Reiciendis
                                    aliquid atque, nulla.</p>
                                <a class="btn btn-primary" href="#!">상세보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <!-- Blog post-->
                        <div class="card mb-4">
                            <a href="#!"><img class="card-img-top"
                                              src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg"
                                              alt="..."/></a>
                            <div class="card-body">
                                <div class="small text-muted">여기다가, 오늘날짜</div>
                                <h2 class="card-title h4">뉴스</h2>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Reiciendis
                                    aliquid atque, nulla.</p>
                                <a class="btn btn-primary" href="#!">상세보기</a>
                            </div>
                        </div>
                        <!-- Blog post-->
                        <div class="card mb-4">
                            <a href="#!"><img class="card-img-top"
                                              src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg"
                                              alt="..."/></a>
                            <div class="card-body">
                                <div class="small text-muted">여기다가, 오늘날짜</div>
                                <h2 class="card-title h4">뉴스</h2>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Reiciendis
                                    aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam.</p>
                                <a class="btn btn-primary" href="#!">상세보기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Pagination-->
                <nav aria-label="Pagination">
                    <hr class="my-0"/>
                    <ul class="pagination justify-content-center my-4">
                        <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1"
                                                          aria-disabled="true">Newer</a>
                        </li>
                        <li class="page-item active" aria-current="page"><a class="page-link" href="#!">1</a></li>
                        <li class="page-item"><a class="page-link" href="#!">2</a></li>
                        <li class="page-item"><a class="page-link" href="#!">3</a></li>
                        <li class="page-item disabled"><a class="page-link" href="#!">...</a></li>
                        <li class="page-item"><a class="page-link" href="#!">15</a></li>
                        <li class="page-item"><a class="page-link" href="#!">Older</a></li>
                    </ul>
                </nav>
            </div>
            <!-- Side widgets-->
            <div class="col-lg-4">
                <!-- Search widget-->
                <div class="card mb-4">
                    <div class="card-header">Search</div>
                    <div class="card-body">
                        <div class="input-group">
                            <input class="form-control" type="text" placeholder="Enter search term..."
                                   aria-label="Enter search term..." aria-describedby="button-search"/>
                            <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                        </div>
                    </div>
                </div>
                <!-- Categories widget-->
                <div class="card mb-4">
                    <div class="card-header">Categories</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <ul class="list-unstyled mb-0">
                                    <li><a href="#!">Web Design</a></li>
                                    <li><a href="#!">HTML</a></li>
                                    <li><a href="#!">Freebies</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-6">
                                <ul class="list-unstyled mb-0">
                                    <li><a href="#!">JavaScript</a></li>
                                    <li><a href="#!">CSS</a></li>
                                    <li><a href="#!">Tutorials</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Side widget-->
                <div class="card mb-4">
                    <div class="card-header">Side Widget</div>
                    <div class="card-body">You can put anything you want inside of these side widgets. They are easy
                        to use,
                        and feature the Bootstrap 5 card component!
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer-->
<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <h6>About</h6>
                <p class="text-justify">Scanfcode.com <i>CODE WANTS TO BE SIMPLE </i> is an initiative to help the
                    upcoming programmers with the code. Scanfcode focuses on providing the most efficient code or
                    snippets as the code wants to be simple. We will help programmers build up concepts in different
                    programming languages that include C, C++, Java, HTML, CSS, Bootstrap, JavaScript, PHP, Android, SQL
                    and Algorithm.</p>
            </div>

            <div class="col-xs-6 col-md-3">
                <h6>Categories</h6>
                <ul class="footer-links">
                    <li><a href="http://scanfcode.com/category/c-language/">C</a></li>
                    <li><a href="http://scanfcode.com/category/front-end-development/">UI Design</a></li>
                    <li><a href="http://scanfcode.com/category/back-end-development/">PHP</a></li>
                    <li><a href="http://scanfcode.com/category/java-programming-language/">Java</a></li>
                    <li><a href="http://scanfcode.com/category/android/">Android</a></li>
                    <li><a href="http://scanfcode.com/category/templates/">Templates</a></li>
                </ul>
            </div>

            <div class="col-xs-6 col-md-3">
                <h6>Quick Links</h6>
                <ul class="footer-links">
                    <li><a href="http://scanfcode.com/about/">About Us</a></li>
                    <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
                    <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
                    <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
                    <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
                </ul>
            </div>
        </div>
        <hr>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12">
                <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by
                    <a href="#">Scanfcode</a>.
                </p>
            </div>

            <div class="col-md-4 col-sm-6 col-xs-12">
                <ul class="social-icons">
                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                    <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="../js/scripts.js"></script>
</body>
</body>
</html>
