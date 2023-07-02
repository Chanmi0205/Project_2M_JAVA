<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student.Grade" %>
<%@ page import="Student.Student" %>
<%@ page import="java.sql.*" %>

<%
	Grade db = new Grade();
	
	String sql = "SELECT student_pk, grade FROM student";
	
	try {
		db.psmt = db.conn.prepareStatement(sql);
		db.rs = db.psmt.executeQuery();
		
		while(db.rs.next()) {
			String student_pk = db.rs.getString(1);
			int grade = db.rs.getInt(2);
			db.GRchange(student_pk, grade);
		}
		
		response.sendRedirect("main.jsp");
	} catch (Exception e) { 
	e.printStackTrace();
}
%>