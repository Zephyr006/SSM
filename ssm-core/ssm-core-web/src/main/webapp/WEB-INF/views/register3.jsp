<%--
  Created by User: Zephyr.
  Date: 2018/1/1  Time: 17:25:48  
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<c:set var="ctx" value="${pageContext.request.contextPath}"/>--%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/WEB-INF/views/layout/include-header.jsp" %>
    <title>注册</title>
    <!-- 必要样式 -->
    <link href="${ctx}/assets/css/component.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/assets/css/register.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        span .help-block{
            text-align:right;color:red;margin-bottom:10px;font-size:12px;
        }
    </style>
</head>
<body style="margin:0px 0px 0px 0px;" class="login_body">
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">


            <div class="jump_div">
                <a href="/account/login" style="margin:0px;padding:0px;font-size: 16px;">登录</a>
            </div>
            <!-- register begin -->
            <div id="div_form" class="register_body">
                <div class="col-xs-12 register_title">注册</div>
                <form action="${ctx}/account/registerVerify" class="register" method="post" onsubmit="return validateForm()">
                    <div class="nav">
                        <div class="nav register_nav">
                            <div class="col-xs-3">
                                用户名:
                            </div>
                            <div class="col-xs-7">
                                <input type="text" name="userName" required="required" id="name_r" placeholder="&nbsp;请输入用户名"/>
                            </div>
                        </div>
                        <span id="info_userName" class="help-block col-xs-10">${info_userName}</span>
                        <div class="nav register_psdnav">
                            <div class="col-xs-3">
                                密&nbsp;&nbsp;&nbsp;码:
                            </div>
                            <div class="col-xs-7">
                                <input type="password" name="password" required="required" id="psd_r" placeholder="&nbsp;请输入密码"/>
                            </div>
                        </div>
                        <span id="info_password" class="help-block col-xs-10" value></span>
                        <div class="nav register_affirm">
                            <div class="col-xs-3">
                                确认密码:
                            </div>
                            <div class="col-xs-7">
                                <input type="password" name="rePassword" id="affirm_psd" placeholder="&nbsp;请再输入一次" />
                            </div>
                        </div>
                        <span id="info_repsd" class="help-block col-xs-10"></span>
                        <div class="nav register_psdnav">
                            <div class="col-xs-3">
                                真实姓名:
                            </div>
                            <div class="col-xs-7">
                                <input type="text" name="realName" placeholder="&nbsp;请输入真实姓名" onpaste="return false"
                                       oncontextmenu="return false;" onkeyup="this.value=this.value.replace(/[^\u4E00-\u9FA5]/g,'')"/>
                            </div>
                        </div>
                        <span id="info_realName" class="help-block col-xs-10"></span>
                        <div class="nav register_psdnav">
                            <div class="col-xs-3">
                                手机号:
                            </div>
                            <div class="col-xs-7">
                                <input type="text" name="phone" value="" style="" placeholder="&nbsp;请输入联系方式" />
                            </div>
                        </div>
                        <span id="info_phone" class="help-block col-xs-10"></span>
                        <span class="help-block col-xs-10" style="font-size: larger">${info}</span>
                        <div class="col-xs-11 register_btn_div">
                            <input type="submit" id="register" class="sub_btn" />
                        </div>
                    </div>
                </form>
                <div class="col-xs-10 barter_register">
                    <h4>已有账号?<a href="/account/login"  class="barter_registerBtn"> 去登录</a></h4>
                    <%--<button class="barter_registerBtn" onClick="barter_btn(this)" style=""></button>--%>
                </div>
            </div>


            <canvas id="demo-canvas"/>
        </div>
    </div>
</div>
<!-- /container -->
<%@ include file="/WEB-INF/views/layout/include-footer.jsp" %>
<script type="text/javascript" src="${ctx}/assets/js/login/TweenLite.min.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/login/EasePack.min.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/login/rAF.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/login/demo-1.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/register.js"></script>

<script type="text/javascript">
    /* 验证表单数据合法性，相关函数在“register.js”文件中 */
    function validateForm(){
        return validateUserName() && validatePassword() && validateRePwd() && validateRealName() && validatePhone();
    }
</script>
</body>
</html>
