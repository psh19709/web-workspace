package com.sample.dao;

import java.util.List;
import java.util.Map;

import com.sample.util.SqlMapper;
import com.sample.vo.Board;

public class BoardDao {
	
	@SuppressWarnings("unchecked")
	public List<Board> getBoards(Map<String, Object> param)	{
		return(List<Board>)SqlMapper.selectList("boards.getBoards", param);
	}
	
	public void insertBoard(Board board) {
		SqlMapper.insert("boards.insertBoard", board);
	}
	
	public int getTotalRows(Map<String , Object> param) {
		return (Integer)SqlMapper.selectOne("boards.getTotalRows", param);
	}
	
	public Board getBoardByNo(int boardNo) {
		return (Board)SqlMapper.selectOne("boards.getBoardByNo", boardNo);
	}
	
	public void updateBoard(Board board) {
		SqlMapper.update("boards.updateBoard", board);
	}
	
	public void deleteBoardByNo(int boardNo) {
		SqlMapper.delete("boards.deleteBoardByNo", boardNo);
	}

}
