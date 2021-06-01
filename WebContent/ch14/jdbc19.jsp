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
<form action="" method="post">
		id : <input type="text" name="id"value="${emp.id }" readonly> <br>
		LastName : <input type="text" name="lastName" value="${emp.lastName }" > <br>
		FirstName : <input type="text" name="firstName" value="${emp.firstName }" > <br>
		Notes : <textarea name="notes" rows="5" > <c:out value="${emp.notes }"/> </textarea>
		<br>
		<input type="submit" value="삭제">
	
	</form>
</div>
</body>
</html>






