package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.BoardDao;
import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	@Override
	public ArrayList<BoardMainDto> getSelectBasicList(BoardMainDto boardMainDto) throws Exception {
		
		return boardDao.SelectBoardList(boardMainDto);
	}

	@Override
	public int addArticle(BoardMainDto boardMainDto) throws Exception {

		return 0;
	}

	@Override
	public void addFile(BoardMainDto boardMainDto) throws Exception {
		
		
	}

	@Override
	public void modifyArticle(BoardMainDto boardMainDto) throws Exception {
	
		
	}

	@Override
	public void deleteArticle(int intSeq) throws Exception {
	
		
	}

	@Override
	public void increaseHit(int intSeq) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardMainDto getArticle(int intSeq) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardMainDto getNextArticle(int intSeq, String strKindCode, String searchWord) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardMainDto getPrevArticle(int intSeq, String strKindCode, String searchWord) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<BoardMainDto> getFileList(int intSeq) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteFile(int intBf_Seq) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getBoardName(String strBoardKind) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addComment(BoardCommentDto boardComentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyComment(BoardCommentDto boardComentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteComment(int intSeq) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<BoardCommentDto> getCommentList(int intSeq) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


}
