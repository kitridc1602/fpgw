package com.kitri.fpgw.service;

import java.util.ArrayList;


import org.springframework.stereotype.Service;

import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;

@Service
public interface BoardService {
	
	//기본게시판목록
	public ArrayList<BoardMainDto> getSelectBasicList(BoardMainDto boardMainDto) throws Exception;	
	//글쓰기
	public int addArticle(BoardMainDto boardMainDto) throws Exception;
	//첨부파일 추가
	public void addFile(BoardMainDto boardMainDto) throws Exception;
	//글수정
	public void modifyArticle(BoardMainDto boardMainDto) throws Exception;
	//글 삭제
	public void deleteArticle(int intSeq) throws Exception;
	//조회수 증가
	public void increaseHit(int intSeq) throws Exception;
	//상세보기
	public BoardMainDto getArticle(int intSeq) throws Exception;
	//다음글
	public BoardMainDto getNextArticle(int intSeq, String strKindCode, String searchWord) throws Exception;
	//이전글
	public BoardMainDto getPrevArticle(int intSeq, String strKindCode, String searchWord) throws Exception;
	//첨부파일리스트
	public ArrayList<BoardMainDto> getFileList(int intSeq) throws Exception;
	//첨부파일 삭제
	public void deleteFile(int intBf_Seq) throws Exception;
	//게시판 제목
	public String getBoardName(String strBoardKind) throws Exception;
	//댓글 쓰기
	public void addComment(BoardCommentDto boardComentDto) throws Exception;
	//댓글 수정
	public void modifyComment(BoardCommentDto boardComentDto) throws Exception;
	//댓글 삭제
	public void deleteComment(int intSeq) throws Exception;
	//댓글리스트
	public ArrayList<BoardCommentDto> getCommentList(int intSeq) throws Exception;
	//
	//페이징관련 나중에
	
}
