package com.kitri.fpgw.dao;

import java.util.ArrayList;

import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;

public interface BoardDao {
	
	//기본게시글목록
	public ArrayList<BoardMainDto> SelectBoardList(BoardMainDto boardMainDto) throws Exception; 
	//게시글 상세보기
	public BoardMainDto SelectDetailView(int intSeq) throws Exception;
	//댓글리스트
	public ArrayList<BoardMainDto> SelectCommentView(int intSeq) throws Exception;
	//게시글 검색
	public ArrayList<BoardMainDto> SelectSearchList () throws Exception;
	//메인 게시글쓰기
	public void ArticleInsert(BoardMainDto boardMainDto) throws Exception;
	//답글쓰기
	public void InsertReply(BoardMainDto boardMainDto) throws Exception;
	//댓글 쓰기
	public void CommentInsert(BoardMainDto boardMainDto) throws Exception;
	
	
	//첨부파일 추가
	public void InsertAttachFile(BoardMainDto boardMainDto)throws Exception;
	
	//게시글 수정
	public void ArticleModify(BoardMainDto boardMainDto) throws Exception;
	//댓글 수정
	public void CommentModify(BoardCommentDto boardCommentDto)throws Exception;
	//게시글 삭제
	public void ArticleDelete(int intSeq) throws Exception;
	//댓글 삭제
	public void CommentDelete(BoardCommentDto boardCommentDto) throws Exception;
	
	
	
	
		
}
