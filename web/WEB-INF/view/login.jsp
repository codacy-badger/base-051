<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by GuysFromLab.
  User: artemsierikov
  Date: 2019-01-19
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Base-051 | Login</title>
    <link rel="stylesheet" href="<c:url value="/res/vendor/css/bootstrap.min.css"/> "/>
    <link rel="stylesheet" href="<c:url value="/res/css/global.css"/> "/>
    <link rel="stylesheet" href="<c:url value="/res/css/login.css"/> "/>
    <link rel="stylesheet" href="<c:url value="/res/css/responsive.css"/> "/>
</head>
<body class="bg-white">
    <div class="container-fluid no-padding h-100">
        <div class="container-fluid no-padding h-100">
            <div class="row flex-row h-100 bg-white">
                <!-- Left Container ---------->
                <div class="col-xl-8 col-lg-6 col-md-5 no-padding">
                    <div class="base51-bg login background-01">
                        <div class="authentication-col-content mx-auto">
                        </div>
                    </div>
                </div>
                <!-- End of Left container --->
                <!-- Begin Right Content -->
                <div class="col-xl-4 col-lg-6 col-md-7 my-auto no-padding">
                    <!-- Begin Form -->
                    <div class="authentication-form mx-auto">
                        <div class="logo-centered">
                            <a href="">
                                <img src="<c:url value="/res/img/logo/logo_black.png" />" alt="logo"/>
                            </a>
                        </div>
                        <h3>Welcome to Base-051.</h3>
                        <form>
                            <div class="group material-input">
                                <input type="text" required>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Email</label>
                            </div>
                            <div class="group material-input">
                                <input type="password" required>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Password</label>
                            </div>
                        </form>
                        <div class="row">
                            <div class="col text-left">
                                <div class="styled-checkbox">
                                    <input type="checkbox" name="checkbox" id="remeber">
                                    <label for="remeber">Remember me</label>
                                </div>
                            </div>
                            <div class="col text-right">
                                <a href="pages-forgot-password.html">Forgot Password ?</a>
                            </div>
                        </div>
                        <div class="sign-btn text-center">
                            <a href="db-default.html" class="btn btn-lg btn-gradient-01">
                                Sign in
                            </a>
                        </div>
                    </div>
                    <!-- End Form -->
                </div>
                <!-- End Right Content -->
            </div>
        </div>
    </div>

</body>
</html>
