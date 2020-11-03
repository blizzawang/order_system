<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="fixed">
<head>

    <!-- Basic -->
    <meta charset="UTF-8">

    <meta name="keywords" content="HTML5 Admin Template" />
    <meta name="description" content="Porto Admin - Responsive HTML5 Template">
    <meta name="author" content="okler.net">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/" />

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="assets/stylesheets/theme.css" />

    <!-- Skin CSS -->
    <link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

    <!-- Head Libs -->
    <script src="assets/vendor/modernizr/modernizr.js"></script>
</head>
<body>
<!-- start: page -->
<section class="body-sign">
    <div class="center-sign">
        <a href="/" class="logo pull-left">
            <img src="assets/images/logo.png" height="54" alt="Porto Admin" />
        </a>

        <div class="panel panel-sign">
            <div class="panel-title-sign mt-xl text-right">
                <h2 class="title text-uppercase text-bold m-none"><i class="fa fa-user mr-xs"></i> 注册</h2>
            </div>
            <div class="panel-body">
                <form action="admin/do/register" method="post">
                    <div class="form-group mb-lg">
                        <label>用户名</label>
                        <input name="username" type="text" class="form-control input-lg" />
                    </div>

                    <div class="form-group mb-lg">
                        <label>邮箱地址</label>
                        <input name="email" type="email" class="form-control input-lg" />
                    </div>

                    <div class="form-group mb-none">
                        <div class="row">
                            <div class="col-sm-6 mb-lg">
                                <label>密码</label>
                                <input name="password" type="password" class="form-control input-lg" />
                            </div>
                            <div class="col-sm-6 mb-lg">
                                <label>确认密码</label>
                                <input name="pwd_confirm" type="password" class="form-control input-lg" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8">
                            <label style="color: red;">${requestScope.exception.message}</label>
                            <div class="checkbox-custom checkbox-default">
                                <input id="AgreeTerms" name="agreeterms" type="checkbox"/>
                                <label for="AgreeTerms">我同意 <a href="#">使用准则</a></label>
                            </div>
                        </div>
                        <div class="col-sm-4 text-right">
                            <button id="btn_register" type="submit" class="btn btn-primary hidden-xs">注册</button>
                            <button type="submit" class="btn btn-primary btn-block btn-lg visible-xs mt-lg">注册</button>
                        </div>
                    </div>

                    <span class="mt-lg mb-lg line-thru text-center text-uppercase">
								<span>or</span>
							</span>

                   <%-- <div class="mb-xs text-center">
                        <a class="btn btn-facebook mb-md ml-xs mr-xs">Connect with <i class="fa fa-facebook"></i></a>
                        <a class="btn btn-twitter mb-md ml-xs mr-xs">Connect with <i class="fa fa-twitter"></i></a>
                    </div>--%>

                    <p class="text-center">已经拥有账户? <a href="admin/to/login/page">登录!</a>

                </form>
            </div>
        </div>

        <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2018. All rights reserved. </p>
    </div>
</section>
<!-- end: page -->

<!-- Vendor -->
<script src="assets/vendor/jquery/jquery.js"></script>
<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="assets/javascripts/theme.js"></script>

<!-- Theme Custom -->
<script src="assets/javascripts/theme.custom.js"></script>

<!-- Theme Initialization Files -->
<script src="assets/javascripts/theme.init.js"></script>
</body>
</html>
