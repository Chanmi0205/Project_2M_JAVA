<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student.Grade" %>
<%@ page import="Student.Student" %>
<%@ page import="java.sql.*" %>
<% 
	Grade db = new Grade();
	
	String student = request.getParameter("student");
	String sql = "SELECT * FROM student where student_pk='" + student + "'";

	try {
		db.psmt = db.conn.prepareStatement(sql);
		db.rs = db.psmt.executeQuery();
		
%>
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
	
	<form action="student_update_confirm.jsp">
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
			
			<%
				while(db.rs.next()) {
			%>
			
			<tr>
				<td><input value="<%=db.rs.getInt(1)%>" name="grade" readonly></td>
				<td><input value="<%=db.rs.getInt(2)%>" name="room" readonly></td>
				<td><input value="<%=db.rs.getString(3)%>" name="name" readonly></td>
				<td><input value="<%=db.rs.getInt(4)%>" name="korean"></td>
				<td><input value="<%=db.rs.getInt(5)%>" name="math"></td>
				<td><input value="<%=db.rs.getInt(6)%>" name="english"></td>
				<td><input value="<%=db.rs.getInt(7)%>" name="history"></td>
				<td><input value="<%=db.rs.getInt(8)%>" name="science"></td>
			</tr>
			
			<% } 
			
				} catch (Exception e) { 
					e.printStackTrace();
				} 
			%>
	
		</table>
		
		<input type="submit" value="학생 변경"/>
	</form>

</body>
</html>