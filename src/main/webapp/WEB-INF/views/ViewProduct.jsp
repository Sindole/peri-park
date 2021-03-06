<%@ include file="AdminHeader.jsp" %>
<head>
<style>

.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: black;
}
.tg td {
	font-family: "sans-serif"";	
	font-size: 14px;
	font-weight: bold;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}
.tg th {
	font-family: "sans-serif"";	
	font-size: 18px;
	font-weight: bold;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: midnightblue;
	background-color: lightgrey;
	text-align : center;
}
.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
</head>
<body>
<h3 align="center">Products being sold in Peri-Park</h3>
<c:if test="${!empty productList}">
		<table class="tg text-center" align="center">
			<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Product Description</th>
				<th>Product Price</th>
				<th>Product Category</th>
				<th>Product Supplier</th>
			</tr>
	
	<c:if test="${empty productList}">
	<h4>There are no products to be displayed</h4>
	</c:if>

<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.prodid}</td>
					<td>${product.prodname}</td>
					<td>${product.proddesc}</td>
					<td>${product.price}</td>
					<td>${product.category.catid}</td>
					<td>${product.supplier.supid}</td>
				</tr>
				</c:forEach>
				
		</table>
	
		</c:if>
		
		<br>
		<br>
		<div>
		<button type="button" class="btn btn-md btn-primary btn-block" name="back" onclick="history.back()">Back</button>
</div>
</body>
</html>