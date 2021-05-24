<%@tag import="java.util.Calendar"%>
<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Calendar cal = Calendar.getInstance();
	%>
	<%=cal.get(Calendar.YEAR) %>³â
	<%=cal.get(Calendar.MONTH) +1%>¿ù
	<%=cal.get(Calendar.DATE) %>ÀÏ