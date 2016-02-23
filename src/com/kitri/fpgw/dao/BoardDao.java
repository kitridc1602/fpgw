package com.kitri.fpgw.dao;

import java.util.ArrayList;

import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;

public interface BoardDao {
	
	//메인게시글리스트
	public ArrayList<BoardMainDto> SelectBoardList() throws Exception;
	//게시글 검색
	public ArrayList<BoardMainDto> SelectSearchList () throws Exception;
	//메인 게시글쓰기
	public void ArticleInsert(BoardMainDto boardMainDto) throws Exception;
	//댓글 쓰기
	public void CommentInsert(BoardCommentDto boardCommentDto) throws Exception;
	//게시글 수정
	public void ArticleModify(BoardMainDto boardMainDto) throws Exception;
	//댓글 수정
	public void CommentModify(BoardCommentDto boardCommentDto)throws Exception;
	//게시글 삭제
	public void ArticleDelete(BoardCommentDto boardMainDto) throws Exception;
	//댓글 삭제
	public void CommentDelete(BoardCommentDto boardCommentDto) throws Exception;
	
	
	
	
		
}
