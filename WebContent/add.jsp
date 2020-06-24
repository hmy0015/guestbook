<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.GuestBookDao " %>
<%@ page import = "com.javaex.vo.GuestBookVo " %>

<%
	request.setCharacterEncoding("UTF-8");
	GuestBookDao bookDao = new GuestBookDao();
	
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String content = request.getParameter("content");
	
	GuestBookVo bookVo = new GuestBookVo(name, pw, content);
	bookDao.bookInsert(bookVo);
	response.sendRedirect("./addlist.jsp");
%>