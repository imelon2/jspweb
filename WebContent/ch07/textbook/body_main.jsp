<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>
<div class="container">
include 전 name파라미터 값: <%=request.getParameter("name") %>
<hr>
<jsp:include page="body_sub.jsp">
<jsp:param value="최원혁" name="name"/>
</jsp:include>

<hr>

include 후 name 파라미터 값: <%= request.getParameter("name") %>
<br>

</div>


</body>
</html>