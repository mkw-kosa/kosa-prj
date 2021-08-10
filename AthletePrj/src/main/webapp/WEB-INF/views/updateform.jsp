<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form action="./update" method="post">
<table>
<tr>
   <th>ID</th>
   <td><input type="number" name="id" value="${athlete.id }" readonly></td>
</tr>
<tr>
   <th>NAME</th>
   <td><input type="text" name="name" value="${athlete.name }" readonly></td>
</tr>   
<tr>
   <th>BIRTHDATE</th>
   <td><input type="date" name="birthDate" value="${athlete.birthDate }" readonly></td>   
</tr>
<tr>
   <th>AGE</th>
   <td><input type="number" name="age" value="${athlete.age }" readonly></td>   
</tr>
<!--  tr>
   <th>GENDER</th>
   <td><input type="text" name="gender"></td>   
</tr-->
<tr>
<th>GENDER</th>
<td>
	<select name="gender" disabled="disabled">
    	<option value="Female">여성</option>
    	<option value="Male">남성</option>
    </select>
</td>
</tr>
<tr>
   <th>SPORTS</th>
    <td>
    <select name="sports" disabled="disabled">
    <option value="fencing">펜싱</option>
    <option value="Volleyball">배구</option>
    <option value="Taekwondo">태권도</option>
    <option value="Artistic Gymnastics">체조</option>
    <option value="Judo">유도</option>
  </select>
  </td>
   <!--  td><input type="text" name="sports"></td-->   
</tr>
<tr> 
   <th>GOLD(solo)</th>
   <td><input type="number" name="goldSolo" value="${athlete.goldSolo }" ></td>   
</tr>
<tr>
   <th>SLIVER(solo)</th>
   <td><input type="number" name="silverSolo" value="${athlete.silverSolo }" ></td>   
</tr>
<tr>
   <th>BRONZE(solo)</th>
   <td><input type="number" name="bronzeSolo" value="${athlete.bronzeSolo }" ></td>   
</tr>
<tr>
   <th>GOLD(team)</th>
   <td><input type="number" name="goldTeam" value="${athlete.goldTeam }" ></td>   
</tr>
<tr>
   <th>SILVER(team)</th>
   <td><input type="number" name="silverTeam" value="${athlete.silverTeam }" ></td>   
</tr>
<tr>
   <th>BRONZE(team)</th>
   <td><input type="number" name="bronzeTeam" value="${athlete.bronzeTeam }" ></td>   
</tr>
<tr>
<td>
<input type="submit" value="수정">
<input type="reset" value="취소">
</td>
</tr>
</table>
</form>
</body>
</html>