<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="container-fluid my-5 py-5">
  <div class="container">	
	
	<h4 style="text-align:center">SERVICE</h4>
	<br><br>	
		 	
	<form action="notice">
		<div class="container-fluid">
			<div class="row text-center">														
				<div class="row row-cols-1 row-cols-md-3 g-4">				
				  <c:if test="${param.type != '1' && param.type != null}">	
				  <div class="col">
				    <div class="notice-card card">
				      <button class="btn" name="type" value="1">
						<p class="notice-icon bi bi-megaphone"/>
						<p class="notice-icon-text">공지사항</p>
					  </button>
				    </div>
				  </div>
				  </c:if>
				  
				  <c:if test="${param.type != '2'}">
				  <div class="col">
				    <div class="notice-card card">
				      <button class="btn" name="type" value="2">
						<p class="notice-icon bi bi-info-circle"/>
						<p class="notice-icon-text">FAQ</p>
					  </button>
				    </div>
				  </div>
				  </c:if>
				  
				  <c:if test="${param.type != '3'}">
				  <div class="col">
				    <div class="notice-card card">
				      <a class="btn" href="/mypage/request">
						<p class="notice-icon bi bi-envelope"/>
						<p class="notice-icon-text">1:1문의</p>
					  </a>
				    </div>
				  </div>
				  </c:if>
				  
				  <c:if test="${param.type != '4'}">
				  <div class="col">
				    <div class="notice-card card">
				      <button class="btn" name="type" value="4">
						<p class="notice-icon bi bi-signpost-2"/>
						<p class="notice-icon-text">혜택안내</p>
					  </button>
				    </div>
				  </div>
				  </c:if>				  
				</div>			 			
			</div>	
		</div>
	</form>
	
	
	<!-- content 부분 -->
	<c:choose>
	  <c:when test="${param.type eq '1' || param.type eq null}">
		<div style="margin-top:70px; border-bottom:1px solid black">
			<h6 style="font:bold">공지사항<br><br><br></h6>
		</div>	
			
		<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">		
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="flush-headingOne">
		      <button class="accordion-button collapsed" type="button" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" style="font-size: 12px; text-align: center">
		      		<div class="col-md-9">제목</div>
		      		<div class="col-md-3" style="text-align: center;">작성일</div>
		      </button>
		    </h2>
		  </div>	
			  
		  <c:forEach var="notice" items="${noticeList}">
		    <div class="accordion-item">
		      <h2 class="accordion-header" id="flush-heading${notice.id}">
		        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
		        		data-bs-target="#flush-collapse${notice.id}" aria-expanded="false" 
		        		aria-controls="flush-collapse${notice.id}">
	     	  	  <div class="col-md-9">${notice.title}</div>
	      	  	  <div class="col-md-3" style="text-align: center;">${notice.regdate}</div>
		        </button>
		      </h2>
		      <div id="flush-collapse${notice.id}" class="accordion-collapse collapse" 
		      		aria-labelledby="flush-heading${notice.id}" data-bs-parent="#accordionFlushExample">
		        <div class="accordion-body board-content">${notice.content}</div>
		      </div>
			</div>    
		  </c:forEach>
		  <br>
		</div>  		  
	  </c:when>
	  
	  <c:when test="${param.type eq '2'}">

		<div style="margin-top:70px; border-bottom:1px solid black">
			<h6 style="font:bold">FAQ<br><br><br></h6>
		</div>	
			
		<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">		
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="flush-headingOne">
		      <button class="accordion-button collapsed" type="button" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" style="font-size: 12px; text-align: center">
		      		<div class="col-md-9">제목</div>
		      		<div class="col-md-3">작성일</div>
		      </button>
		    </h2>
		  </div>	
		  <c:forEach var="faq" items="${faqList}">
		    <div class="accordion-item">
		      <h2 class="accordion-header" id="flush-heading${faq.id}">
		        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
		        		data-bs-target="#flush-collapse${faq.id}" aria-expanded="false" 
		        		aria-controls="flush-collapse${faq.id}">
	     	  	  <div class="col-md-9">${faq.title}</div>
	      	  	  <div class="col-md-3" style="text-align: center;">${faq.regdate}</div>
		        </button>
		      </h2>
		      <div id="flush-collapse${faq.id}" class="accordion-collapse collapse" 
		      		aria-labelledby="flush-heading${faq.id}" data-bs-parent="#accordionFlushExample">
		        <div class="accordion-body">${faq.content}</div>
		      </div>
			</div>    
		  </c:forEach>
		  <br>   
		</div> 	  	  	  
	  </c:when>
	  
	  <c:when test="${param.type eq '3'}"></c:when>
	  
	  <c:when test="${param.type eq '4'}">
		<div style="margin-top:70px; text-align: center">
			<h6 style="font:bold; text-align: center">혜택안내<br><br><br></h6>
			<img class="img-fluid" alt="benefit" src="${benefit}" 
				 style="width: 720px;">	  
		</div>
	  </c:when> 
  </c:choose>
  
  </div>	
</main>
