<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<title>DSLR</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background colour="white">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">DSLR'S</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class=""><a href="#">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Products <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="allproducts">Dslr</a></li>
							<li><a href="addProduct">Lens</a></li>
							<li><a href="#">bags</a></li>
						</ul></li>

				</ul>
				
				 <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

                            

                            <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Administrator</a></li>
                            </c:if>

                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/login" />">Login</a></li>
                            <li><a href="<c:url value="/register" />">Register</a></li>
                        </c:if>
                    </ul>
			</div>
		</div>
	</nav>
