<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.GuestBookDao " %>
<%@ page import = "com.javaex.vo.GuestBookVo " %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("pw");
	
	GuestBookDao bookDao = new GuestBookDao();
	bookDao.bookDelete(no, pw);
	
	response.sendRedirect("./addlist.jsp");
%>