<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/athlete"/>
<!DOCTYPE html>
<html>
<body>
<div class="container">
	<div class=" pg-opt">
		<div class="row">
			<div class="col-md-6 pc">
				<c:if test="${empty name}">
					<small style="color: red">로그인을 하시면 수정기능을 사용할 수 있습니다. </small>
				</c:if>
			</div>
		</div>
	<div class="content">
		<form action='<c:url value="/search"/>' method="get">
			<div class="pull-right" style="margin-bottom: 5px">
			<div class="col-xs-9">
				<input type="text" name="sports" class="form-control" placeholder="종목명">
			</div>
				<input type="submit" class="btn btn-warning" value='찾기'>
			</div>
		</form>
		<table border=1 class="table table-hover table-bordered">
		<thead>
		<tr>
			<th>id</th>
			<th>name</th>
			<th>birth_date</th>
			<th>age</th>
			<th>gender</th>
			<th>sports</th>
			<th>gold_solo</th>
			<th>silver_solo</th>
			<th>bronze_solo</th>
			<th>gold_team</th>
			<th>silver_team</th>
			<th>bronze_team</th>
			<th>prize</th>
		</tr>	
		</thead>
		<tbody>
		<c:forEach var="sports" items="${sportsList}">
			<tr>
				<td><a href="<c:url value='/ath/${sports.id}'/>">${sports.id}</a></td>
				<td>${sports.name}</td>
				<td>${sports.birthDate}</td>
				<td>${sports.age}</td>
				<td>${sports.gender}</td>
				<td>${sports.sports}</td>
				<td>${sports.goldSolo}</td>
				<td>${sports.silverSolo}</td>
				<td>${sports.bronzeSolo}</td>
				<td>${sports.goldTeam}</td>
				<td>${sports.silverTeam}</td>
				<td>${sports.bronzeTeam}</td>
				<td>\ ${sports.prize}</td>
			</tr>
		</c:forEach>	
		</tbody>
		</table>
		</div>
	</div>
</div>
</body>
</html>