<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/tablib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<body>
<h1></h1>
	<p>đây là trang chi tiết sản phẩm</p>
	<c:forEach var = "a" items = "[1,2,3,4,5]">
		<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="" class="lazy-loaded"/>
	</c:forEach>
</body>
</html>