package com.gwytest.action;

public class FenYe {
	private int pageNumber;
	private int totalPage;
	private int pageSize;
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage % pageSize == 0 ?(totalPage/pageSize):
			(totalPage/pageSize +1);
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
}
