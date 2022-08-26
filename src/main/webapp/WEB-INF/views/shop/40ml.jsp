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
  <div style="background-color: white;">

     <h2 style="text-align: center; margin-top: 200px;  margin-bottom: 30px; background-color: white;">Pick Your Signature!</h2>
    <p style="text-align: center; margin-bottom: 50px; color: gray; margin-bottom: 300px; background-color: white;">6가지 향을 선택하여 나만의 디스커버리 세트를 구성해보세요</p>
    <div class="border-bottom" style="background-color: white;">
    <div class="category" style="display: flex; justify-content: center; margin-bottom: 10px;">
    
      <a href="/shop/40ml?param=All"><div>All </div></a>
      <a href="/shop/40ml?param=citrus"><div>시트러스 </div></a>
      <a href="/shop/40ml?param=floral"><div>플로럴 </div></a>
      <a href="/shop/40ml?param=frutity"><div>프루티 </div></a>
      <a href="/shop/40ml?param=green"><div>그린 </div></a>
      <a href="/shop/40ml?param=herbal"><div>허벌 </div></a>
      <a href="/shop/40ml?param=aqua"><div>아쿠아 </div></a>
      <a href="/shop/40ml?param=woody"><div>우디 </div></a>
      <a href="/shop/40ml?param=balsam"><div>발삼 </div></a>
      <a href="/shop/40ml?param=gourmand"><div>구르망 </div></a>
      <a href="/shop/40ml?param=musk"><div>머스크 </div></a>
      <a href="/shop/40ml?param=powdery"><div style="margin-right: 100px;">파우더리</div></a>

      
   
    </div>
    </div>
    
 
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
					<h5>${item.brand}</h5>
					<h5>${item.name}</h5>
					<h7 style="color:gray;">#${item.source1} #${item.source2} #${item.source3}</h7>
					<p style="color:gray;">2.5ml / <fmt:formatNumber value="${item.price}" pattern="#,###" /></p>
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