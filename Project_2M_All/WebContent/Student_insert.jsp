<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<style>
	td {
		text-align: center;
	}
</style>
<head>
<meta charset="UTF-8">
<title>학생성적프로그램</title>
</head>
<body>
	
	<form action="student_insert_confirm.jsp">
		<table border="1">
			<tr>
				<td>학년</td>
				<td>반</td>
				<td>이름</td>
				<td>국어</td>
				<td>수학</td>
				<td>영어</td>
				<td>한국사</td>
				<td>과학</td>
			</tr>
			
			<tr>
				<td><input placeholder="학년을 입력하시오..." name="grade"></td>
				<td><input placeholder="반을 입력하시오..." name="room"></td>
				<td><input placeholder="이름을 입력하시오..." name="name"></td>
				<td><input placeholder="국어 점수를 입력하시오..." name="korean"></td>
				<td><input placeholder="수학 점수를 입력하시오..." name="math"></td>
				<td><input placeholder="영어 점수를 입력하시오..." name="english"></td>
				<td><input placeholder="한국사 점수를 입력하시오..." name="history"></td>
				<td><input placeholder="과학 점수를 입력하시오..." name="science"></td>
			</tr>
			
	
		</table>
		
		<input type="submit" value="학생 추가"/>
	</form>

</body>
</html>