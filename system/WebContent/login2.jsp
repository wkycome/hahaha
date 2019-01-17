<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录页面</title>
<script src="http://www.jq22.com/jquery/jquery-3.3.1.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#wrap {
	height: 719px;
	width: 100;
	background-image: url(img/4.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	position: relative;
}

#head {
	height: 120px;
	width: 100;
	background-color: #66CCCC;
	text-align: center;
	position: relative;
}

#foot {
	width: 100;
	height: 126px;
	background-color: #CC9933;
	position: relative;
}

#wrap .logGet {
	height: 408px;
	width: 368px;
	position: absolute;
	background-color: #FFFFFF;
	top: 20%;
	right: 15%;
}

.logC a button {
	width: 100%;
	height: 30px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
}

.logC input {
	width: 100%;
	height: 30px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
}

.logD a {
	font-size: 28px;
}

.logGet .logD.logDtip .p1 {
	display: inline-block;
	font-size: 28px;
	margin-top: 30px;
	width: 80%;
}

#wrap .logGet .logD.logDtip {
	width: 86%;
	border-bottom: 1px solid #ee7700;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}

.logGet .lgD img {
	position: absolute;
	top: 12px;
	left: 8px;
}

.logGet .lgD input {
	width: 100%;
	height: 30px;
	text-indent: 2.5rem;
}

#wrap .logGet .lgD {
	width: 86%;
	position: relative;
	margin-bottom: 30px;
	margin-top: 20px;
	margin-right: auto;
	margin-left: auto;
}

#wrap .logGet .logC {
	width: 86%;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}

.title {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	/* 使用css3的transform来实现 */
	font-size: 36px;
	height: 40px;
	width: 30%;
}

.copyright {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	/* 使用css3的transform来实现 */
	height: 60px;
	width: 40%;
	text-align: center;
}

#foot .copyright .img {
	width: 100%;
	height: 24px;
	position: relative;
}

.copyright .img .icon {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(img/1.png);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}

.copyright .img .icon1 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(img/2.png);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}

.copyright .img .icon2 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(img/3.png);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}

#foot .copyright p {
	height: 24px;
	width: 100%;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="header" id="head">
		<div class="title">员工管理系统</div>

	</div>

	<div class="wrap" id="wrap">


		<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">登录</p>
				<a href="${pageContext.request.contextPath }/register.jsp">注册</a>
			</div>

			<form action="${pageContext.servletContext.contextPath }/UserList"
				method="post">
				<input type="hidden" name="type" value="login">
				<!-- 输入框 -->
				<div class="lgD">
					<img src="img/logName.png" width="20" height="20" alt="" /> <input
						type="text" placeholder="输入用户名" name="username" />
				</div>
				<div class="lgD">
					<img src="img/logPwd.png" width="20" height="20" alt="" /> <input
						type="password" placeholder="输入用户密码" name="password" />
				</div>
				
				<div>
				<br> <input type="checkbox" checked="checked">记住用户名 <br>
				</div>
				
				${requestScope.error_msg }

				<div class="logC">
					<a>
						<button>登 录</button>
					</a>

				</div>
				<br>
				<div class="logC">

					<input type="reset" value="重置" />
				</div>

			</form>

		</div>


	</div>

	<div class="footer" id="foot">
		<div class="copyright">
			<p>Copyright © 2018 Qunar.com Inc. All Rights Reserved.</p>
			<div class="img">
				<i class="icon"></i><span>联系邮箱：jiankangsun@yahoo.com</span>
			</div>

			<div class="img">
				<i class="icon1"></i><span>联系地址：合肥工业大学</span>
			</div>

			<div class="img">
				<i class="icon2"></i><span>联系电话：18355042634</span>
			</div>

		</div>

	</div>
</body>
</html>