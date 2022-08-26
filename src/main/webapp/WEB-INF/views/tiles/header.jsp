<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib	prefix="c"		uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib	prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="border-bottom">
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style="height:120px">
    <div class="container-fluid">
    
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <!-- 좌측 메뉴 영역 -->	
      <div class="header-menu-left collapse navbar-collapse col-md-4 justify-content-md-end" id="navbarCollapse" >
       
        <ul class="navbar-nav mr-auto" style="padding-top: 25px;">
          <li class="nav-item">
            <a class="header-menu-text nav-link" aria-current="page" href="#" style="font-size: 12pt; padding-top: 11px; padding-right: 40px; font-weight: bold;">Perfume Teller</a>
          </li>
          
		  <li class="nav-item dropdown" style="padding-top: 3px;">
		    <a class="header-menu-text nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false"  style="padding-top: 11px; font-size: 10pt; padding-right: 40px; font-weight: bold;">
		    	SHOP
		    </a>	
		    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		      <li><a class="dropdown-item" href="/shop/40ml"  style="font-size: 12pt;">40ml</a></li>
		      <li><a class="dropdown-item" href="/shop/curation" style="font-size: 12pt;">Curation</a></li>
		      <li><a class="dropdown-item" href="/shop/goods" style="font-size: 12pt;">GOODS</a></li>
		    </ul>
		  </li>
          
          <li class="nav-item">
            <a class="header-menu-text nav-link" aria-current="page" href="/perfume/about" style=" font-size: 12pt; padding-top: 12px; padding-right: 40px; font-weight: bold;">ABOUT</a>
          </li>
          <li class="nav-item">
            <a class="header-menu-text nav-link" aria-current="page" href="/event/event" style=" font-size: 12pt; padding-top: 12px; padding-right: 40px; font-weight: bold;">EVENT</a>
          </li>
        </ul>
       </div>

      <!-- 브랜드 부분 -->
      <div class="col-md-4" align="center" style="padding-top: 10px;" >
      	<a class="navbar-brand" href="/perfume/home" style="font-weight: bold; font-size: 28pt;">PERFUME</a>
      </div>
      
		<!-- 우층 메뉴 영역 -->
	  <div class="col-md-4" style="padding-top: 27px;">	
        <ul class="navbar-nav me-auto mb-2 mb-md-0 justify-content-md-center">
          <li class="nav-item my-icon">
            <c:if test="${sessionScope.member.id eq null}">
                <a class="nav-link" aria-current="page" href="/member/login">
                    <i class="header-icon bi bi-person-circle" style="font-size: 25px; padding-right: 10px;"></i>
                </a>
            </c:if>
              <c:if test="${not empty sessionScope.member.id}">
                  <a class="nav-link" aria-current="page" href="/myorder/${sessionScope.member.id}">
                      <i class="header-icon bi bi-person-circle" style="font-size: 25px; padding-right: 10px;"></i>
                  </a>
              </c:if>

          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="/mycart/id=${sessionScope.member.id}" >
				<i class="header-icon bi bi-minecart" style="font-size: 25px;"></i>
			</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>
</div>