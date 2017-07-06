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
<h3 align="center">Suppliers tied-up with Peri-Park</h3>
<c:if test="${!empty supplierList}">
		<table class="tg text-center" align="center">
			<tr>
				<th>Supplier Id</th>
				<th>Supplier Name</th>
				<th>Supplier Brand</th>
				<th>Supplier Address</th>
			</tr>

<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.supid}</td>
					<td>${supplier.supname}</td>
					<td>${supplier.supbrand}</td>
					<td>${supplier.supaddress}</td>
				</tr>
				</c:forEach>
		</table>
		</c:if>
		<br>
		<br>
		<div class="col-xs-0">
		<button type="button" class="btn btn-md btn-primary btn-block" name="back" onclick="history.back()">Back</button>
</div>
</body>
</html>