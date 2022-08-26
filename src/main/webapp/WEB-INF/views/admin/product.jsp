<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	  <div class="container col-md-8">
	  	
	  	<div class="row">
	  	
		  <div class="col-md-3">
		  	<h5 style="font:bold">PRODUCT<br><br></h5>				
	      </div>
			
		  <div class="col-md-9" align="right">
			
		    <!-- 모달 시작 -->			    
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticNew">
			  New
			</button>
			
			<!-- Modal -->
			<div class="modal fade" id="staticNew" data-bs-kind="add" data-bs-backdrop="static" data-bs-keyboard="false" 
				tabindex="-1" aria-labelledby="staticNewLabel" aria-hidden="true">
			  <div class="modal-lg modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticNewLabel">상품 등록</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
				  
				  <form action="product" method="post" enctype="multipart/form-data">							  	 
				      <div class="modal-body">						
						  <!-- 게시글 작성 부분 -->	
						  <div class="col-md-auto">
						    
							<div class="input-group mb-3">										 
							  <span class="input-group-text">이름</span>
							  <input type="text" class="form-control" name="name" required>	
							  <span class="input-group-text">브랜드</span>
							  <input type="text" class="form-control" name="brand" required>									  
							</div>
							
						    <div class="input-group mb-3">
						      <span class="input-group-text">source1</span>
						      <input type="text" class="form-control" name="source1" required>
						      <span class="input-group-text">source2</span>
						      <input type="text" class="form-control" name="source2" required>
						      <span class="input-group-text">source3</span>
						      <input type="text" class="form-control" name="source3" required>
						    </div>

						    <div class="input-group mb-3">
						      <span class="input-group-text">price</span>
						      <input type="text" class="form-control" name="price" required>
						      <span class="input-group-text">price2</span>
						      <input type="text" class="form-control" name="price2" required>
						      <span class="input-group-text">price3</span>
						      <input type="text" class="form-control" name="price3" required>
						    </div>								  	
							
							<div class="form-control">
								<div class="input-group mb-3">										 
								  <span class="input-group-text">이미지</span>
								  <div class="form-control" align="center">
								  	<img id="imageExt-name" style="width: 400px;">										  											  						  
								  </div>
								</div>
								<div class="mb-3">
								  <input type="file" class="form-control" id="imageAdd" name="imgFile">
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
			
		  </div>			
		</div> 
		
	    <table class="table" style="border-top:1px solid black">
	      <thead>
	        <tr align="center">
	          <th scope="col">No.</th>
	          <th scope="col">제목</th>
	          <th scope="col">브랜드</th>
	          <th scope="col"></th>
	        </tr>	
	      </thead>
	    
	      <tbody align="center">
	        <c:forEach var="product" items="${productList}">	
	          <tr valign="middle">	
	            <td>${product.product_id}</td>	         
	            <td align="left">              	
	              	<!-- 모달 시작 -->	
					<!-- Button trigger modal -->
					<button type="button" 							class="btn btn-outling-*" 				data-bs-toggle="modal" 					
							data-bs-target="#productEdit" 				data-bs-kind="edit"
							data-bs-productId="${product.product_id}" 	data-bs-pName="${product.name}" 		data-bs-brand="${product.brand}"
							data-bs-source1="${product.source1}" 		data-bs-source2="${product.source2}" 	data-bs-source3="${product.source3}" 
							data-bs-price="${product.price}" 			data-bs-price2="${product.price2}" 		data-bs-price3="${product.price3}"
							data-bs-pImage="${product.image}">				 	
					  ${product.name}
					</button>
				
					<!-- Modal -->
					<div class="modal fade" id="productEdit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" 
						aria-labelledby="productEditLabel" aria-hidden="true">
					  <div class="modal-lg modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="productEditLabel">상품 수정</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
						  
						  <!-- 기존 글 수정 및 삭제 -->
						  <form action="productUpdate" method="post" enctype="multipart/form-data">							  	 
						      <div class="modal-body">						
								  <!-- 게시글 작성 부분 -->	
								  <div class="col-md-auto">
								    						    
								    <div class="input-group mb-3">
								      <span class="input-group-text">No</span>
								      <input readonly type="text" class="form-control modProductId" name="product_id">										      
								    </div>								    	    
								    
									<div class="input-group mb-3">										 
									  <span class="input-group-text">이름</span>
									  <input type="text" class="form-control modPName" name="name" id="pNameExt-name" required>	
									  <span class="input-group-text">브랜드</span>
									  <input type="text" class="form-control modBrand" name="brand" id="brandExt-name" required>									  
									</div>
									
								    <div class="input-group mb-3">
								      <span class="input-group-text">source1</span>
								      <input type="text" class="form-control modSource1" name="source1" id="source1Ext-name" required>
								      <span class="input-group-text">source2</span>
								      <input type="text" class="form-control modSource2" name="source2" id="source2Ext-name" required>
								      <span class="input-group-text">source3</span>
								      <input type="text" class="form-control modSource3" name="source3" id="source3Ext-name" required>
								    </div>

								    <div class="input-group mb-3">
								      <span class="input-group-text">price</span>
								      <input type="text" class="form-control modPrice" name="price" id="priceExt-name" required>
								      <span class="input-group-text">price2</span>
								      <input type="text" class="form-control modPrice2" name="price2" id="price2Ext-name" required>
								      <span class="input-group-text">price3</span>
								      <input type="text" class="form-control modPrice3" name="price3" id="price3Ext-name" required>
								    </div>								  	
									
									<div class="form-control">
										<div class="input-group mb-3">										 
										  <span class="input-group-text">이미지</span>
										  <div class="form-control" align="center">
										  	<img class="modPImage" id="pImageExt-name" style="width: 400px;">										  											  						  
										  </div>
										</div>
										<div class="mb-3">
										  <input type="file" class="form-control" id="pImageAdd" name="imgFile">
										</div>
									</div>
									
								  </div>
						
						      </div>
						      <div class="modal-footer">
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
	            <td>${product.brand}</td>
	            <td>
	            	<form action="productDelete">
	            		<input type="hidden" name="product_id" value="${product.product_id}">
	            		<input type="hidden" name="image" value="${product.image}">
		            	<button type="submit" class="btn btn-danger btn-sm">삭제</button>
	            	</form>
	            </td>
	          </tr>		        
	        </c:forEach>  	
	      </tbody>
	    </table>	  	  	  

	  </div>


