<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册页面</title>
<style type="text/css">
	body{
		margin: 0;
		padding: 0;	
		
		background-image: url(img/4.jpg);
		background-size: cover;
	}
	input{
		margin: 0;
		padding: 0;	
		display: inline-block;
		background: #fff;
	}
	.xiao-container{
		width: 100%;
	}
	.xiao-register-box{
		position: relative;
		height: 800px;
		width: 800px;
		top: 50px;
		margin: 0 auto;
		z-index: 99999;
		background:#ffffff;
		border: 7px solid #ccc;
		opacity: 0.7;
	}
	.xiao-title-box{
		position: absolute;
		width: 300px;
		height: 50px;
		margin-left: 250px;
		margin-top: 5px;
		text-align: center;
		font-size: 28px;
		font-weight: 800;
		color: #ff5000;
		line-height: 50px;
	}
	.xiao-username-box{
		position: absolute;
		width: 420px;
		height: 40px;
		line-height: 40px;
		margin-top:100px;
		margin-left:80px;
		font-weight: 700;
	}
	.xiao-username-input{
		display: inline-block;
		margin-left: 45px;
		/*background: green;*/
	}
	#username{
		height: 35px;
		width: 290px;
		border: 2px solid #ccc;
		border-radius: 5px;
	}
	.xiao-userPassword-box{
		position: absolute;
		width: 420px;
		height: 40px;
		line-height: 40px;
		margin-top:180px;
		margin-left:80px;
		font-weight: 700;
	}
	.xiao-userPassword-input{
		display: inline-block;
		margin-left: 61px;
	}
	#userPassword{
		height: 35px;
		width: 290px;
		border: 2px solid #ccc;
		border-radius: 5px;
	}
	.xiao-userRePassword-box{
		position: absolute;
		width: 420px;
		height: 40px;
		line-height: 40px;
		margin-top:260px;
		margin-left:80px;
		font-weight: 700;
	}
	.xiao-userRePassword-input{
		display: inline-block;
		margin-left: 28px;
	}
	#userRePassword{
		height: 35px;
		width: 290px;
		border: 2px solid #ccc;
		border-radius: 5px;
	}
	.xiao-userPhone-box{
		position: absolute;
		width: 420px;
		height: 40px;
		line-height: 40px;
		margin-top:340px;
		margin-left:80px;
		font-weight: 700;
	}
	.xiao-userPhone-input{
		display: inline-block;
		margin-left: 28px;
	}
	#userPhone{
		height: 35px;
		width: 290px;
		border: 2px solid #ccc;
		border-radius: 5px;
	}
	.xiao-userEmail-box{
		position: absolute;
		width: 420px;
		height: 40px;
		line-height: 40px;
		margin-top:420px;
		margin-left:80px;
		font-weight: 700;
	}
	.xiao-userEmail-input{
		display: inline-block;
		margin-left: 28px;
	}
	#userEmail{
		height: 35px;
		width: 290px;
		border: 2px solid #ccc;
		border-radius: 5px;
	}
 
	.xiao-userGender-box{
		position: absolute;
		width: 420px;
		height: 40px;
		line-height: 40px;
		margin-top:500px;
		margin-left:82px;
		font-weight: 700;
	}
	.xiao-userGender-input{
		display: inline-block;
		margin-left: 62px;
	}
	.xiao-require{
		color: red;
	}
	.xiao-submit-box{
		position:absolute;
		width: 80px;
		height: 40px;
		line-height: 40px;
		margin-top: 580px;
		margin-left:200px;
		border-radius: 5px;
		background: grey;
	}
	#xiao-submit-button{
		display: inline-block;
		width: 80px;
		height: 40px;
		border-radius: 5px;
		background: red;
	}
	.xiao-goLogin-box{
		position:absolute;
		width: 150px;
		height: 20px;
		margin-top: 600px;
		margin-left:320px;
 
	}
 
	</style>
</head>
<body>
	<div class="xiao-container">
		<div class="xiao-register-box">
			<div class="xiao-title-box">
				<span>用户注册</span>
			</div>
			<form action="${pageContext.servletContext.contextPath }/UpdateUserServlet?puserid=${userId}" method="post">
				
				<div class="xiao-userRePassword-box">
				<span class="xiao-require">*</span>
						<label for="userRePassword">Id</label>
					<div class="xiao-userRePassword-input">
						<input type="text" id="userid" name="userId" placeholder="${userId }"/>
					</div>
				</div>
				
				<div class="xiao-username-box">
					<span class="xiao-require">*</span>
					<label for="username">用户名</label>
					<div class="xiao-username-input">
						<input type="text" id="username" name="username" placeholder="${username }" />
					</div>
				</div>
 
				<div class="xiao-userPassword-box">
					<span class="xiao-require">*</span>
					<label for="userPassword">密码</label>
					<div class="xiao-userPassword-input">
						<input type="password" id="userPassword" name="userPassword" placeholder="${password }" />
					</div>
				</div>
 
				
 
				<div class="xiao-userPhone-box">
					<span class="xiao-require">*</span>
					<label for="userPhone">手机号码</label>
					<div class="xiao-userPhone-input">
						<input type="text" id="userPhone" name="userPhone" placeholder="${phone}" />
					</div>
				</div>
				
				<div class="xiao-userEmail-box">
					<span class="xiao-require">*</span>
					<label for="userEmail">电子邮箱</label>
					<div class="xiao-userEmail-input">
						<input type="text" id="userEmail" name="userEmail" placeholder="${ email}" />
					</div>
				</div>
				
				<div class="xiao-userGender-box">
					<span class="xiao-require">*</span>
					<label for="userGender">性别</label>
					<div class="xiao-userGender-input">
						<input type="radio" id="userGender_01" name="userGender" value="男"  checked="checked" placeholder="${gender }"/>男   
						<input type="radio" id="userGender_02" name="userGender" value="女" placeholder="${gender }" />女
					</div>
				</div>
				
				<div class="xiao-submit-box">
					<input id = "xiao-submit-button" type="submit" value="修改">
				</div>
				
			</form>
		</div>
	</div>
</body>
</html></html>