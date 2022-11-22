<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id="productDAO" class ="dao.ProductRepository" scope="session"/>


<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet"
	href="https:maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>product detail</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">product info</h1>
	</div>
</div>
<%
	String id=request.getParameter("id");
	ProductRepository dao=ProductRepository.getInstance();
	Product product =dao.getProductById(id);
%>
<div class="container">
	<div class="row">
		<div class="col-md-5">
			<img src="./resources/images/<%=product.getFilename() %>" style ="width: 100%">
		</div>
		<div class="col-md-6">
			<h3><%=product.getPname()%></h3>
			<p><%=product.getDescription()%>
			<p><b>product code: </b><span class="badge badge-danger"><%=product.getProductId() %></span>
			<p><b>제조사</b> : <%=product.getManufacturer() %>
			<p><b>category</b> : <%=product.getCategory() %>
			<p><b>stock</b> : <%=product.getUnitsInStock() %>
			<h4><%=product.getUnitPrice() %>원</h4>
			<p><a href="#" class="btn btn-info"> product order &raquo;</a>
			<a href="./products.jsp" class="btn btn-secondary"> product list &raquo;</a>
		</div>
	</div>
	<hr>
</div>
<jsp:include page="footer.jsp"/>

</body>
</html>