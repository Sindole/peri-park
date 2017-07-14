<%@ include file="Header.jsp" %>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            
            <c:if test="${!empty cartList}">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${cartList}" var="cart">
                    <tr> 
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="Pics/${cart.cartproduct.prodname}.jpg"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${cart.prodname}</a></h4>
                                <h5 class="media-heading"> by <a href="#">${cart.cartproduct.supplier.supname}</a></h5>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="number" class="form-control" id="exampleInputEmail1" value="3">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cart.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cart.price*quantity}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>
                    <tr>
                    
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>${product.price*quantity}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <button type="button" class="btn btn-default" onclick="Home.jsp">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></td>
                        <td>
                        <button type="submit" class="btn btn-success" formaction="Paymentoption">
                             Checkout<span class="glyphicon glyphicon-play"></span>
                        </button></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            </c:if>
        </div>
    </div>
</div>

</body>

</html>