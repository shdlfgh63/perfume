<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<main class="container-fluid my-5 py-5">

<h4 style="text-align:center">관리자 메뉴</h4>
<br><br>
  <div class="container" id="input-group">
  
    <div class="row">	
	
	<tiles:insertAttribute name="one"/>	
	<tiles:insertAttribute name="two"/>
	
	</div>
		  
  </div>
</main>	

