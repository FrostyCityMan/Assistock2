<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2022-11-29
  Time: 오후 3:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="../assets/Favi.ico"/>
    <script src="../js/jquery-3.6.1.min.js"></script>
    <script src="../js/jquery.cookie.js"></script>
    <link rel="stylesheet" href="../css/loginForm.css">

    <meta charset="UTF-8">
    <title>loginForm</title>
</head>
<body>



<div class="wrapper">
    <div class="sign-panels">
        <div class="login">
            <div class="title">
                <span>Sign In</span>
                <p>Welcome back, please login to your account. You can login with facebook, Naver or by your regular
                    user login.</p>
            </div>

            <div>
                <a href="#" class="btn-face"><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</a>
                <a href="#" class="btn-twitter"><i class="fa fa-twitter" aria-hidden="true"></i> Naver</a>
            </div>

            <div class="or"><span>OR</span></div>

            <form action="">
                <input type="text" placeholder="Username">
                <input type="password" placeholder="Password">
                <input type="checkbox" id="remember">
                <label for="remember">Keep me sign in</label>
                <a href="#" class="btn-signin">Sign In</a>

                <a href="javascript:void(0)" class="btn-reset btn-fade">Recover your password <i
                        class="fa fa-long-arrow-right"
                        aria-hidden="true"></i></a>
                <a href="javascript:void(0)" class="btn-member btn-fade">Not a member yet? <i
                        class="fa fa-long-arrow-right"
                        aria-hidden="true"></i></a>
            </form>
        </div>

        <div class="signup">
            <div class="title">
                <span>Sign Up</span>
                <p>Create a new account. You can sign up with your facebook or Naver accunt. Or your regular user
                    login.</p>
            </div>

            <div>
                <a href="#" class="btn-face"><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</a>
                <a href="#" class="btn-twitter"><i class="fa fa-twitter" aria-hidden="true"></i> Naver</a>
            </div>

            <div class="or"><span>OR</span></div>

            <form action="">
                <input type="text" placeholder="Username">
                <input type="text" placeholder="Email Address">
                <input type="password" placeholder="Password">
                <input type="password" placeholder="Repeat Password">

                <a href="#" class="btn-signin">Sign Up</a>
                <a href="javascript:void(0)" class="btn-login btn-fade">Already have an account, Sign In <i
                        class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
            </form>
        </div>

        <div class="recover-password">
            <div class="title">
                <span>Recover Password</span>
                <p>Enter in the username or email associated with your account</p>
            </div>

            <form action="">
                <input type="email" placeholder="Username/Email Address" id="resetPassword" required>
                <span class="error"></span>
                <a href="javascript:void(0)" class="btn-signin btn-password">Submit Reset</a>
                <a href="javascript:void(0)" class="btn-login btn-fade"><i class="fa fa-long-arrow-left"
                                                                           aria-hidden="true"></i> Cancel
                    and go back to Login page </a>
            </form>

            <div class="notification">
                <p>Good job. An email containing information on how to reset your passworld was sent to
                    <span class="reset-mail"></span>. Please follow the instruction in that email to
                    reset your password. Thanks!</p>
            </div>

        </div>
    </div>
</div>

<script src="../js/loginForm.js"></script>


<!--
 * Created by Muhammed Erdem on 10.10.2017.
 *-->
</body>
</html>
