<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="container-fluid my-5 py-5">
  <div class="container">
			
	<h4 style="text-align:center">EVENT</h4>
	<br><br>
	<form action="event">
		
		<div class="row justify-content-md-center">			
			<div class="col-4" align="right">
				<c:choose>
					<c:when test="${param.type == '1' || param.type == null}">
						<button class="event-menu-onclick btn" name="type" value="1">
							진행중인 이벤트
						</button>
					</c:when>						
					<c:otherwise>
						<button class="event-menu-default btn" name="type" value="1">
							진행중인 이벤트
						</button>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div class="col-4" align="center">
				<c:choose>
					<c:when test="${param.type == '2'}">
						<button class="event-menu-onclick btn" name="type" value="2">
							당첨자 발표
						</button>
					</c:when>						
					<c:otherwise>
						<button class="event-menu-default btn" name="type" value="2">
							당첨자 발표
						</button>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div class="col-4" align="left">
				<c:choose>
					<c:when test="${param.type == '3'}">
						<button class="event-menu-onclick btn" name="type" value="3">
							종료된 이벤트
						</button>
					</c:when>						
					<c:otherwise>
						<button class="event-menu-default btn" name="type" value="3">
							종료된 이벤트
						</button>
					</c:otherwise>
				</c:choose>
			</div>										
		</div>
	</form>
	
	<c:choose>
		<c:when test="${param.type == '1' || param.type == null}">

			<br><br>
			<div class="row row-cols-1 row-cols-md-2 g-4">				
				<c:forEach var="event" items="${ingList}">					
				  <div class="col">
			    	<div class="card">			    	
				    	<form action="detail" method="post">
				    	  <input type="hidden" name="h" value="1"/>				
					      <button class="btn" name="p" value="${event.id}">
							<figure class="effect-out">
					      	  <img src="${event.thumbnail}" class="card-img-top" alt="">
					      	  <h2>${event.title}</h2>
					      	  <p>${event.startdate} ~ ${event.enddate} 까지</p>
							</figure>
					      </button>				      
					    </form>			      
				    </div>
				  </div>				  
				</c:forEach> 			  
			 </div>			
		</c:when>	
		
		<c:when test="${param.type == '2'}">
			<!-- content 부분 -->
			<br><br>
			<div style="border-bottom:1px solid black"></div>
			
			<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">
				
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingOne">
			      <button class="accordion-button collapsed" type="button" data-bs-target="#flush-collapseOne" 
			      			aria-expanded="false" aria-controls="flush-collapseOne" style="font-size: 12px; text-align: center">
			      	<div class="col-md-9">제목</div>
			      	<div class="col-md-3">작성일</div>
			      </button>
			    </h2>
			  </div>
				  
				  	
			  <c:forEach var="winner" items="${winnerList}">	
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-heading${winner.id}">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
				      			data-bs-target="#flush-collapse${winner.id}" aria-expanded="false" 
				      			aria-controls="flush-collapse${winner.id}">
			     	  	<div class="col-md-9">${winner.title}</div>
			      	  	<div class="col-md-3" style="text-align: center;">${winner.regdate}</div>
				      </button>
				    </h2>
				    <div id="flush-collapse${winner.id}" class="accordion-collapse collapse" 
				    				aria-labelledby="flush-heading${winner.id}" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">${winner.content}</div>
				    </div>
				  </div>
			  </c:forEach>    
			<br>  
			</div> 
		</c:when>	

		<c:when test="${param.type == '3'}">		
			<br><br>
			<div class="row row-cols-1 row-cols-md-2 g-4">			  
			  <c:forEach var="event" items="${endList}">
				<div class="col">							
			    	<div class="card">			    	
				    	<form action="detail" method="post">
				    	  <input type="hidden" name="h" value="3"/>				    	
					      <button class="btn" name="p" value="${event.id}">				
							<figure class="effect-out">
					      	  <img src="${event.thumbnail}" class="card-img-top" alt="">
					      	  <h2>${event.title}</h2>
					      	  <p>${event.enddate} 종료</p>
							</figure>
					      </button>				      
				    	</form>			      
				    </div>				    
				 </div>			  
			  </c:forEach> 			  			  
			</div>					
		 </c:when>		
	 </c:choose>

  </div>	
</main>
