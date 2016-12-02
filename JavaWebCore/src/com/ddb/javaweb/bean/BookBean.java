package com.ddb.javaweb.bean;

public class BookBean {
	private String bookName;
	private int bookNum;
	public BookBean() {
		//super();
	}
	/**
	 * @return the bookName
	 */
	public String getBookName() {
		return bookName;
	}
	/**
	 * @param bookName the bookName to set
	 */
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	/**
	 * @return the bookNum
	 */
	public int getBookNum() {
		return bookNum;
	}
	/**
	 * @param bookNum the bookNum to set
	 */
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}

}
