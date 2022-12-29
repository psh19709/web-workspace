package com.sample.dao;

import java.util.List;
import java.util.Map;

import com.sample.util.SqlMapper;
import com.sample.vo.Book;

public class BookDao {
	
	@SuppressWarnings("unchecked")
	public List<Book> getBooks(Map<String, Object> param) {
		return(List<Book>)SqlMapper.selectList("getBooks", param);
	}
	
	public void insertBook(Book book) {
		SqlMapper.insert("insertBook", book);
	}
	
	public Book getBookByNo(int bookNo) {
		return (Book)SqlMapper.selectOne("getBookByNo", bookNo);
	}
	
	public void deleteBookByNo(int bookNo) {
		SqlMapper.delete("deleteBookByNo", bookNo);
	}
	public void updateBook(Book book) {
		SqlMapper.update("updateBook", book);
	}
	public int getTotalRows() {
		return (Integer)SqlMapper.selectOne("getTotalRows");
	}
}
