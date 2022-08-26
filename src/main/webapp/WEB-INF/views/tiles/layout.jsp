<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!doctype html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
		
	<!-- CSS파일 -->		
	<link rel="stylesheet" href="/css/main.css" type="text/css"/>	
	
	<!-- 부트스트랩 아이콘 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.88.1">
	<title><tiles:getAsString name="title"/></title>
   
	<style>
		.bd-placeholder-img {
		  font-size: 1.125rem;
		  text-anchor: middle;
		  -webkit-user-select: none;
		  -moz-user-select: none;
		  user-select: none;
		}
		
		@media (min-width: 768px) {
		  	.bd-placeholder-img-lg {
		    	font-size: 3.5rem;
		  	}
		  	.header-menu-left {
		  		display: none;
		  	}
		}
		
		@media (max-width: 768px){
		  	.my-icon {
		  		display: none;
		  	}
		}
		
		.dropdown:hover .dropdown-menu {
		    display: block;
		    margin-top: 0;
		}
		
		.notice-icon {
			font-size: 50pt;
		}
		
		.notice-icon-text {
			font-weight: bold;
		}
		
		.event-menu-default {
			color: grey;
			font-size: 12pt;
		}
		
		.event-menu-onclick {
			color: black;
			font-size: 12pt;
			text-decoration: underline;
			text-underline-position: under;
		}
		
		.event-menu:hover {
			color: black;
		}
			
		.header-icon {
			font-size: 15pt
		}
		
		.header-menu-text {
			font-size: 11pt;
		}
		
		footer li {
			font-size: 9pt;
		}
		
		footer h6 {
			color: white;
			font-size: 10pt;
			font-weight: bold;
		}
		
		.dropdown-item {
			font-size: 9pt;
		}
		
		.footer-logo {
			margin-top: 20px;
			font-weight: bold;
			font-size: 34pt;
			color: grey;
			text-align: center;
		}
		
		.upper {
			margin-top: 100px; 
			padding-top: 50px;
		}
		
		.notice-card {
			background-color: #F8F8F8;
		}
		
		<!-- 호버링 블랙아웃 이펙트 구현 -->
		figure.effect-out {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: linear-gradient(to bottom, rgba(72,76,97,0) 0%, rgba(72,76,97,0.8) 75%);
			/* content: ''; */
			opacity: 0;
			transform: translate3d(0,50%,0);
		}
		
		figure.effect-out h2 {
			position: absolute;
			top: 50%;
			left: 0;
			width: 100%;
			/* color: #484c61; */
			color: black;
			transition: transform 0.35s, color 0.35s;
			transform: translate3d(0,-50%,0);
		}
				
		figure.effect-out p {
			position: absolute;
			bottom: 0;
			left: 0;
			padding: 2em;
			width: 100%;
			opacity: 0;
			transform: translate3d(0,10px,0);
			transition: opacity 0.35s, transform 0.35s;
		}
		
		figure.effect-out:hover {
			color: black;
			opacity: 0.7;
		}
				
		figure.effect-out:hover h2 {
			color: black;
			transform: translate3d(0,-50%,0) translate3d(0,-40px,0);
		}
		
		figure.effect-out:hover p {
			color: black;
			font-weight: bold;
			opacity: 1;
			transform: translate3d(0,-70%,0) translate3d(0,0,0);
		}		
		<!-- 호버링 블랙아웃 이펙트 구현 -->
	
		.event-detail {
			background-color: #F5F5F5;
		}
	</style>
</head>

<body>

	<!-- header 부분 -->
	<tiles:insertAttribute name="header"/>
	
	<!-- main 부분 -->
	<tiles:insertAttribute name="body"/>
	
	<!-- footer 부분 -->
	<tiles:insertAttribute name="footer"/>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
		  
</body>

</html>
