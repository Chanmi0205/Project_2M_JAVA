<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student.Grade" %>
<%@ page import="java.sql.*" %>

<%
	
	String student_pk = request.getParameter("student_pk");
	Grade g = new Grade();
	int result = g.studentDelete(student_pk);
	if(result==1) response.sendRedirect("main.jsp");
	
%>