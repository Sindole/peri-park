<%@ include file="AdminHeader.jsp" %>

<head>
<style>
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: black;
}
.tg td {
	font-family: calibri;
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
	font-family: calibri;
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


<h3 align="center">Categories Available in Peri-Park</h3>
<c:if test="${!empty categoryList}">
		<table class="tg text-center" align="center">
			<tr>
				<th>Category Id</th>
				<th>Category Name</th>
				<th>Description</th>
			</tr>

<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.catid}</td>
					<td>${category.catname}</td>
					<td>${category.catdesc}</td>
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