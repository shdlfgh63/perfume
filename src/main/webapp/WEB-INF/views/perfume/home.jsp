<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="kr">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<title>Hello, world!</title>

<style>
	main {
		margin:0 !important;
		padding:0 !important;
	}
	
	img {
		aspect-ratio: 2/1;
	}
	
	@media screen and (max-width:960px) {
		img {
			aspect-ratio: 1/1;
		}		
		.teller {
			font-size: 2em;
		}
		.detail {
			font-size: 1em;
		}
	}
	
	.bg-light {
	    --bs-bg-opacity: 1;
	    background-color: rgba(var(--bs-light-rgb), var(--bs-bg-opacity)) !important;
	}
	.text-center {
	    text-align: center !important;
	}
	*, *::before, *::after {
	    box-sizing: border-box;
	}
	user agent stylesheet section {
	    display: block;
	}
	
	#box {
		background-image:
			url("https://paffem.me/web/upload/main/b2@desktop.jpeg");
		color: white;
		background-size: cover;
		background-position: center;
	}
	
	#box2 {
		background-image:
			url("https://paffem.me/web/paffem/8b29cc9c-376e-476f-a98a-5de05dc67451/main_img_3_discovery_1920x600.jpg");
		color: white;
		background-size: cover;
		background-position: center;
	}

	.icons {
		display: flex;
		justify-content: space-between;
	}
	
	video {
	   width: 100%;
	   height : auto;
	   object-fit: cover;
	}
	.title{
		font-weight: bold;
	}

	.btn btn-outline-light btn-lg col-5:hover{
	    background-color: black;
	}
	
</style>
</head>

<main class="container-fluid">  
       <!--  body -->
       
       <!--  carousel -->
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
  
  <div class="carousel-inner">  
    <div class="carousel-item active">
	    <img src="https://paffem.me/web/paffem/e6e3da25-f78c-4ac3-b831-1362636af6e6/main_img_exchange_1920x898.jpg" 
	    		class="d-block w-100 img-fluid" alt="..."> 
	    
	    <div class="carousel-caption">
		    <div id="carouselbox" class="px-4 py-5 my-0">     
			    <h1 class="display-4 fw-bold teller">Perfume Teller</h1>
			    <br><br>
			    <div class="col-lg-6 mx-auto">
			        <h2 class="display-9 detail" >쉽고 재미있는 향기 취향 테스트로 나만의 #시그니처향수찾기</h2>
			        <br><br><br>
			        <div class="d-grid gap-2 d-flex justify-content-center">        
			      		<a class="btn btn-outline-dark btn-xs col-5" href="/shop/40ml" role="button" style="color:white">바 로 가 기</a>
			        </div>
			    </div>
		  	</div>      
	    </div>
    </div>
    <div class="carousel-item">
        <img src="https://paffem.me/web/paffem/db7a6717-658b-4749-bd6f-665da5f9f2e6/homepage.png" 
      		class="d-block w-100 img-fluid" alt="...">
        
        <div class="carousel-caption">
        	<div id="carouselbox" class="px-4 py-5 my-0 text-center">     
    			<h1 class="display-4 fw-bold teller">Perfume Teller</h1>
    			<br><br>
    			<div class="col-lg-6 mx-auto">
      				<h2 class="display-9 detail">쉽고 재미있는 향기 취향 테스트로 나만의 #시그니처향수찾기</h2>
      				<br><br><br>
      				<div class="d-grid gap-2 d-flex justify-content-center">        
        				<a class="btn btn-outline-dark btn-xs col-5" href="#" role="button" style="color:white">바 로 가 기</a>
      				</div>
    			</div>
  			</div> 
        </div>
    </div>
    
    <div class="carousel-item">
        <img src="https://paffem.me/web/paffem/4810f91f-c441-4749-938e-4d2c54d982a4/main_img_Layering_1920x898.jpg" 
        		class="img-d-block w-100 img-fluid" alt="...">
        		
        <div class="carousel-caption">  
        	<div id="carouselbox" class="px-4 py-5 my-0 text-center">     
			    <h1 class="display-4 fw-bold teller">Perfume Teller</h1>
			    <br><br>
			    <div class="col-lg-6 mx-auto">
			    	<h2 class="display-9 detail">쉽고 재미있는 향기 취향 테스트로 나만의 #시그니처향수찾기</h2>
			        <br><br><br>
			      	<div class="d-grid gap-2 d-flex justify-content-center">        
			       		<a class="btn btn-outline-dark btn-xs col-5" href="#" role="button" style="color:white">바 로 가 기</a>
			      	</div>
    			</div>
  			</div>        
      	</div>
   	</div>
  </div>
  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
  <!--  carousel -->
  
