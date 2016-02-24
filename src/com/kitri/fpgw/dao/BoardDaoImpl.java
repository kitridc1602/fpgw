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
	
	@Override
	public ArrayList<BoardMainDto> SelectBoardList(BoardMainDto boardMainDto) throws Exception {
		
		List<BoardMainDto> list = SqlSessionTemplate.selectList("SelectBoardList", boardMainDto);
		
		return (ArrayList<BoardMainDto>) list;	
	}

	@Override
	public ArrayList<BoardMainDto> SelectSearchList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void ArticleInsert(BoardMainDto boardMainDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void CommentInsert(BoardCommentDto boardCommentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void ArticleModify(BoardMainDto boardMainDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void CommentModify(BoardCommentDto boardCommentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void ArticleDelete(BoardCommentDto boardMainDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void CommentDelete(BoardCommentDto boardCommentDto) throws Exception {
		// TODO Auto-generated method stub
		
	}
	

}
