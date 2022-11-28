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

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Assistock</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../assets/Favi.ico"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet"/>
    <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
    <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>

    <title>index</title>
</head>
<body>

<%----%>

<%----%>
<!-- Responsive navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-assistock" style="font: 20px Montserrat, sans-serif;">
    <div class="container">
        <img src="../images/Favi.png" style="width: 30px; padding-right: 5px; margin-right: 5px;">
        <a class="navbar-brand" href="http://localhost:9095/">Assistock</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="http://localhost:9095/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="http://localhost:9095/pricing">Pricing</a></li>
                <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="http://localhost:9095/login">Login</a>
            </ul>
        </div>
    </div>
</nav>