<script>
	var productEdit = document.getElementById('productEdit')
	productEdit.addEventListener('show.bs.modal', function (event) {
		var button = event.relatedTarget
		
		var productIdExt = button.getAttribute('data-bs-productId')
		var pNameExt = button.getAttribute('data-bs-pName')
		var brandExt = button.getAttribute('data-bs-brand')
		var	source1Ext = button.getAttribute('data-bs-source1')
		var	source2Ext = button.getAttribute('data-bs-source2')
		var	source3Ext = button.getAttribute('data-bs-source3')
		var	priceExt = button.getAttribute('data-bs-price')
		var	price2Ext = button.getAttribute('data-bs-price2')
		var	price3Ext = button.getAttribute('data-bs-price3')

		var productIdInj = productEdit.querySelector('.modProductId')
		var pNameInj = productEdit.querySelector('.modPName')
		var brandInj = productEdit.querySelector('.modBrand')
		var source1Inj = productEdit.querySelector('.modSource1')
		var source2Inj = productEdit.querySelector('.modSource2')
		var source3Inj = productEdit.querySelector('.modSource3')
		var priceInj = productEdit.querySelector('.modPrice')
		var price2Inj = productEdit.querySelector('.modPrice2')
		var price3Inj = productEdit.querySelector('.modPrice3')

		productIdInj.value = productIdExt
		pNameInj.value = pNameExt
		brandInj.value = brandExt
		source1Inj.value = source1Ext
		source2Inj.value = source2Ext
		source3Inj.value = source3Ext
		priceInj.value = priceExt
		price2Inj.value = price2Ext
		price3Inj.value = price3Ext
		
		if(button.getAttribute('data-bs-kind') == 'add') {			
			var	imageExt = button.getAttribute('data-bs-image')
			
			var imageInj = productEdit.querySelector('.modImage')
			
			imageInj.src = imageExt	
		} else if(button.getAttribute('data-bs-kind') == 'edit') {				
			var	pImageExt = button.getAttribute('data-bs-pImage')
			var hidImgExt = button.getAttribute('data-bs-pImage')
			
			var pImageInj = productEdit.querySelector('.modPImage')
			var hidImgInj = productEdit.querySelector('.modHidImg')
			
			pImageInj.src = pImageExt	
			hidImgInj.value = hidImgExt
		}	
	})
	
	const imgReader = new FileReader();		
	imgReader.onload = function (readerEvent) {
		document.querySelector("#imageExt-name").setAttribute("src", readerEvent.target.result);
	};
	var imgChange = function (changeEvent) {
	    const imgFile = changeEvent.target.files[0];
	    imgReader.readAsDataURL(imgFile);
	};
	document.querySelector("#imageAdd").addEventListener("change", imgChange);			
	
	
	const pImgReader = new FileReader();		
	pImgReader.onload = function (readerEvent) {
		document.querySelector("#pImageExt-name").setAttribute("src", readerEvent.target.result);
	};

	var pImgChange = function (changeEvent) {
	    const imgFile = changeEvent.target.files[0];
	    pImgReader.readAsDataURL(imgFile);
	};
	document.querySelector("#pImageAdd").addEventListener("change", pImgChange);			
	
</script>









