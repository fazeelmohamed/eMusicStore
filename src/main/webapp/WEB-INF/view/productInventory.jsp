<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory page</h1>
            <p class="lead">This is product inventory page..</p>

            <table class="table table-striped table-hover">
                <thead>
                <tr class="bg-success">
                    <th>Photo Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Conditions</th>
                    <th>Price</th>
                    <th></th>
                </tr>
                </thead>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td><img src="<c:url value="/resources/images/${product.productId}.png"/>" class="thumb-img" alt="image"></td>
                        <td>${product.productName}</td>
                        <td>${product.productCategory}</td>
                        <td>${product.productCondition}</td>
                        <td>$${product.productPrice}</td>
                        <td>
                            <a href="<spring:url value="/product/viewProduct/${product.productId}"/>">
                                <span class="glyphicon glyphicon-info-sign"></span>
                            </a>
                            <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}"/>">
                                <span class="glyphicon glyphicon-remove"></span>
                            </a>
                            <a href="<spring:url value="/admin/product/editProduct/${product.productId}"/>">
                                <span class="glyphicon glyphicon-pencil"></span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <a class="btn btn-primary" href="<spring:url value="/admin/product/addProduct" />">Add Product</a>
        </div>
        <%@include file="/WEB-INF/view/template/footer.jsp"%>