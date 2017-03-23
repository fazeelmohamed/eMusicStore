<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>
            <p class="lead">Please update the product</p>

        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct"
                    method="post" commandName="product" enctype="multipart/form-data">
        <form:hidden path="productId"  value="${product.productId}"/>

        <div class="form-group">
            <label for="name">Name</label><form:errors path="productName" cssStyle="color: #ff0000;"/>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="instruments"/>Instruments
            </label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="recorder"/>Recorder
            </label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="accessories"/>Accessories
            </label>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
        </div>
        <div class="form-group">
            <label for="price">Price</label><form:errors path="productPrice" cssStyle="color: #ff0000;"/>
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>
        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCondition" id="condition" value="new"/>New
            </label>
            <label class="checkbox-inline">
                <form:radiobutton path="productCondition" id="condition" value="used"/>Used
            </label>
        </div>
        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline">
                <form:radiobutton path="productStatus" id="status" value="Active"/>Active
            </label>
            <label class="checkbox-inline">
                <form:radiobutton path="productStatus" id="status" value="Inactive"/>Inactive
            </label>
        </div>
        <div class="form-group">
            <label for="unitstock">Unit In Stock</label><form:errors path="unitStock" cssStyle="color: #ff0000;"/>
            <form:input path="unitStock" id="unitstock" class="form-Control" value="${product.unitStock}"/>
        </div>
        <div class="form-group">
            <label for="manufacture">Manufacture</label>
            <form:input path="productManufacturer" id="manufacture" class="form-Control" value="${product.productManufacturer}"/>
        </div>
        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input path="productImage" id="productImage" type="file" class="form:input-large"/>
        </div>
        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory"/>" class="btn btn-default">Cancel</a>
        </form:form>

        <%@include file="/WEB-INF/view/template/footer.jsp"%>