<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student.Grade" %>
<%@ page import="Student.Student" %>
<%@ page import="java.sql.*" %>
<% 
	Grade db = new Grade();
	
	String sql = "SELECT * FROM student";

	int korean = 0;
	int math = 0;
	int english = 0;
	int history = 0;
	int science = 0;
	int count = 0;
	int sum = 0;
	
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
			<td>학생 전체 평균</td>
			<td></td>
		</tr>
		
		<%
			while(db.rs.next()) {
				
			// 학생 평균
			int average = (db.rs.getInt(4) + db.rs.getInt(5) + db.rs.getInt(6) + db.rs.getInt(7) + db.rs.getInt(8)) / 5;
			
			korean += db.rs.getInt(4);
			math += db.rs.getInt(5);
			english += db.rs.getInt(6);
			history += db.rs.getInt(7);
			science += db.rs.getInt(8);
			count++;
			
			sum += average;
		%>
		
		<tr>
			<td><%=db.rs.getInt(1)%>학년</td>
			<td><%=db.rs.getInt(2)%>반</td>
			<td><a href="Student_update.jsp?student=<%=db.rs.getString(9)%>"><%=db.rs.getString(3)%></a></td>
			<td><%=db.rs.getInt(4)%></td>
			<td><%=db.rs.getInt(5)%></td>
			<td><%=db.rs.getInt(6)%></td>
			<td><%=db.rs.getInt(7)%></td>
			<td><%=db.rs.getInt(8)%></td>
			<td><%=average%></td>
			<td><a href="student_delete_confirm.jsp?student_pk=<%=db.rs.getString(9)%>">X</a></td>
		</tr>
		
		<% } 
		
			} catch (Exception e) { 
				e.printStackTrace();
			}
		%>

	</table>
	<%
	%>
	<a href="Student_insert.jsp">학생 추가</a>
	<a href="Student_One_Update_confirm.jsp">+1</a>
	<p>국어 전체 평균 점수 : <%=korean/count%></p>
	<p>수학 전체 평균 점수 : <%=math/count%></p>
	<p>영어 전체 평균 점수 : <%=english/count%></p>
	<p>한국사 전체 평균 점수 : <%=history/count%></p>
	<p>과학 전체 평균 점수 : <%=science/count%></p>
	<p>전체 평균 점수 : <%=sum/count%></p>
</body>
</html>