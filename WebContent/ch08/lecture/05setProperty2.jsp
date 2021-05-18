<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8"); %>

<%--
Book book = new Book();

String title = request.getParameter("title");
String name = request.getParameter("name");

book.setTitle(title);
book.setWriter(name);

pageContext.setAttribute("book", book);
--%>
<jsp:useBean id="book" class="ch08.Book" scope="page">
<jsp:setProperty name="book" property="title"  param="title"/>
<jsp:setProperty name="book" property="writer" param="name"/>
<jsp:setProperty name="book" property="price" param="price"/>

</jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>
<div class="container">
제목 : <jsp:getProperty name="book" property="title" /> <br>
저자 : <jsp:getProperty name="book" property="writer"/> <br>
가격 : <jsp:getProperty name="book" property="price" />
</div>


</body>
</html>