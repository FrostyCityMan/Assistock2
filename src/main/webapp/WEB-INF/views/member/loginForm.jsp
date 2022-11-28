<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="auth.jsp" %>
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

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <style>

            html,
            body {
                height: 100%;
            }

            body {
                display: flex;
                align-items: center;
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #f5f5f5;
            }

            .form-signin {
                width: 100%;
                max-width: 330px;
                padding: 15px;
                margin: auto;
            }

            .form-signin .checkbox {
                font-weight: 400;
            }

            .form-signin .form-floating:focus-within {
                z-index: 2;
            }

            .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }

            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }

        </style>
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>

</head>


<body class="text-center">
<%
    if (s_id.equals("guest") || s_passwd.equals("guest") || s_mlevel.equals("guest")) {
        //아이디 저장 쿠키 확인 ----------------------------------------------------------
        Cookie[] cookies = request.getCookies();   //사용자PC에 저장된 모든 쿠키값 가져오기
        String c_id = "";
        if (cookies != null) {                  //쿠키가 존재하는지?
            for (int i = 0; i < cookies.length; i++) {   //모든 쿠키값을 검색
                Cookie cookie = cookies[i];         //쿠키 하나씩 가져오기
                if (cookie.getName().equals("c_id") == true) {    //쿠키이름(변수명)이 c_id인가요?
                    c_id = cookie.getValue();               //찾은 c_id의 값 가져오기
                }//if end
            }//for end
        }//if end
        //--------------------------------------------------------------------------
%>
<main class="form-signin">
    <form action="login.jsp" method="post">
        <img class="mb-4" src="${pageContext.request.contextPath}/images/bootstrap-logo.svg" alt="" width="72"
             height="57">
        <h1 class="h3 mb-3 fw-normal">로그인 페이지</h1>

        <div class="form-floating">
            <input type="text" class="form-control" id="id" placeholder="아이디 입력...">
            <label for="id">아이디</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="pwd" placeholder="Password">
            <label for="pwd">비밀번호</label>
        </div>

        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> 아이디 저장
            </label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
    </form>
</main>
</body>

<%
    } else {
        //로그인 성공했다면
        out.println("<strong>" + s_id + "</strong> 님");
        out.println("<a class='btn btn-default' href='logout.jsp'>로그아웃</a>");
        out.println("<br><br>");
        out.println("<a class='btn btn-default' href='memberModify.jsp'>회원정보수정</a>");
        out.println("&nbsp;&nbsp;");
        out.println("<a class='btn btn-default' href='memberWithdraw.jsp'>회원탈퇴</a>");
    }//if end
%>
<!-- 본문 끝 -->
</html>
