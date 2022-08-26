<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src='http://code.jquery.com/jquery-3.3.1.js'></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
     <!-- Option 1: Bootstrap Bundle with Popper -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>2.5ml</title>
    <style>
    .category div{      
      color: black;
     padding-right: 50px;
    }
    .category a{      
      text-decoration: none;
    }
    
    .dropdown{
  position : relative;
  display : inline-block;
}

.dropdown-content{
  display : none;
   position : absolute;
  z-index : 1; /*다른 요소들보다 앞에 배치*/
  
}

.dropdown-content a{
  display : block;
  color : black;
  padding: 10px;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown-content a:hover{
  font-weight: bold;
}

.category a:hover{
  font-weight: bold;
}

.cardtitle{
   display: flex;
}

.col-sm-3{
  margin-top: 100px;
  display: flex;
  margin-bottom: 100px;
}
    </style>
  
  
  
  </head>
  <body>
   
     <h2 style="text-align: center; padding-top: 170px;  padding-bottom: 80px;">GOODS</h2>
   
    
<div class="border-top">    
<div class="bg-light"    style="padding-bottom: 100px;"  >

<div class="container">	
		<div class="row">
		<c:forEach var="item" items="${list}">   		
		<div class="col-sm-3">
		
		<a href="/shop/detail?param=${item.name}" style="text-decoration: none; color:black;">
		<div class="card" style="width:19rem; text-align: center; border: none;">
					
					<img style="height:22rem;" src="${item.image}" class="card-img-top" alt="..."/>					 	
					
					
					<div class="bg-light">
					<br>
					<h5>${item.name}</h5>
					<p style="color:gray;">goods / <fmt:formatNumber value="${item.price}" pattern="#,###" /></p>
					</div>
					
				</div></a>
	   
			</div>
			 </c:forEach>
		</div>
	</div>

</div>
</div>



</body>
</html>