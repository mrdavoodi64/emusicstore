<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<main>


    <div class="container-wrapper">

        <div class="container">

            <div class="page-header">
                <h1>Add Product</h1>
                <h1>Add Product</h1>
                <p class="lead">Fill the below information to add a new product</p>
            </div>

            <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" modelAttribute="product">

                <div class="mb-3">
                    <label for="name">Name</label>
                    <form:input path="productName" id="name" cssClass="form-control"/>

                </div>


                <div class="mb-3">
                    <label for="category">Category</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                                     value="instrument"/>Instrument</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                                     value="record"/>Record</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                                     value="accessory"/>Accessory</label>

                </div>

                <div class="mb-3">
                    <label for="description">Description</label>
                    <form:textarea path="productDescription" id="description" cssClass="form-control"></form:textarea>
                </div>

                <div class="mb-3">
                    <label for="price">Price</label>
                    <form:input path="productPrice" id="price" cssClass="form-control"></form:input>
                </div>

                <div class="mb-3">
                    <label for="condition">Condition</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                                     value="new"/>New</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                                     value="used"/>Used</label>

                </div>

                <div class="mb-3">
                    <label for="status">Status</label>
                    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/>Active</label>
                    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive"/>Inactive</label>

                </div>

                <div class="mb-3">
                    <label for="unitInStock">Unit In Stock</label>
                    <form:input path="unitInStock" id="unitInStock" cssClass="form-control"></form:input>
                </div>

                <div class="mb-3">
                    <label for="manufacturer">Manufacturer</label>
                    <form:input path="productManufacturer" id="manufacturer" cssClass="form-control"></form:input>
                </div>
                <br><br>

                <button type="submit" value="Submit" class="btn btn-success">Submit</button>

                <a href="<c:url value="/admin/productInventory"/> " class="btn btn-warning">Cancel</a>

            </form:form>

            <%@include file="/WEB-INF/views/template/footer.jsp" %>

        </div>
    </div><!-- /.container -->
</main>


</body>
</html>
