<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="container-fluid my-5 py-5">
  <div class="container">
		
	<h4 style="text-align:center">
		<c:if test="${param.h == 1}">
			진행중인 이벤트
		</c:if>	
		<c:if test="${param.h == 3}">
			종료된 이벤트
		</c:if>
		<br><br>		
	</h4>	
		
	<div align="center">			
		  	<p style="text-align:right;"><small>&nbsp; 작성일: ${event.regdate} &nbsp;&nbsp;&nbsp; 조회수: ${event.hit}</small></p>
		<table class="table table-bordered">
		  <tbody>
		  	<tr>
		  		<th class="col-md-2 event-detail">제목</th>
		  		<td class="col-md-10 event-detail">${event.title}</td>
		    </tr>
		    <tr>
		    	<th class="col-md-2 event-detail">작성자</th>
		    	<td class="col-md-10 event-detail">PERFUME</td>
		    </tr>
		  </tbody>
		  <caption>
	
			<img class="img-fluid col-md-12" src="${event.image}" alt="...">	
		  </caption>	
		</table>
	</div>
	
  </div>				
</main>