<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script language="javascript" type="text/javascript">
    function logout(){
    	var sure = confirm("您确定要退出控制面板吗？");
        if (sure){
        	
        }
        else{
        	 return false;
        }
       
        
    }
</script>
</head>
<body>

	<h1>最牛逼员工管理系统</h1>

	<hr width="80%">
	
	<c:if test="${sessionScope.user == null }">
		<a href="${pageContext.request.contextPath }/register.jsp">注册</a>
		<a href="${pageContext.request.contextPath }/login.jsp">登录</a>
	</c:if>
	
	<c:if test="${sessionScope.user != null }">
		<a href="${pageContext.request.contextPath }/UserListServlet">员工列表</a>
		<a href="${pageContext.request.contextPath }/ExitServlet" onclick="logout()">安全退出</a>
		
		<div>上次登录时间:${requestScope.lastTime }</div>
	</c:if>
	
	
	

</body>
</html>