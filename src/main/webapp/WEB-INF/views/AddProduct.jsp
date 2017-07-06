<%@ include file="AdminHeader.jsp" %>
<div class="form-horizontal">
<fieldset>
<h2 align="center">Please add your new Product</h2>
<head>
<style>
body
{
background-image: url("images/regie.jpg");
font-family: 'Sansita', sans-serif;
}
</style>
</head>
<body>
<form:form action="product/add" modelAttribute="prod" enctype="multipart/form-data">
<div class="form-group">
  <label class="col-md-4 control-label" for="product_id">Product Id</label>  
  <div class="col-md-4">
  <form:input path="prodid" id="prodid" name="prodid" placeholder="Product Id" class="form-control input-md" type="text" readonly="true"/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">Product Name</label>  
  <div class="col-md-4">
  <form:input path="prodname" id="prodname" name="prodname" placeholder="Product Name" class="form-control input-md" required="" type="text"/>
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_categorie">Product Category</label>
  <div class="col-md-4">
    <form:select path="category.catname">
    <form:option value="unknown">-------------------------Select the Category-------------------------</form:option>
    <form:options items="${categoryList}" itemValue="catname" itemLabel="catname" placeholder="Please select the category" class="form-control"></form:options>
  </form:select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_supplier">Product Supplier</label>
  <div class="col-md-4">
    <form:select path="supplier.supname">
    <form:option value="unknown">--------------------------Select the Supplier-------------------------</form:option>
    <form:options items="${supplierList}" itemValue="supname" itemLabel="supname" placeholder="Please select the supplier" class="form-control"></form:options>
  </form:select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="available_quantity">Available Quantity</label>  
  <div class="col-md-4">
  <form:input path="quantity" id="quantity" name="quantity" placeholder="Available Quantity" class="form-control input-md" required="true" type="number"/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_price">Product Price</label>  
  <div class="col-md-4">
  <form:input path="price" id="price" name="price" placeholder="Product cost" class="form-control input-md" required="true" type="number"/>
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_description">Product Description</label>
  <div class="col-md-4">                     
    <form:textarea path="proddesc" class="form-control" id="proddesc" name="proddesc"/>
  </div>
</div>

<!-- Text input-->
<%-- <div class="form-group">
  <label class="col-md-4 control-label" for="author">Brand</label>  
  <div class="col-md-4">
  <form:input path="brand" id="brand" name="brand" placeholder="Brand" class="form-control input-md" required="" type="text"/>
    
  </div>
</div> --%>

 <!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">main_image</label>
  <div class="col-md-4">
    <form:input type="file" path="img"  class="input-file"/>
  </div>
</div>

<!-- Button -->
<div align="center" "form-group">
  
    <button type="submit" name="addproduct" class="btn btn-primary">Add Product</button>&nbsp;
    &nbsp; <button type="reset" name="cancel" class="btn btn-primary">Cancel</button>&nbsp;
 
  </div>
  <div align="center">
            <a href="ViewProduct" class="text-center new-account" style="color:blue;">View Products</a>
            </div>
  </form:form>
  </body>
</fieldset>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file="Footer.jsp" %>