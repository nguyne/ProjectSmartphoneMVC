<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- điều khiển hiển thị thẻ <title> -->
    <title><decorator:title default="Master-layout"/></title>
    
    <link rel="stylesheet" href="<c:url value ="/assets/css/base.css"/>"/>
    <link rel="stylesheet" href="<c:url value ="/assets/css/main.css"/>"/>
    <link rel="stylesheet" href="<c:url value ="/assets/css/grid.css"/>"/>
    <link rel="stylesheet" href="<c:url value ="/assets/css/responsive.css"/>"/>
    <link rel="stylesheet" href="<c:url value ="/assets/font/fontawesome-free-6.1.2-web/css/all.min.css"/>"/>
</head>
<%@include file="/WEB-INF/views/layouts/user/header.jsp" %>

	<decorator:body/>

<%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
</body>
</html>

