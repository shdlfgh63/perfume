<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	  <div class="container col-md-8">
	  	
	  	<div class="row">
	  	
		  <div class="col-md-3">
		  	<h5 style="font:bold">${param.type}<br><br></h5>				
	      </div>
			
		  <div class="col-md-9" align="right">
			
		    <!-- 모달 시작 -->			    
		    <c:choose>	    		  	  		    
		      <c:when test="${param.type eq 'WINNER'}">		      
		    
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticNew">
				  New
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="staticNew" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticNewLabel" aria-hidden="true">
				  <div class="modal-lg modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticNewLabel">새 게시글 작성</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
					  
					  <form action="board" method="post">
					      <div class="modal-body">
					
							  <!-- 게시글 작성 부분 -->	
							  <div class="col-md-auto">
								<div class="input-group mb-3">
								  <span class="input-group-text">제목</span>
								  <input type="text" class="form-control" name="title" required>
								</div>
								
								<div class="input-group">
								  <span class="input-group-text">내용</span>
								  <textarea class="form-control" name="content" style="height: 700px" wrap="hard" required></textarea>
								</div>					
							  </div>
					
					      </div>
					      <div class="modal-footer">
					        <input type="hidden" name="category" value="${param.type}">
					        <button type="submit" class="btn btn-primary">저장</button>
					        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					      </div>
					  </form>
					  
				    </div>
				  </div>
				</div>
				<!-- 모달 종료 -->
			  </c:when>
			  
		      <c:when test="${param.type eq 'EVENT'}">		      
		    
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticNew">
				  New
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="staticNew" data-bs-kind="event" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticNewLabel" aria-hidden="true">
				  <div class="modal-lg modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticNewLabel">새 이벤트 등록</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
					  
					  <form action="event" method="post" enctype="multipart/form-data">							  	 
					      <div class="modal-body">						
							  <!-- 게시글 작성 부분 -->	
							  <div class="col-md-auto">
							    
							    <div class="input-group mb-3">
							      <span class="input-group-text">시작일</span>
							      <input type="date" class="form-control" name="startdate" required>
							      <span class="input-group-text">종료일</span>
							      <input type="date" class="form-control" name="enddate" required>
							    </div>
							  
								<div class="input-group mb-3">										 
								  <span class="input-group-text">제목</span>
								  <input type="text" class="form-control modTitle" name="title" required>									  
								</div>
								
								<div class="form-control mb-3">
									<div class="input-group mb-3">										 
									  <span class="input-group-text">썸네일</span>
									  <div class="form-control" align="center">
									    <img id="thnExt-name" src="" style="width: 400px">
									  </div>
									</div>
									<div class="mb-3">
									  <input type="file" class="form-control" id="thnAdd" name="thnFile" required>											 									  								  										
									</div>
								</div>
								
								<div class="form-control">
									<div class="input-group mb-3">										 
									  <span class="input-group-text">이미지</span>
									  <div class="form-control" align="center">
  									    <img id="imgExt-name" src="" style="width: 400px">										  
									  </div>
									</div>
									<div class="mb-3">
									  <input type="file" class="form-control" id="imgAdd" name="imgFile" required>
									</div>
								</div>								
							  </div>
					
					      </div>
					      <div class="modal-footer">
					        <button type="submit" class="btn btn-primary">등록</button>
					        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					      </div>
					  </form>
					  
				    </div>
				  </div>
				</div>
				<!-- 모달 종료 -->
				
			  </c:when>		
			  		  				
			</c:choose>						
							
		  </div>			
		</div>

	 	  
		<c:choose>
		  
		  <c:when test="${param.type eq 'EVENT'}">	
		    <table class="table" style="border-top:1px solid black">
		      <thead>
		        <tr align="center">
		          <th scope="col">No.</th>
		          <th scope="col">제목</th>
		          <th scope="col">이벤트 기간</th>
		          <th scope="col">작성일</th>
		          <th scope="col"></th>
		        </tr>	
		      </thead>
		    
		      <tbody align="center">
		        <c:forEach var="event" items="${eventList}">	
		          <tr valign="middle">	
		            <td>${event.id}</td>	         
		            <td align="left">              	
		              	<!-- 모달 시작 -->	
						<!-- Button trigger modal -->
						<button id="eventUpdateButton" type="button" class="btn btn-outling-*" data-bs-toggle="modal" data-bs-target="#eventEdit" 
								data-bs-id="${event.id}" data-bs-title="${event.title}" data-bs-regdate="${event.regdate}"
								data-bs-startdate="${event.startdate}" data-bs-enddate="${event.enddate}"
								data-bs-thumbnail="${event.thumbnail}" data-bs-image="${event.image}" data-bs-kind="eventEdit">	
						  ${event.title}
						</button>
					
						<!-- Modal -->
						<div class="modal fade" id="eventEdit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="eventEditLabel" aria-hidden="true">
						  <div class="modal-lg modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="eventEditLabel">이벤트 수정</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
							  
							  <!-- 기존 글 수정 및 삭제 -->
							  <form action="eventUpdate" method="post" enctype="multipart/form-data">							  	 
							      <div class="modal-body">						
									  <!-- 게시글 작성 부분 -->	
									  <div class="col-md-auto">
									    <div class="input-group mb-3">
									      <span class="input-group-text">No</span>
									      <input readonly type="text" class="form-control modId" name="id" id="idExt-name">	
									      <span class="input-group-text">게시일</span>
									      <input readonly type="text" class="form-control modRegdate" name="regdate" id="regdateExt-name">										      
									    </div>
									    
									    <div class="input-group mb-3">
									      <span class="input-group-text">시작일</span>
									      <input type="date" class="form-control modStartdate" name="startdate" id="startdateExt-name" required>
									      <span class="input-group-text">종료일</span>
									      <input type="date" class="form-control modEnddate" name="enddate" id="enddateExt-name" required>
									    </div>
									  
										<div class="input-group mb-3">										 
										  <span class="input-group-text">제목</span>
										  <input type="text" class="form-control modTitle" name="title" id="titleExt-name" required>									  
										</div>
										
										<div class="form-control mb-3">
											<div class="input-group mb-3">										 
											  <span class="input-group-text">썸네일</span>
											  <div class="form-control" align="center">
												<img class="modThumbnail" id="thumbnailExt-name" src="#" style="width: 400px" align="middle">
											  </div>
											</div>
											<div class="mb-3">
											  <input type="file" class="form-control" id="thumbnailAdd" name="thnFile">											 									  								  										
											</div>
										</div>
										
										<div class="form-control">
											<div class="input-group mb-3">										 
											  <span class="input-group-text">이미지</span>
											  <div class="form-control" align="center">
											  	<img class="modImage" id="imageExt-name" src="#" style="width: 400px;">										  											  						  
											  </div>
											</div>
											<div class="mb-3">
											  <input type="file" class="form-control" id="imageAdd" name="imgFile">
											</div>
										</div>
										
									  </div>
							
							      </div>
							      <div class="modal-footer">
							        <input type="hidden" class="modHidThn" id="hidThnExt-name" name="thumbnail">
							        <input type="hidden" class="modHidImg" id="hidImgExt-name" name="image">							      
							        <button type="submit" class="btn btn-primary">수정</button>
							        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
							      </div>
							  </form>
							  
						    </div>
						  </div>
						</div>
						<!-- 모달 종료 -->	
			
		            </td>			          
		            <td>${event.startdate}<br> ~ ${event.enddate}</td>    
		            <td>${event.regdate}</td>
		            <td>
		            	<form action="eventDelete">
		            		<input type="hidden" name="image" value="${event.image}">
		            		<input type="hidden" name="thumbnail" value="${event.thumbnail}">
		            		<input type="hidden" name="id" value="${event.id}">
			            	<button type="submit" class="btn btn-danger btn-sm">삭제</button>
		            	</form>
		            </td>
		          </tr>		        
		        </c:forEach>  	
		      </tbody>
		    </table>	  	  	  
		  </c:when>
		  
		  
		  
		  <c:when test="${param.type eq 'WINNER'}">	
		    <table class="table" style="border-top:1px solid black">
		      <thead>
		        <tr align="center">
		          <th scope="col">No.</th>
		          <th scope="col">제목</th>
		          <th scope="col">작성일</th>
		          <th scope="col"></th>
		        </tr>	
		      </thead>
		    
		      <tbody align="center">
		        <c:forEach var="winner" items="${winnerList}">	
		          <tr valign="middle">	
		            <td>${winner.id}</td>	         
		            <td align="left">              	
		              	<!-- 모달 시작 -->	
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outling-*" data-bs-toggle="modal" data-bs-target="#eventEdit" 
							data-bs-id="${winner.id}" data-bs-title="${winner.title}" data-bs-content="${winner.content}" 
							data-bs-regdate="${winner.regdate}" data-bs-kind="winner">
						  ${winner.title}
						</button>
					
						<!-- Modal -->
						<div class="modal fade" id="eventEdit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="eventEditLabel" aria-hidden="true">
						  <div class="modal-lg modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="eventEditLabel">게시글 수정</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
							  
							  <!-- 기존 글 수정 및 삭제 -->
							  <form action="boardUpdate" method="post">							  	 
							      <div class="modal-body">						
									  <!-- 게시글 작성 부분 -->	
									  <div class="col-md-auto">
									    <div class="input-group mb-3">
									      <span class="input-group-text">No</span>
									      <input readonly type="text" class="form-control modId" name="id" id="idExt-name">	
									      <span class="input-group-text">게시일</span>
									      <input readonly type="text" class="form-control modRegdate" name="regdate" id="regdateExt-name">										      
									    </div>
									  
										<div class="input-group mb-3">										 
										  <span class="input-group-text">제목</span>
										  <input type="text" class="form-control modTitle" name="title" id="titleExt-name" required>									  
										</div>
										
										<div class="input-group">
										  <span class="input-group-text">내용</span>
										  <textarea class="form-control modContent" name="content" style="height: 700px" id="contentExt-name" required></textarea>
										</div>					
									  </div>
							
							      </div>
							      <div class="modal-footer">
							        <input type="hidden" name="category" value="${param.type}">>
							        <button type="submit" class="btn btn-primary">수정</button>
							        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
							      </div>
							  </form>
							  
						    </div>
						  </div>
						</div>
						<!-- 모달 종료 -->	
			
		            </td>			              
		            <td>${winner.regdate}</td>
		            <td>
		            	<form action="boardDelete">
		            		<input type="hidden" name="id" value="${winner.id}">
		            	    <input type="hidden" name="category" value="${param.type}">
			            	<button type="submit" class="btn btn-danger btn-sm">삭제</button>
		            	</form>
		            </td>
		          </tr>		        
		        </c:forEach>  	
		      </tbody>
		    </table>	  	  	  
		  </c:when>

	    </c:choose>	

	  </div>


