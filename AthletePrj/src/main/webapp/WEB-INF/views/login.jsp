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
				<h2>로그인<small style="color: red">
				<fmt:message key="${not empty message ? message : 'BLANK'}"/></small></h2>
			</div>
		</div>
	</div>
	<div class="content">
	<c:if test="${empty sessionScope.name}">
		<form action="<c:url value='/login'/>" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">관리자 아이디</label>
				<div class="col-sm-8">
					<input type="text" name="name" id="name" class="form-control"
					placeholder="관리자 아이디" aria-describedby="basic-addon1">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="password">관리자 비밀번호</label>
				<div class="col-sm-8">
					<input type="password" name="password" id="password" class="form-control"
					placeholder="관리자 비밀번호" aria-describedby="basic-addon1">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2">
					<input type="submit" class="btn btn-info" value="로그인">
					<input type="reset" class="btn btn-info" value="취소">
				</div>
			</div>			
		</form>
	</c:if>
	<!-- 로그아웃 -->
	<c:if test="${not empty sessionScope.name}">
		<h4>${name}</h4>
		<a href="<c:url value='/logout'/>">[로그아웃]</a>
		<a href="<c:url value='/ath/list'/>">[리스트]</a>
	</c:if>
	</div>
</div>
</body>
</html>