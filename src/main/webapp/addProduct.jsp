<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet"
	href="https:maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
	
<script type="text/javascript" src="./resources/js/validation.js"><</script>

<meta charset="UTF-8">
<title>상품 등록 </title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	
	<div class ="jumbotron">
		<div class ="container">
			<div class="text-center">
				<h1 class ="display-3">
					<h1>상품 추가 </h1>
				</h1>
			</div>
		</div>
	</div>
	
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class ="col-sm-2">상품 코드 </label>
				<div class ="col-sm-3">
					<input type="text" id= "productId" name="productId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품 이름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class ="form-group row">
				<label class="col-sm-2">가격 </label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
				</div>
			</div>			
			<div class ="form-group row">
				<label class="col-sm-2">상세 정보 </label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>		
			<div class ="form-group row">
				<label class="col-sm-2">제조사 </label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			
			<div class ="form-group row">
				<label class="col-sm-2">분류 </label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>			
			<div class ="form-group row">
				<label class="col-sm-2">재고 수 </label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
				</div>
			</div>	
			<div class ="form-group row">
				<label class="col-sm-2">상태 </label>
				<div class="col-sm-3">
					<input type="radio" name="condition" value="New"> New
					<input type="radio" name="condition" value="Old"> Used
					<input type ="radio" name="condition" value="Refurbished"> Refurbished
				</div>
			</div>
			<div class ="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value="submit" onclick="CheckAddProduct()">
				</div>
			</div>
		</form>
	</div>
</body>
</html>