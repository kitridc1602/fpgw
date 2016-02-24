package com.kitri.fpgw.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.BoardMainDto;
import com.kitri.fpgw.service.BoardService;


@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@RequestMapping(value="basicboardList.html")
	public ModelAndView boardbasicList(String strGroup, String strKind ,String workkind, String subworkkind) throws Exception{
		
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
			mav.addObject("workKind", "게시판 >> 시스템공지사항");	
		}
		//중간부분자동변경
		if("001".equals(subworkkind)){
			mav.addObject("subworkkind","김미희");
		}
		
		
				
		mav.setViewName("jsp/board/basicboardList");
		
		
		return mav;
		
	}
	
	
}
