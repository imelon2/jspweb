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

<%String[] str = {"jav","jsp","spring"};
request.setAttribute("list",str);
%>
<jsp:forward page="11forward-attribute-b">
</div>


</body>
</html>