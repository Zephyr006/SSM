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
					还没有帐户？<a href="javascript:void(0)" onclick="switch_div(this)">点击注册</a>
				</p>
			</form>
		</div>
	<!--login-form-ends-here-->

	<!--register-form-stars-here-->
		<div id="register_div" class="form-w3-agile" style="padding-top: 1px;">
			<h1 class="sub-agileits-w3layouts" style="margin: 25px 0 10px 0">注册</h1>
			<form action="${path}/account/registerVerify" method="post" onsubmit="validate_reg(this)">
				<input type="text" name="userName" placeholder="用户名" style="margin-bottom: 5px" required=""/>
				<input type="text" name="password" placeholder="密码" style="margin-bottom: 5px" required=""/>
				<input type="text" name="rePassword" placeholder="确认密码" style="margin-bottom: 5px" required=""/>
				<input type="text" name="nickName" placeholder="昵称" style="margin-bottom: 5px;"/>
				<input type="text" name="birthday" placeholder="出生日期" style="margin-bottom: 5px"/>
				<span class="help-block">${info}</span>
				<div class="submit-w3l"><br>
					<input type="submit" value="注册">
				</div>
				<p class="txt-rt p-bottom-w3ls">
					已有帐户？<a href="javascript:void(0)" onclick="switch_div(this)">点击登录</a>
				</p>
			</form>
		</div>
	<!--register-form-ends-here-->
</div>

	<!--==== copyright ====-->
	<div class="copyright w3-agile"> <p> © 2018</p> </div>
</body>
<script type="text/javascript">
    $("#login_div").hide();
    $("#register_div").hide();
	var action = "${action}";
	// alert(action);
	if(action === "login"){
        $("#login_div").fadeIn(2000);
	} else{
        $("#register_div").fadeIn(2000);
	}

	var now = new Date().getTime();
	var opa = 0;
	while (new Date().getTime() - now > 3000){
        if ((new Date().getTime() - now) % 100 === 0 && opa<1){
            opa = opa + 0.1;
            document.getElementById("login_div").style.opacity = opa;
            // $("#login_div").attr("opacity", opa);

        }
	}



	function switch_div(ele) {
        $(ele).parent().parent().parent().hide();
        $(ele).parent().parent().parent().siblings().show(1200);
	}

	function validate_reg(ele) {
		// alert($(ele).children);
    }
</script>
</html>