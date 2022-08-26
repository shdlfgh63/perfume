<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	  <!-- 사이드 바 -->
	  <div class="flex-shrink-0 p-3 bg-white col-md-4" id="adminside" style="width: 280px;">
	    <a href="/admin/board" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
	      <span class="fs-5 fw-semibold">Admin</span>
	    </a>
	  
	    <ul class="list-unstyled ps-0">
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#board-collapse" aria-expanded="false">
	          Board
	        </button>
	        <div class="collapse" id="board-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="/admin/board?type=NOTICE" class="link-dark rounded">공지사항</a></li>
	            <li><a href="/admin/board?type=FAQ" class="link-dark rounded">FAQ</a></li>
	            <li><a href="/admin/board?type=BENEFIT" class="link-dark rounded">혜택안내</a></li>
	          </ul>
	        </div>
	      </li>
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
	          Event
	        </button>
	        <div class="collapse" id="dashboard-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="/admin/event?type=EVENT" class="link-dark rounded">이벤트 리스트</a></li>
	            <li><a href="/admin/event?type=WINNER" class="link-dark rounded">당첨자 관리</a></li>	            
	          </ul>
	        </div>
	      </li>
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
	          상품관리
	        </button>
	        <div class="collapse" id="orders-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="/admin/product" class="link-dark rounded">상품등록 및 수정</a></li>
	          </ul>
	        </div>
	      </li>
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#untitle-collapse" aria-expanded="false">
	          주문관리
	        </button>
	        <div class="collapse" id="untitle-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="#" class="link-dark rounded">신규주문</a></li>
	            <li><a href="#" class="link-dark rounded">배송중인 주문</a></li>
	            <li><a href="#" class="link-dark rounded">완료된 주문</a></li>
	          </ul>
	        </div>
	      </li>	      
	      <li class="border-top my-3"></li>
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
	          Account
	        </button>
	        <div class="collapse" id="account-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="#" class="link-dark rounded">회원정보 관리</a></li>
	          </ul>
	        </div>
	      </li>
	    </ul>
	  </div>
	  <!-- 사이드 바 종료 -->