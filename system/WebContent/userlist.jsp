<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />

</head>
<body>
	<form action="searchservlet" >
	
		性别：<input type="text" name="gender" />  姓名：<input type="text" name  = "name"/>
			<input type="submit" value="查询">
	
	</form>
	<table class="table table-bordered table-hover" border="1" width="700" cellspacing="0" >
		
		<thead>
			<tr>
				<th>id</th>
				<th>姓名</th>
				<th>密码</th>
				<th>性别</th>
				<th>电话</th>
				<th>邮箱</th>
				<th colspan="2">操作</th>
			</tr>
		</thead>
	
		<c:forEach items="${requestScope.list }" var="e">
			<tr>
				<td id='userid${e.userId }'>${e.userId }</td>
				<td>${e.username }</td>
				<td>${e.passworld }</td>
				<td>${e.u_gender }</td>
				<td>${e.phone }</td>
				<td>${e.e_mail }</td>
				<td><a href="${pageContext.request.contextPath}/DeleteUserServlet?userId=${e.userId}" >删除</a></td>
				<td><a href="${pageContext.request.contextPath}/Updatezhan?userId=${e.userId}&username=${e.username }&password=${e.passworld }&gender=${e.u_gender }&phone=${e.phone }&email=${e.e_mail }">修改</a></td>
			</tr>
		</c:forEach>
	
	</table>

</body>
</html>