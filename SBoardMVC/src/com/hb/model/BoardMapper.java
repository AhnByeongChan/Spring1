package com.hb.model;

import java.util.List;

import com.hb.vo.BoardVO;
import com.hb.vo.NaviVO;

public interface BoardMapper {
	public List<BoardVO> getBoardList(NaviVO nvo);
	public int getTotalRecode();
	public BoardVO getBoardDetail(BoardVO board);
	public void deleteBoard(BoardVO board);
	public void insertBoard(BoardVO board);
	public void updateBoard(BoardVO board);
}
