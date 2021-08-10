<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>선수 정보 삭제</h1>
${athlete.name}선수의 정보를 삭제합니다.<p>
삭제후 데이터는 복구될 수 없습니다.<p>
${athlete.name}사원의 생년월일을 입력하세요.
<form action="../delete" method="post">
생년월일 : <input type="date" name="birthDate">
<input type="number" name="athid" value="${athlete.id}">
<input type="submit" value="삭제">
</form>
</body>
</html>