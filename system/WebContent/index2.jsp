<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<style> 
		
			body {
				font-size: 12px;
			}
			
			#header {
				position: fixed;
				width: 100%;
				height: 100px;
				top: 0px;
				left: 0px;
				background-color: #436EEE;
			}
			#header .logo {
				position: absolute;
				top: 25px;
				left: 80px;
				border-radius: 5px;
				background-color: #FFFFFF;
				box-shadow: 0px 0px 10px 5px #FFFFFF;
			}
			#sideBar {
				position: fixed;
				width: 200px;
				top: 100px;
				left: 0px;
				bottom: 10px;
				background-color: #6495ED;
			}
			
			#sideBar #nav {
				width: 190px;
				margin: 2px auto 0px;
				background-color: #FFFFFF;
				border-radius: 5px;
			}
			
			#sideBar #nav li a {
				text-align: center;
			}
			#main {
				position: fixed;
				top: 100px;
				right: 0px;
				bottom: 10px;
				left: 200px;
			}
			
			#footer {
				position: fixed;
				width: 100%;
				height: 10px;
				left: 0px;
				bottom: 0px;
				background-color: #436EEE;
			}
			#header .userInfo {
				position: absolute;
				width: 200px;
				text-align: right;
				right: 150px;
				bottom: 5px;
				color: #FFFFFF;
			}
			#header .userInfo2 {
				position: absolute;
				width: 200px;
				text-align: right;
				right: 20px;
				bottom: 5px;
				color: #FFFFFF;
			}
		</style>
		
		
		
	</head>
	<body>
		<div id="header">
			<img src="img/logo.png" width="50" height="50" class="logo" />
			<span class="logout glyphicon glyphicon-log-out"></span>
			<span class="userInfo">欢迎您:${sessionScope.user.username }</span>
			<span class="userInfo2"><a href="${pageContext.request.contextPath }/ExitServlet" style="color: red">安全退出</a></span>
			<h1 style=" position: absolute;left:0px; top:30px;width: 100%; height: 50%; font-size: 30px; color: black;text-align: center;">员工管理系统</h1>
		</div>
		<div id="sideBar">
			<ul id="nav" class="nav nav-pills nav-stacked">
				<li id="1" class="active"><a href="javascript:openOrCloseMenu('1')">员工管理</a></li>
				<li parentId="1"><a href="${pageContext.request.contextPath }/UserListServlet" target="mainFrame">用户列表</a></li>
				<li parentId="1"><a href="system/role/rolelist.html" target="mainFrame">角色管理</a></li>
				<li parentId="1"><a href="#">权限管理</a></li>
				<li id="2" class="active"><a href="javascript:openOrCloseMenu('2')">数据管理</a></li>
				<li parentId="2"><a href="system/datamanager/datainlist.html" target="mainFrame">数据录入</a></li>
				<li parentId="2"><a href="testcharts.html" target="mainFrame">数据统计</a></li>
			</ul>
		</div>
		<div id="main">
			<iframe id="mainFrame" name="mainFrame" src="welcome.html" width="100%" height="100%" frameborder="0"></iframe>
		</div>
		<div id="footer"></div>
	</body>
	
	<script type="text/javascript">
		
		
		/**
		 * 展开或关闭菜单
		 * @param {Object} currNodeId
		 */
		function openOrCloseMenu(currNodeId) {
			//获得所有子节点
			var subNodes = $("#sideBar ul li[parentId=" + currNodeId + "]");
			//显示或隐藏子节点
			if (subNodes.css("display") == "none") { //关闭状态
				//展开菜单（显示子节点）
				subNodes.css("display", "block");
			} else { //展开状态
				//关闭菜单（隐藏子节点）
				subNodes.css("display", "none");
			}
		}
		</script>
</html>