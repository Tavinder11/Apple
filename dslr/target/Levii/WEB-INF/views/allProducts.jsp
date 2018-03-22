<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="templates/header.jsp"%>
<div  class="container-fluid">
<div class="table-responsive">          
  <table class="table">
    <thead>
  <tr>    <th>Pid</th>
<th>Product Name</th>
<th>images</th>
</tr>

    </thead>
    <tbody>
  <c:forEach items="${products}" var="products">
   <tr>
   <td>${products.pid}</td>
       <td>${products.productName}</td>
       <td><img src="c:url value="/resources/images/${products.images}.jpg"/>"class="img-thumbnail" width="30"/></td>
       <td><a href="<c:url value="/viewProducy/${products.pid}" />">view more<span class="glyphicon glyphicon-info-sign"></span></a></td>
      
      </tr>
       </c:forEach>    
    </tbody>
  </table>
  </div>
     </div>

<%@ include file="templates/footer.jsp"%>
