package com.kitri.fpgw.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;
import com.kitri.fpgw.model.CodeManageDto;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;
	
	//게시글 목록
	@Override
	public ArrayList<BoardMainDto> SelectBoardList(BoardMainDto boardMainDto) throws Exception {
		
		List<BoardMainDto> list = SqlSessionTemplate.selectList("SelectBoardList", boardMainDto);
		
		return (ArrayList<BoardMainDto>) list;	
	}
	
	//글쓰기
	@Override
	public void ArticleInsert(BoardMainDto boardMainDto) throws Exception {
		SqlSessionTemplate.insert("ArticleInsert", boardMainDto);
			
	}
	
	//게시글 상세보기
	@Override
	public BoardMainDto SelectDetailView(int intSeq) throws Exception {
		
		BoardMainDto boardMainDto = SqlSessionTemplate.selectOne("SelectDetailView", intSeq);
		
		return boardMainDto;
	}
	
	//댓글 리스트
	@Override
	public ArrayList<BoardCommentDto> SelectCommentView(int intSeq) throws Exception {

		List<BoardCommentDto> commentList = SqlSessionTemplate.selectList("SelectCommentView", intSeq);	
		
		return (ArrayList<BoardCommentDto>) commentList;
	}
	
	//게시글 수정하기
	@Override
	public void ArticleModify(BoardMainDto boardMainDto) throws Exception {
		
		SqlSessionTemplate.update("ArticleUpdate", boardMainDto);	
	}

	//게시글 삭제하기
	@Override
	public void ArticleDelete(int intSeq)throws Exception {
		
		SqlSessionTemplate.delete("ArticleDelete", intSeq);
			
		}

	@Override
	public ArrayList<BoardMainDto> SelectSearchList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	//첨부파일 추가
	@Override
	public void InsertAttachFile(BoardMainDto boardMainDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void CommentInsert(BoardCommentDto boardCommentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	

	@Override
	public void CommentModify(BoardCommentDto boardCommentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public void CommentDelete(BoardCommentDto boardCommentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
	

}
