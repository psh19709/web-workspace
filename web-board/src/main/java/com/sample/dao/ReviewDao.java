package com.sample.dao;

import java.util.List;

import com.sample.util.SqlMapper;
import com.sample.vo.Review;

public class ReviewDao {
	
	public void insertReview(Review review) {
		SqlMapper.insert("reviews.insertReview", review);
	}
	
	@SuppressWarnings("unchecked")
	public List<Review> getReviewsByBoardNo(int boardNo) {
		return (List<Review>) SqlMapper.selectList("reviews.getReviewsByBoardNo", boardNo);
	}
	
	public void deleteReview(int reviewNo) {
		SqlMapper.delete("reviews.deleteReview", reviewNo);
	}

}
