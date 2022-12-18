<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/admin/tablib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- điều khiển hiển thị thẻ <title> -->
    <title><decorator:title default="Master-layout"/></title>
	<link rel="icon" type="image/png" href="<c:url value ="https://gokisoft.com/uploads/2021/03/s-568-ico-web.jpg"/>"/>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="<c:url value ="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value ="/assets/css/dashboard.css"/>"/>
	<link rel="stylesheet" href="<c:url value ="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css"/>"/>

	<!-- jQuery library -->
	<script src="<c:url value ="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/>"></script>

	<!-- Popper JS -->
	<script src="<c:url value ="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"/>"></script>

	<!-- Latest compiled JavaScript -->
	<script src="<c:url value ="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"/>"></script>
</head>
	<%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>

	<decorator:body/>

<%@include file="/WEB-INF/views/layouts/admin/footer.jsp" %>
</html>