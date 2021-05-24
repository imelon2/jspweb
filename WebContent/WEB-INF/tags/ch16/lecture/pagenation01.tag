<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="pageAttr1" %>
<div>
	starPAge : ${starPage } <br>
	endPage : ${endPage } <br>
	pageAttr1 : ${pageAttr1 }
</div>
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <c:forEach begin="${starPage }" end="${endPage}" var="i"> 
    <li class="page-item"><a class="page-link" href="#">${i }</a></li>
    </c:forEach>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>