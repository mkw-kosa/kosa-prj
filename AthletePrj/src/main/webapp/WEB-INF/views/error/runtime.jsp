<%@	page contentType="text/html;	charset=utf-8"	trimDirectiveWhitespaces="true"	isErrorPage="true"%>
<%@	taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@	taglib prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/common"/>
<%
response.setStatus(200);
%>
<!DOCTYPE html>	
<html>
<body>
<div class="container">
<div class="content">
   <div	class="jumbotron">
      <h2 style="color:red;">ERROR</h2>
      <p>${exception}
      <!--
         Failed	URL: ${url}
         Exception:	 ${exception.message}
 <c:forEach	items="${exception.stackTrace}"	var="ste">			${ste}	
         </c:forEach>
      -->
      </p>
   </div>
</div>
</div>
<a href="<c:url value='/ath/list'/>">List</a>
</body>
</html>