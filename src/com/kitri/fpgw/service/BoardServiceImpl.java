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
	
	//기본게시판리스트목록
	@Override
	public ArrayList<BoardMainDto> getSelectBasicList(BoardMainDto boardMainDto) throws Exception {
		
		return boardDao.SelectBoardList(boardMainDto);
	}

	//글쓰기
	@Override
	public void addArticle(BoardMainDto boardMainDto) throws Exception {

		boardDao.ArticleInsert(boardMainDto);
	}

	//첨부파일 추가
	@Override
	public void addFile(BoardMainDto boardMainDto) throws Exception {
		boardDao.InsertAttachFile(boardMainDto);
		
	}

	//게시글 상세보기
	@Override
	public BoardMainDto getArticle(int intSeq) throws Exception {
		
		return boardDao.SelectDetailView(intSeq);
	}
	
	//게시글 내부 댓글 리스트
	@Override
	public ArrayList<BoardMainDto> getCommentList(int intSeq) throws Exception {
		return boardDao.SelectCommentView(intSeq);
		
		}

	//내부 댓글 쓰기
	@Override
	public void addComment(BoardMainDto boardMainDto) throws Exception {
		boardDao.CommentInsert(boardMainDto);
			
	}


	//게시글 수정 하기
	@Override
	public void modifyArticle(BoardMainDto boardMainDto) throws Exception {
		
		boardDao.ArticleModify(boardMainDto);		
	}

	//게시글 삭제하기
	@Override
	public void deleteArticle(int intSeq) throws Exception {
		
		boardDao.ArticleDelete(intSeq);
		
	}

	//답글쓰기
	@Override
	public void addReply(BoardMainDto boardMainDto) throws Exception {
		
		boardDao.InsertReply(boardMainDto);
		
	}


	@Override
	public void increaseHit(int intSeq) throws Exception {
		// TODO Auto-generated method stub
		
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
	public void modifyComment(BoardCommentDto boardComentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteComment(int intSeq) throws Exception {
		// TODO Auto-generated method stub
		
	}


}
