<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import = "java.util.List" %>

<%@ page import = "com.javaex.dao.GuestBookDao " %>
<%@ page import = "com.javaex.vo.GuestBookVo " %>

<%
	GuestBookDao bookDao = new GuestBookDao();
	
	List<GuestBookVo> bookList = bookDao.getBookList();
	System.out.println(bookList.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "./add.jsp" method = "post">
	<table border='1'>
		<tbody>
			<tr>
				<td> 이름 </td>
				<td><input type = 'text' name = 'name'> </td>
				<td> 비밀번호 </td>
				<td><input type ='password' name = 'pw' > </td>
			</tr>
			
			<tr>
				<td colspan = '4'>
					<textarea cols='65' rows='5' name = 'content'></textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan = '4'>
					<button type = 'submit'>확인</button>
				</td>
			</tr>
		</tbody>
	</table>
	</form>
	
	<br>
	
	<form action = "./deleteForm.jsp" method = "post">
	<% for(GuestBookVo bookVo : bookList) { %>
		<table border='1'>
			<colgroup>
				<col style="width: 50px;">
				<col style="width: 100px;">
				<col style="width: 230px;">
				<col style="width: 100px;">
			</colgroup>
			
				<tbody>
					<tr>
						<td> <%= bookVo.getNo() %> </td>
						<td> <%= bookVo.getName() %> </td>
						<td> <%= bookVo.getDate() %> </td>
						<td> <a href = './deleteForm.jsp?no=<%=bookVo.getNo()%>'> 삭제 </a></td>
					</tr>
					
					<tr>
						<td colspan = '4'>
							<%= bookVo.getContent() %>
						</td>
					</tr>
				</tbody>
		</table>
		</form>
		<br>
	<% } %>
</body>
</html>