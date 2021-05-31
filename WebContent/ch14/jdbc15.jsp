<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>Add Customer </h1>
	
	<form action="${pageContext.request.contextPath }/JDBC15InsertServlet" method="post">
		Employee firstName : <input type="text" name="firstname"> <br>
		Employee lastName : <input type="text" name="lastname"> <br>
		Employee notes : <textarea rows="3" name="notes"> </textarea>
		<br>
		<input type="submit">
	</form>
</div>
</body>
</html>