<div id="box" class="px-4 py-5 my-0 text-center" > 
    <br><br><br>      
    <h1 class="display-4 fw-bold teller">Perfume Teller</h1>
    <br><br>
    <div class="col-lg-6 mx-auto">
    	<h2 class="display-9 detail">쉽고 재미있는 향기 취향 테스트로 나만의 #시그니처향수찾기</h2>
        <br><br><br>
      	<div class="d-grid gap-2 d-flex justify-content-center">        
       		<a class="btn btn-outline-dark btn-xs col-5" href="#" role="button" style="color:white; hover:background-color:black;">바 로 가 기</a>  
      	</div>
    </div>
</div>
   
<div id="box2" class="px-4 py-5 my-0 text-center"> 
	<br><br><br>   
    <h1 class="display-5 fw-bold teller">Centered hero</h1>
    <br><br>
    <div class="col-lg-6 mx-auto">
    	<h2 class="display-9 detail">쉽고 재미있는 향기 취향 테스트로 나만의 #시그니처향수찾기</h2>
      	<br><br><br>
      	<div class="d-grid gap-2 d-flex justify-content-center">        
       		<a class="btn btn-outline-dark btn-xs col-5" href="#" role="button" style="color:white">바 로 가 기</a> 
      	</div>
    </div>
</div>

<div id="box3">
  <video muted autoplay loop>
    <source src="https://paffem.me/web/paffem/assets/about/desktop.mp4.gif" type="video/mp4">
  </video>
</div>

<div id="box4" class="brand m-5 p-5">
	<div class="content" align="center">
		<div class="title mb-5"><h1>Find Your Signature</h1></div>
		<div class="row icons" align="center">
				
			<div class="col-xs-12 col-lg-6 row">
				<div class="col-4 icon">
					<div><i class="bi bi-bezier" style="font-size: 4rem;"></i></div>
					<div class="text">Algorithm</div>
				</div>
				<div class="col-4 icon">
					<div><i class="bi bi-wind" style="font-size: 4rem;"></i></div>
					<div class="text">Cruelty free</div>
				</div>
				<div class="col-4 icon">
					<div><i class="bi bi-cup-straw" style="font-size: 4rem;"></i></div>
					<div class="text">2.5ml bottle</div>
				</div>
			</div>
			
			<div class="col-xs-12 col-lg-6 row">
				<div  class="col-4 icon">
					<div><i class="bi bi-emoji-smile" style="font-size: 4rem;"></i></div>
					<div class="text">German fragrance oil</div>
				</div>
				<div class="col-4 icon">
					<div><i class="bi bi-arrow-repeat" style="font-size: 4rem;"></i></div>
					<div class="text">Eco package</div>
				</div>
				<div  class="col-4 icon">
					<div><i class="bi bi-gender-ambiguous" style="font-size: 4rem;"></i></div>
					<div class="text">Gender neutral</div>
				</div>
			</div>			
		</div>
		
		<div class="mt-5 d-grid gap-2 d-flex justify-content-center" align="center">  			      
       		<a class="btn btn-outline-dark btn-xs col-5" href="/perfume/about" role="button">바 로 가 기</a>       
        </div>
	</div>
</div>
    
	<!--  body -->
 
</main>
</html>