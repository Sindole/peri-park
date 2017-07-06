<%@ include file="AdminHeader.jsp" %>
<head>
<style>
body
{
background-image: url("images/regie.jpg");
font-family: 'Sansita', sans-serif;
}
</style>
</head>
<div class="form-horizontal">
<fieldset>
<h2 align="center">Please add your new Supplier</h2>
<body>
<form:form action="supplier/add" modelAttribute="sup">
<div class="form-group">
  <label class="col-md-4 control-label" for="supplier_id">Supplier Id</label>  
  <div class="col-md-4">
  <form:input path="supid" id="supid" name="supid" placeholder="Supplier Id" class="form-control input-md"  required="true" type="text" />
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="supplier_name">Supplier Name</label>  
  <div class="col-md-4">
  <form:input path="supname" id="supname" name="supname" placeholder="Supplier Name" class="form-control input-md" required="true" type="text"/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="supplier_brand">Supplier Brand</label>  
  <div class="col-md-4">
  <form:input path="supbrand" id="supbrand" name="supbrand" placeholder="Supplier Brand" class="form-control input-md" required="true" type="text"/>
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="supplier_address">Supplier Address</label>
  <div class="col-md-4">                     
    <form:textarea path="supaddress" class="form-control" id="supaddress" name="supaddress" required="true"/>
  </div>
</div>

<!-- Button -->
<div align="center" form-group">
 
    <button type="submit" name="addsupplier" class="btn btn-primary">Add Supplier</button>
     <button type="reset" name="cancel" class="btn btn-primary">Cancel</button>
  </div>
  <div align="center">
            <a href="ViewSupplier" class="text-center new-account" style="color:blue;">View Suppliers</a>
            </div>
  </form:form>
  <ol style="color:white">
 <li> *Supplier Id should contain first four letters of the supplier name preceded by PP and followed by 01*</li>
 <li> *Ex: DELL: PPDELL01 & Apple: PPAPPL01 </li>
 </ol>
  </body>
  </fieldset>
 
 </div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



<%@ include file="Footer.jsp" %>