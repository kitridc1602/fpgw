package com.kitri.fpgw.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;
import com.kitri.fpgw.service.BoardService;


@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@RequestMapping(value="basicboardList.html")
	public ModelAndView basicboardList(String strGroup, String strKind ,String workkind, String subworkkind) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		BoardMainDto boardMainDto = new BoardMainDto();
		boardMainDto.setStrGroup(strGroup);
		boardMainDto.setStrKind(strKind);
				
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		
		//메인리스트
		mav.addObject("list", list);
		
		//상단 카테고리루트 자동변경    그룹 카인트 코드로 나중에 바꾸기
		if("001".equals(workkind)){
			mav.addObject("workKind", "게시판 >> 공지사항");
		} else if("002".equals(workkind)) {
			mav.addObject("workKind", "게시판 >> 부서별게시판");	
		} else if("003".equals(workkind)) {
			mav.addObject("workKind", "게시판 >> 자유게시판");	
		} else if("004".equals(workkind)) {
			mav.addObject("workKind", "게시판 >> KITRI STORY");	
		}
		//중간부분자동변경
		if("001".equals(subworkkind)){
			mav.addObject("subworkkind","공지사항");
		}else if("002".equals(subworkkind)){
			mav.addObject("subworkkind","부서별게시판");
		}else if("003".equals(subworkkind)){
			mav.addObject("subworkkind","자유게시판");
		}else if("004".equals(subworkkind)){
			mav.addObject("subworkkind","KITRI STORY");
		}
						
		mav.setViewName("jsp/board/basicboardList");
		
		
		return mav;
		
	}
		
	
	@RequestMapping(value="basicBoardWrite.html", method=RequestMethod.POST)
	public ModelAndView insert(String strTitle, String strDetailComment, 
		String strWriterCode,String strGroupCode, String strGroup,
		String strKindCode, String strKind) throws Exception {
		
		
		
		BoardMainDto boardMainDto = new BoardMainDto();
		boardMainDto.setStrDetailComment(strDetailComment);
		boardMainDto.setStrTitle(strTitle);
		boardMainDto.setStrWriterCode(strWriterCode);
		boardMainDto.setStrGroupCode(strGroupCode);
		boardMainDto.setStrGroup(strGroup);
		boardMainDto.setStrKindCode(strKindCode);
		boardMainDto.setStrKind(strKind);
		
		boardService.addArticle(boardMainDto);
		
		ModelAndView mav= new ModelAndView();
		
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");
		
		return mav;
		
	}
	
	//글쓰기 
	@RequestMapping(value="/writego.html")
	public String writeGo(){

		return "jsp/board/basicBoardWrite"; 
	}
	
	//글 수정컨트롤
			@RequestMapping(value="/modifygo.html")
			public ModelAndView modifyGo(@RequestParam(value="num") int intSeq )throws Exception{
				
				ModelAndView mav =new ModelAndView();
				
				BoardMainDto boardMainDto = boardService.getArticle(intSeq);		
				mav.addObject("read", boardMainDto);
				
				mav.setViewName("jsp/board/basicboardModify");
				
				return mav; 
			}
	
	//글 수정 하기
	@RequestMapping(value="/modify.html")
	public ModelAndView update(BoardMainDto boardMainDto)throws Exception{
		
		
		boardMainDto.setStrDetailComment(boardMainDto.getStrDetailComment());
		boardMainDto.setStrTitle(boardMainDto.getStrTitle());
		
		System.out.println(boardMainDto.getStrTitle());
		
		boardService.modifyArticle(boardMainDto);
	
		ModelAndView mav = new ModelAndView();
		
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");
		
		return mav;
	}
	
	//글 삭제하기
	@RequestMapping(value="/delete.html")
	public ModelAndView deleteGo(@RequestParam(value="num") int intSeq) throws Exception{
		boardService.deleteArticle(intSeq);
		
		System.out.println(intSeq);
		
		ModelAndView mav = new ModelAndView();
		
		BoardMainDto boardMainDto = new BoardMainDto();
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");
		
		return mav;
		 
	}
	
	//글 상세보기
	@RequestMapping(value="/read.html")
	public ModelAndView detailView(@RequestParam(value="num") int intSeq)throws Exception{
		
		ModelAndView mav= new ModelAndView();
				
		BoardMainDto boardMainDto = boardService.getArticle(intSeq);		
		mav.addObject("read", boardMainDto);
		
		/*ArrayList <BoardCommentDto> commentList = boardService.getCommentList(intSeq);
		mav.addObject("readComment",commentList );
		*/
		mav.setViewName("jsp/board/basicboardView");
				
		return mav;
	}
	
	
}
