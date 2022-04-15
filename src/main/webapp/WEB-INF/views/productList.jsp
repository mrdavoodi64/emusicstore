<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="Spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<main>


    <div class="container-wrapper">

        <div class="container">

            <div class="page-header">
                <h1>All Products</h1>
                <p class="lead">Checkout all the awesome products available now!</p>
            </div>

            <table class="table table-striped table-hover">

                <thead>
                <tr class="bg-success">

                    <th>Photo Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th></th>

                </tr>
                </thead>
                <C:forEach items="${productList}" var="product">
                    <tr>
                        <td><img src="#" alt="image"></td>
                        <td>${product.productName}</td>
                        <td>${product.productCategory}</td>
                        <td>${product.productCondition}</td>
                        <td>${product.productPrice} USD</td>
                        <td><a href="<Spring:url value="/productList/viewProduct/${product.productId}" /> "><img src="/WEB-INF/resources/icons/three-dots.svg"></a></td>


                    </tr>
                </C:forEach>
            </table>

<%@include file="/WEB-INF/views/template/footer.jsp"%>

        </div>
    </div><!-- /.container -->
</main>



</body>
</html>
