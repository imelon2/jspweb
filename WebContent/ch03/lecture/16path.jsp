<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--90페이지까지함--%>
상대적 경로

<h5>같은 경로</h5>
<a href="15form-method.jsp">15파일</a>
<h5>상위 경로</h5>
<a href="../17path.jsp">17파일</a>

<h5>하위 경로</h5>
<a href="sub/18path.jsp">18파일</a>

<h5>viewHEader.jsp</h5> <%--한칸 올라갔다가 다시 내려가야함 --%>
<a href="../textbook/viewHeaderList.jsp">viewHeader.jsp</a>
</body>
</html>