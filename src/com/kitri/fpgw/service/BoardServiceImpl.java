package com.kitri.fpgw.service;

import java.util.List;

import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;

public class BoardServiceImpl implements BoardService {

	@Override
	public List<BoardMainDto> getBMList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addArticle(BoardMainDto boardMainDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void addFile(BoardMainDto boardMainDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyArticle(BoardMainDto boardMainDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteArticle(int intSeq) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void increaseHit(int intSeq) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardMainDto getArticle(int intSeq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardMainDto getNextArticle(int intSeq, String strKindCode, String searchWord) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardMainDto getPrevArticle(int intSeq, String strKindCode, String searchWord) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardMainDto> getFileList(int intSeq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteFile(int intBf_Seq) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getBoardName(String strBoardKind) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addComment(BoardCommentDto boardComentDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyComment(BoardCommentDto boardComentDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteComment(int intSeq) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardCommentDto> getCommentList(int intSeq) {
		// TODO Auto-generated method stub
		return null;
	}

}