<script>

	var eventEdit = document.getElementById('eventEdit')
	eventEdit.addEventListener('show.bs.modal', function (event) {
		var button = event.relatedTarget
		
			var idExt = button.getAttribute('data-bs-id')
			var titleExt = button.getAttribute('data-bs-title')
			var	regdateExt = button.getAttribute('data-bs-regdate')

			var idInj = eventEdit.querySelector('.modId')
			var titleInj = eventEdit.querySelector('.modTitle')
			var regdateInj = eventEdit.querySelector('.modRegdate')

			idInj.value = idExt
			titleInj.value = titleExt
			regdateInj.value = regdateExt

		if(button.getAttribute('data-bs-kind') == 'winner') {

			var contentExt = button.getAttribute('data-bs-content')
			
			var contentInj = eventEdit.querySelector('.modContent')
			
			contentInj.value = contentExt	
		
		} else if(button.getAttribute('data-bs-kind') == 'event') {
			
			var thnExt = button.getAttribute('data-bs-thumbnail')
			var imgExt = button.getAttribute('data-bs-image')
			
			var thnInj = eventEdit.querySelector('.modThumbnail')
			var imgInj = eventEdit.querySelector('.modImage')
			
			thnInj.src = thnExt
			imgInj.src = imgExt
			
		} else if(button.getAttribute('data-bs-kind') == 'eventEdit') {
			
			var	startdateExt = button.getAttribute('data-bs-startdate')
			var	enddateExt = button.getAttribute('data-bs-enddate')
			var thumbnailExt = button.getAttribute('data-bs-thumbnail')
			var imageExt = button.getAttribute('data-bs-image')
			var hidThnExt = button.getAttribute('data-bs-thumbnail')
			var hidImgExt = button.getAttribute('data-bs-image')
				
			var startdateInj = eventEdit.querySelector('.modStartdate')
			var enddateInj = eventEdit.querySelector('.modEnddate')
			var thumbnailInj = eventEdit.querySelector('.modThumbnail')
			var imageInj = eventEdit.querySelector('.modImage')
			var hidThnInj = eventEdit.querySelector('.modHidThn')
			var hidImgInj = eventEdit.querySelector('.modHidImg')
					
			startdateInj.value = startdateExt
			enddateInj.value = enddateExt
			thumbnailInj.src = thumbnailExt
			imageInj.src = imageExt
			hidThnInj.value = hidThnExt
			hidImgInj.value = hidImgExt
			
		}		
	})
 	
	const thnReader = new FileReader();		
	thnReader.onload = function (readerEvent) {	
	    document.querySelector("#thumbnailExt-name").setAttribute("src", readerEvent.target.result);			
	};

	const imgReader = new FileReader();		
	imgReader.onload = function (readerEvent) {
		document.querySelector("#imageExt-name").setAttribute("src", readerEvent.target.result);
	};
	
	var thnChange = function (changeEvent) {
	    const imgFile = changeEvent.target.files[0];
	    thnReader.readAsDataURL(imgFile);
	};

	var imgChange = function (changeEvent) {
	    const imgFile = changeEvent.target.files[0];
	    imgReader.readAsDataURL(imgFile);
	};
	
	document.querySelector("#thumbnailAdd").addEventListener("change", thnChange);		
	document.querySelector("#imageAdd").addEventListener("change", imgChange);			
 	
	const thnAddReader = new FileReader();		
	thnAddReader.onload = function (readerEvent) {	
	    document.querySelector("#thnExt-name").setAttribute("src", readerEvent.target.result);			
	};

	const imgAddReader = new FileReader();		
	imgAddReader.onload = function (readerEvent) {
		document.querySelector("#imgExt-name").setAttribute("src", readerEvent.target.result);
	};
	
	var thnAddChange = function (changeEvent) {
	    const imgFile = changeEvent.target.files[0];
	    thnAddReader.readAsDataURL(imgFile);
	};

	var imgAddChange = function (changeEvent) {
	    const imgFile = changeEvent.target.files[0];
	    imgAddReader.readAsDataURL(imgFile);
	};
	
	document.querySelector("#thnAdd").addEventListener("change", thnAddChange);		
	document.querySelector("#imgAdd").addEventListener("change", imgAddChange);			
	
	
</script>



	  