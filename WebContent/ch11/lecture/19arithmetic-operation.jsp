<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8"); %>

<% 
	pageContext.setAttribute("a", "50");
	pageContext.setAttribute("b", "150");
%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>
<div class="container">

</div>

${a mod b} 
</body>
</html>