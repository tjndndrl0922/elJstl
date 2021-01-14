<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%

	 	pageContext.setAttribute("name", "page name");
		request.setAttribute("name", "request name");
		session.setAttribute("name", "session attribute");
		application.setAttribute("name", "app name");

%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<H1>범주 우선순위</H1>
	<!-- 1.page 2.request 3.session 4.application  -->
	<h2>자바</h2>
	page  = <%=pageContext.getAttribute("name") %> <br>
	request =<%=request.getAttribute("name") %> <br>
	session =<%=session.getAttribute("name") %> <br>
	app =<%=application.getAttribute("name") %> <br>
	
	

	<h2>el</h2>
	page = ${pageScope.name } <br>
	request = ${requestScope.name } <br>
	session=  ${sessionScope.name } <br>
	app = ${applicationScope.name } <br>
	
	<br>
	${name }<br>
	${requestScope.name }<br>



</body>
</html>