<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="templates/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<div class="page-header">
</div>
</div>
</div>
<div class="container">
<div class="row">
<div class="col-md-5">
<img src="<c:url value="/resources/images/${product.images}.jpg"/>" style="width:20%;">
</div>
<div class ="col-md-5">
<h4> ${product.productName }</h4>
<p>${product.description }</p>
</div>
</body>
</html>
<%@ include file="templates/footer.jsp"%>