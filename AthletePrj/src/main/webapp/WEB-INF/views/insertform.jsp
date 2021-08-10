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
	<form action="./insert" method="post">
		<table>
			<tr>
				<th>ID</th>
				<td><input type="number" name="id"></td>
			</tr>
			<tr>
				<th>NAME</th>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<th>BIRTHDATE</th>
				<td><input type="date" name="birthDate"></td>
			</tr>
			<tr>
				<th>AGE</th>
				<td><input type="number" name="age"></td>
			</tr>
			<!--  tr>
   <th>GENDER</th>
   <td><input type="text" name="gender"></td>   
</tr-->
			<tr>
				<th>GENDER</th>
				<td>
				<select name="gender" >
    			<option value="Female">여성</option>
    			<option value="Male">남성</option>
   				</select>
				</td>
			</tr>
			<tr>
				<th>SPORTS</th>
				<td><select name="sports">
						<option value="fencing">펜싱</option>
						<option value="Volleyball">배구</option>
						<option value="Taekwondo">태권도</option>
						<option value="Artistic Gymnastics">체조</option>
						<option value="Judo">유도</option>
						<option value="Archery">양궁</option>
				</select></td>
				<!--  td><input type="text" name="sports"></td-->
			</tr>
			<tr>
				<th>GOLDSOLO</th>
				<td><input type="number" name="goldSolo" value="0"></td>
			</tr>
			<tr>
				<th>SLIVERSOLR</th>
				<td><input type="number" name="silverSolo" value="0"></td>
			</tr>
			<tr>
				<th>BRRONZESOLO</th>
				<td><input type="number" name="bronzeSolo" value="0"></td>
			</tr>
			<tr>
				<th>GOLDTEAM</th>
				<td><input type="number" name="goldTeam" value="0"></td>
			</tr>
			<tr>
				<th>SILVERTEAM</th>
				<td><input type="number" name="silverTeam" value="0"></td>
			</tr>
			<tr>
				<th>BRONZETEAM</th>
				<td><input type="number" name="bronzeTeam" value="0"></td>
			</tr>
			<!-- tr>
   <th>PRIZE</th>
   <td><input type="number" name="prize" readonly></td>   
</tr-->
			<tr>
				<td><input type="submit" value="저장"> <input
					type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>