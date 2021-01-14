<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="vo.UserVo" %>
<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
%>
	


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="header">
			<h1><a href="/mysite2/Main">MySite</a></h1>
			
			<%if(authUser==null){ %>
				<ul>
					<li><a href="/mysite2/User?action=loginForm">로그인</a></li>
					<li><a href="/mysite2/User?action=joinForm">회원가입</a></li>
				</ul>
			<%}	else{ %>	
				
				<ul>
					<li><%=authUser.getName() %> 안녕하세요^^</li>
					<li><a href="/mysite2/User?action=logout">로그아웃</a></li>
					<li><a href="/mysite2/User?action=modifyForm">회원정보수정</a></li>
				</ul>
			<%} %>
		</div>
		<!-- //header -->
		
			<div id="header">
			<h1><a href="/mysite2/Main">MySite</a></h1>
			
			<c:choose>
				<c:when test="${empty sessionScope.authUser}">
					<ul>
						<li><a href="/mysite2/User?action=loginForm">로그인</a></li>
						<li><a href="/mysite2/User?action=joinForm">회원가입</a></li>
					</ul>
				</c:when>
				<c:otherwise>	
					<ul>
						<li>${sessionScope.authUser.name } 안녕하세요^^</li>
						<li><a href="/mysite2/User?action=logout">로그아웃</a></li>
						<li><a href="/mysite2/User?action=modifyForm">회원정보수정</a></li>
					</ul>
				</c:otherwise>
			</c:choose>>
		</div>
</body>
</html>