<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<title>Hello, world!</title>
<style>
	.box video {
		width: 100%;
		height: auto;
	}
	.box2 {
	  background-image: url("https://cdn.pixabay.com/photo/2014/06/24/17/38/smoke-376543_960_720.jpg");
	  background-size: 100% 100%;
	  justify-content: center;
	  align-items: center;
	  width: 300px;
	  height: 250px;  
	}
	.box3 {
	  background-image: url("https://cdn.pixabay.com/photo/2018/11/11/09/30/dark-green-plant-3808354_960_720.jpg");
	  background-size: 100% 100%;
	  justify-content: center;
	  align-items: center;
	  width: 300px;
	  height: 250px;
	}
	.box4 {
	  background-image: url("https://cdn.pixabay.com/photo/2019/10/04/18/36/milky-way-4526277_960_720.jpg");
	  background-size: 100% 100%;
	  justify-content: center;
	  align-items: center;
	  width: 300px;
	  height: 250px;
	}
	.content {
	  display: flex;
	  flex-direction: column;
	}
	.content span {
	  color: white;
	}
	.content span:nth-child(1) {
	  font-size: 25px;
	  font-weight: bold;
	}
	.content span:nth-child(2) {
	  font-size: 20px;
	}
	#text-on-img{
	  display: flex;
	}
	a{
	 text-decoration: none;
	}
	main {
		padding:0 !important;
		margin:0 !important;
	}
</style>
</head>

<main class="container-fluid">
	<!--  body -->
	
	<div class="box mb-5 pb-5">
		<video muted autoplay loop>
			<source
				src="https://paffem.me/web/paffem/assets/about/desktop.mp4.gif"
				type="video/mp4">
		</video>
	</div>
	
	<div id="text-on-img" class="container-fluid row mt-5 pt-5 justify-content-center" align="center">	
		
		<a href="#target1" class="col-lg-4">
	       <div class="box2 my-3">
	          <div class="content" align="center">
	             <span><br><br><br>Find Your Signature</span>  
	          </div> 
	        </div>
	    </a> 
	    
	    <a href="#target2" class="col-lg-4">
	        <div class="box3 my-3">
	          <div class="content" align="center">
	             <span><br><br><br>Eco friendly</span>  
	          </div> 
	        </div>
	    </a> 
	   
	    <a href="#target3" class="col-lg-4">
	        <div class="box4 my-3">
	          <div class="content" align="center">
	             <span><br><br><br>Better but different</span>  
	          </div> 
	        </div>
	    </a>
   </div>
  
  <div class="my-5 py-5" id="target1"></div> 
  <div>
	  <h2 class="my-5" style="text-align: center; font-weight: bold;">Find Your Signature</h2>
	  <h4 class="my-5" style="text-align: center;">'가장 나다운 향'을 찾기 위한 여정을 함께합니다.</h4>
	  <div class="find my-5" style="text-align: center;" >
	  	  <img class="img-fluid" style=" width: 700px;" alt="" src="https://cdn.pixabay.com/photo/2017/07/15/19/42/train-track-2507499_960_720.jpg">
	  </div>	  
	  <div class="my-5" style="text-align: center;">
	      <p>머신러닝 알고리즘 ‘퍼퓸텔러’를 통해<br>향기 정보와 취향을 분석하여 최적화된 향기를 추천합니다.</p>
	  </div>		  
	  <div class="find my-5 py-5" style="text-align: center;" >
	  	  <img class="img-fluid" style="width: 700px; filter: grayscale(100%);" alt="" src="https://cdn.pixabay.com/photo/2018/05/13/18/06/scent-of-roses-3397281_960_720.jpg">
	  </div>	 
	  <div class="my-5" style="text-align: center;">
	  	  <p>다양한 향기를 부담없이 경험할 수 있도록,<br>2.5ml의 병에 향기를 담습니다.</p>
	  </div>	    
	  <div class="find my-5 py-5" style="text-align: center;" >
	      <img class="img-fluid" style="width: 700px;" alt="" src="https://cdn.pixabay.com/photo/2021/07/09/15/42/eau-de-toilette-6399434_960_720.jpg">
	  </div>	  
	  <div class="my-5" style="text-align: center;">
	      <p>취향에 맞지 않는 향기가 있다면 새로운 향으로 교환해드립니다.</p>
	  </div> 

  </div>
   
	<div class="mb-5 pb-5" id="target2"></div>
	<div class="my-5 py-5 bg-light text-dark">	
    	<h2 class="my-5" style="text-align: center; font-weight: bold;">Eco friendly</h2>
    	<h4 class="my-5" style="text-align: center;">내가 좋아하는 향기를 마음 편하게 사용하세요.</h4>
    	<div class="find my-5 py-5" style="text-align: center;" >
    		<img class="img-fluid" style=" width: 700px;" alt="" src="https://cdn.pixabay.com/photo/2017/07/13/16/10/cute-2500929_960_720.jpg">
    	</div>    	
    	<div class="my-5" style="text-align: center;">
	    	<p>동물실험을 하지 않으며,<br>동물성 원료를 사용하지 않습니다.</p>
      	</div>  
    	<div class="find my-5 py-5" style="text-align: center;">
      		<img class="img-fluid" style="width: 700px; filter: grayscale(100%);" alt="" src="https://cdn.pixabay.com/photo/2017/01/31/18/03/boy-2026064_960_720.png">
    	</div>
	    <div class="my-5" style="text-align: center;">
	    	<p>파펨의 향기와 패키지는<br>특정 성별을 타깃으로 디자인되지 않았습니다.</p>
	    </div>     
	    <div class="find my-5 py-5" style="text-align: center;">
	        <img class="img-fluid" style="width: 700px;" alt="" src="https://cdn.pixabay.com/photo/2016/12/02/02/10/idea-1876659_960_720.jpg">
	    </div>
   		
   		<div class="my-5" style="text-align: center;" >
       		<p>FSC인증이 완료된 종이를 사용하며,<br>비닐을 사용하지 않습니다.</p>   
		</div> 
	</div>  
     
	<div class="my-5 py-5" id="target3"></div>    
    <div class="mb-5 pb-5">
	    <h2 class="my-5" style="text-align: center; font-weight: bold;">Better but different</h2>
	    <h4 class="my-5" style="text-align: center;">남들과는 다른, 더 나은 것들을 만듭니다.</h4>
	    <div class="find my-5 py-5" style="text-align: center;" >
	    	<img class="img-fluid" style="width: 700px;" alt="" src="https://cdn.pixabay.com/photo/2020/12/15/10/02/beer-can-5833194_960_720.png">
	    </div>
	    <div class="my-5" style="text-align: center;" >
	    	<p>향기를 가장 잘 보관할 수 있는 곳,<br>알루미늄에 향기를 담습니다.</p>
        </div>
  
	    <div class="find my-5 py-5" style="text-align: center;" >
	    	<img class="img-fluid" style="width: 700px; filter: grayscale(100%);" alt="" src="https://cdn.pixabay.com/photo/2018/04/15/14/27/essential-oils-3321811_960_720.jpg">
	    </div>
	    <div class="my-5" style="text-align: center;" >
	    	<p>글로벌 탑 퀄리티의 프래그런스 오일을<br>사용하여, 더 좋은 향기를 만듭니다.</p>
	    </div>
  	</div>  

</main>

</html>