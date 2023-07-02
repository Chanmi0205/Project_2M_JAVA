<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student.Grade" %>
<%@ page import="Student.Student" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<% 
	Grade db = new Grade();
	
	String sql = "SELECT grade, room, name FROM student";
	ArrayList<Integer> rooms = new ArrayList<Integer>();
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
	<form action="Room_setting.jsp">
		<table border="1">
			<tr>
				<td>학년</td>
				<td>반</td>
				<td>이름</td>				
			</tr>
			
			<%
				while(db.rs.next()) {
					
			%>
			
			<tr>
				<td><%=db.rs.getInt(1)%></td>
				<td><input value="<%=db.rs.getInt(2)%>" name="room"/></td>
				<td><%=db.rs.getString(3)%></td>
			</tr>
			
			<% 
				} 
			
				} catch (Exception e) { 
					e.printStackTrace();
				}
			%>
	
		</table>
		
		<input type="submit" value="Update"/>
	</form>
</body>
</html>