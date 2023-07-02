<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student.Grade" %>
<%@ page import="Student.Student" %>
<%@ page import="java.sql.*" %>

<%
	
	int grade = Integer.parseInt(request.getParameter("grade"));
	int room = Integer.parseInt(request.getParameter("room"));
	String name = request.getParameter("name");
	int korean = Integer.parseInt(request.getParameter("korean"));
	int math = Integer.parseInt(request.getParameter("math"));
	int english = Integer.parseInt(request.getParameter("english"));
	int history = Integer.parseInt(request.getParameter("history"));
	int science = Integer.parseInt(request.getParameter("science"));

	Student student = new Student(grade, room, name, korean, math, english, history, science, grade+""+room+name);
	Grade g = new Grade();
	
	int result = g.studentInsert(student);
	
	if(result==1) response.sendRedirect("main.jsp");
	
%>