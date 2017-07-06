<%@ include file="AdminHeader.jsp" %>
<div class="form-horizontal">
<fieldset>
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
<form:form action="category/add" modelAttribute="cat"> 
<h2 align="center">Please add your new Category</h2>

<div class="form-group">
  <label class="col-md-4 control-label" for="catid">Category Id</label>  
  <div class="col-md-4">
  <form:input path="catid" id="catid" name="catid" placeholder="Follow bottom line instructions to create a CategoryId" class="form-control input-md" type="text" required="true"/>
  </div>
  </div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="catname">Category Name</label>  
  <div class="col-md-4">
  <form:input path="catname" id="catname" name="catname" placeholder="Category Name" class="form-control input-md" required="" type="text"/>
  </div>
  </div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="catdesc">Category Description</label>
  <div class="col-md-4">                 
    <form:textarea path="catdesc" class="form-control" id="catdesc" name="catdesc" rows="5" cols="30" placeholder="Description of the Category"></form:textarea>
  </div>
  </div>
  
  <div align="center" "form-group">
<!-- Button -->
    <button type="submit" name="addcategory" class="btn btn-primary">Add category</button>
     <button type="reset" name="cancel" class="btn btn-primary" onclick="history.back()">Cancel</button>
     </div>
<div align="center">
            <a href="ViewCategory" class="text-center new-account" style="color:blue;">View Categories</a>
            <br>
        </div>
 </form:form>
 <br>
 <br>
 
 <ol style="color:white">
 <li> *Category Id should contain first four letters of the category name preceded by PP and followed by 01*</li>
 <li> *Ex: Monitors: PPMONI01 & Hardware: PPHARD01 </li>
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