package com.kitri.fpgw.service;

import java.util.List;

import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;

public interface BoardService {
	
	//목록
	public List<BoardMainDto> getBMList() throws Exception;	
	//글쓰기
	public int addArticle(BoardMainDto boardMainDto);
	//첨부파일 추가
	public void addFile(BoardMainDto boardMainDto);
	//글수정
	public void modifyArticle(BoardMainDto boardMainDto);
	//글 삭제
	public void deleteArticle(int intSeq);
	//조회수 증가
	public void increaseHit(int intSeq);
	//상세보기
	public BoardMainDto getArticle(int intSeq);
	//다음글
	public BoardMainDto getNextArticle(int intSeq, String strKindCode, String searchWord);
	//이전글
	public BoardMainDto getPrevArticle(int intSeq, String strKindCode, String searchWord);
	//첨부파일리스트
	public List<BoardMainDto> getFileList(int intSeq);
	//첨부파일 삭제
	public void deleteFile(int intBf_Seq);
	//게시판 제목
	public String getBoardName(String strBoardKind);
	//댓글 쓰기
	public void addComment(BoardCommentDto boardComentDto);
	//댓글 수정
	public void modifyComment(BoardCommentDto boardComentDto);
	//댓글 삭제
	public void deleteComment(int intSeq);
	//댓글리스트
	public List<BoardCommentDto> getCommentList(int intSeq);
	//
	//페이징관련 나중에
	
}
