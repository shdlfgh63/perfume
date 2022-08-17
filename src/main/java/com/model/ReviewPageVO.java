package com.model;

import java.util.List;

public class ReviewPageVO {

	List<ReviewVO> list;
	
	PageVO pageInfo;

	public List<ReviewVO> getList() {
		return list;
	}

	public void setList(List<ReviewVO> list) {
		this.list = list;
	}

	public PageVO getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageVO pageInfo) {
		this.pageInfo = pageInfo;
	}

	@Override
	public String toString() {
		return "ReviewPageVO [list=" + list + ", pageInfo=" + pageInfo + "]";
	}
	
	
	
}
