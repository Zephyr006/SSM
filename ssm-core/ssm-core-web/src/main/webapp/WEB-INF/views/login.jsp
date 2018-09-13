<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign In</title>
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <!-- Custom Theme files -->
    <%@ include file="/WEB-INF/views/layout/include-header.jsp" %>
    <link href="${path}/assets/css/snow.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${path}/assets/css/login_or_register.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
</head>
<body>
<div class="snow-container">
    <div class="snow foreground"></div>
    <div class="snow foreground layered"></div>
    <div class="snow middleground"></div>
    <div class="snow middleground layered"></div>
    <div class="snow background"></div>
    <div class="snow background layered"></div>
</div>

<div class="top-buttons-agileinfo">
    <a href="/account/login">Sign In</a>
    <a href="/account/register" class="active">Sign Up</a>
</div>
<h1>Welcome</h1>
<div class="main-agileits">
    <!--login-form-stars-here-->
    <div id="login_div" class="form-w3-agile" style="">
        <h1 class="sub-agileits-w3layouts">登录</h1>
        <form action="${path}/account/loginVerify" method="post">
            <input type="text" name="userName" placeholder="用户名" required="" />
            <input type="password" name="password" placeholder="密码" required="" />
            <a href="#" class="forgot-w3layouts hidden">忘记密码 ?</a>
            <span class="help-block col-xs-10" style="font-size: larger">${info}</span>
            <div class="submit-w3l"><br>
                <input type="submit" value="登录">
            </div>
            <p class="txt-rt p-bottom-w3ls">
                还没有帐户？<a href="/account/register">点击注册</a>
            </p>
        </form>
    </div>
    <!--login-form-ends-here-->

</div>

<!--==== copyright ====-->
<div class="copyright w3-agile"> <p> © 2018</p> </div>
</body>
<script type="text/javascript">
    $("#login_div").fadeOut(1).fadeIn(3000);

    function validate_reg(ele) {
        // alert($(ele).children);
    }
</script>
</html>


<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
&lt;%&ndash;<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>&ndash;%&gt;
&lt;%&ndash;<c:set var="ctx" value="${pageContext.request.contextPath}"/>&ndash;%&gt;
<html lang="cn" class="no-js">
<head>
    &lt;%&ndash;<meta charset="UTF-8" />&ndash;%&gt;
    &lt;%&ndash;<meta http-equiv="X-UA-Compatible" content="IE=edge">&ndash;%&gt;
    &lt;%&ndash;<meta name="viewport" content="width=device-width, initial-scale=1">&ndash;%&gt;
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/assets/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/assets/css/login.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/assets/css/component.css" />
    <style type="text/css">

    </style>
<script type="text/javascript">
    window.onload = function(){
        var h = document.getElementById("jump").scrollHeight -1;
        document.getElementById("demo-canvas").style.marginTop = "-" + h;
    }
</script>
</head>
<body>
    <div class="container demo-1 login">
        <div class="content">
            <div id="large-header" class="large-header">
                <div id="jump" class="jump_div">
                    <a href="/account/register" style="color: #551a8b">注册</a>
                </div>
                <canvas id="demo-canvas"></canvas>
                <div class="logo_box">
                    <h3>欢迎你</h3>
                    <form action="${ctx}/account/loginVerify" name="f" method="post">
                        <div class="input_outer">
                            <span class="u_user"></span>
                            <input name="userName" class="text" style="color: #FFFFFF !important" placeholder="请输入账号">
                        </div>
                        &lt;%&ndash;<span class="help-block">${info_userName}</span>&ndash;%&gt;
                        <div class="input_outer">
                            <span class="us_uer"></span>
                            <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" type="password" placeholder="请输入密码">
                        </div>
                        <span class="help-block">${info}</span>
                        <div class="mb2">
                            <button class="act-but submit" style="color: #FFFFFF; width: 100%;">Go</button>
                        </div>
                        <div style="text-align: right; ">还没有账号？
                            <a href="/account/register" style="color: #0096e6">去注册</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div><!-- /container -->
    <script src="${ctx}/assets/js/login/TweenLite.min.js"></script>
    <script src="${ctx}/assets/js/login/EasePack.min.js"></script>
    <script src="${ctx}/assets/js/login/rAF.js"></script>
    <script src="${ctx}/assets/js/login/demo-1.js"></script>
</body>
</html>--%>
