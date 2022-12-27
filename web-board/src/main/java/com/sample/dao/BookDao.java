package com.sample.dao;

import java.util.List;

import com.sample.util.Pagination;
import com.sample.util.SqlMapper;
import com.sample.vo.Book;

public class BookDao {
	
	@SuppressWarnings("unchecked")
	public List<Book> getBooks(Pagination pagination) {
		return (List<Book>)SqlMapper.selectList("books.getBooks", pagination);
	}
	
	public int getTotalRows() {
		return (Integer)SqlMapper.selectOne("books.getTotalRows");
	}
	
	public Book getBookByNo(int bookNo) {
		return (Book) SqlMapper.selectOne("books.getBookByNo", bookNo);
	}
}
