<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/views/customer/css/" var="url"></c:url>
<c:url value="/views/customer/image/" var="urlImage"></c:url>
<c:url value="/views/customer/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="${url }style.css">

</head>
<body>
    
<!-- header section starts  -->
<jsp:include page="/views/customer/commons/header.jsp"></jsp:include>
<!-- header section ends -->

<div class="heading">
    <h1>our shop</h1>
    <p> <a href="Home">home >></a> shop </p>
</div>

<section class="category">

    <h1 class="title"> our <span>categories</span> </h1>

    <div class="box-container">
	<c:forEach items="${listC}" var="o">
        <a href="Category?cid=${o.cateId }" class="box">
            <img src="${urlImage }cat-${o.cateId }.png" alt="">
            <h3>${o.cateName }</h3>
        </a>
    </c:forEach>
    </div>

</section>

<section class="products">

    <h1 class="title"> our <span>products</span> <a href="Shop">view all >></a> </h1>

    <div class="box-container">
	<c:forEach items="${listP}" var="o">
        <div class="box">
            <div class="icons">
                <a href="add_to_cart?productId=${o.productId }&quantity=1" class="fas fa-shopping-cart"></a>
                <a href="product_detail?pid=${o.productId }" class="fas fa-eye"></a>
            </div>
            <div class="image">
                <img src="${o.productImage}" alt="">
            </div>
            <div class="content">
                <h3>${o.productName}</h3>
                <div class="price">${o.price } VND</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
            </div>
        </div>
        </c:forEach>

    </div>

</section>


<!-- footer section starts  -->

<jsp:include page="/views/customer/commons/footer.jsp"></jsp:include>

<!-- footer section ends -->


<!-- custom css file link  -->
<script src="${urljs }script.js"></script>

</body>
</html>