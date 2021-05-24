<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="start" %>
<%@ attribute name="end" %>
<div>
	pageAttr1 : ${start }
	<br>
	pageAttr1 : ${end }
</div>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <c:forEach begin="${start }" end="${end }" var="i"> 
    <li class="page-item"><a class="page-link" href="#">${i }</a></li>
    </c:forEach>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>