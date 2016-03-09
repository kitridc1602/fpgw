package com.kitri.fpgw.controller;

import java.util.ArrayList;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.BoardCommentDto;
import com.kitri.fpgw.model.BoardMainDto;
import com.kitri.fpgw.service.BoardService;


@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	
	//寃뚯떆湲� 由ъ뒪�듃
	@RequestMapping(value="basicboardList.html")
	public ModelAndView basicboardList(String strGroup, String strKind ,String workkind, String subworkkind) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		BoardMainDto boardMainDto = new BoardMainDto();
		boardMainDto.setStrGroup(strGroup);
		boardMainDto.setStrKind(strKind);
				
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		
		//硫붿씤由ъ뒪�듃
		mav.addObject("list", list);
		
		//�긽�떒 移댄뀒怨좊━猷⑦듃 �옄�룞蹂�寃�    洹몃９ 移댁씤�듃 肄붾뱶濡� �굹以묒뿉 諛붽씀湲�
		if("001".equals(workkind)){
			mav.addObject("workKind", "寃뚯떆�뙋 >> 怨듭��궗�빆");
		} else if("002".equals(workkind)) {
			mav.addObject("workKind", "寃뚯떆�뙋 >> 遺��꽌蹂꾧쾶�떆�뙋");	
		} else if("003".equals(workkind)) {
			mav.addObject("workKind", "寃뚯떆�뙋 >> �옄�쑀寃뚯떆�뙋");	
		} else if("004".equals(workkind)) {
			mav.addObject("workKind", "寃뚯떆�뙋 >> KITRI STORY");	
		}
		//以묎컙遺�遺꾩옄�룞蹂�寃�
		if("001".equals(subworkkind)){
			mav.addObject("subworkkind","怨듭��궗�빆");
		}else if("002".equals(subworkkind)){
			mav.addObject("subworkkind","遺��꽌蹂꾧쾶�떆�뙋");
		}else if("003".equals(subworkkind)){
			mav.addObject("subworkkind","�옄�쑀寃뚯떆�뙋");
		}else if("004".equals(subworkkind)){
			mav.addObject("subworkkind","KITRI STORY");
		}
						
		mav.setViewName("jsp/board/basicboardList");
		
		
		return mav;
		
	}
		
	//湲��벐湲� 踰꾪듉 �늻瑜대㈃~~
		@RequestMapping(value="/writego.html")
		public String writeGo(){

			return "jsp/board/basicBoardWrite"; 
		}
		
	//寃뚯떆�뙋 �씪諛섍��벐湲�
	@RequestMapping(value="basicBoardWrite.html", method=RequestMethod.POST)
	public ModelAndView insert(BoardMainDto boardMainDto) throws Exception {
				
		boardService.addArticle(boardMainDto);
		
		ModelAndView mav= new ModelAndView();
		
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");
		
		return mav;
		
	}
	
	//�떟湲�踰꾪듉 �겢由��떆 �씠�룞~~	
	@RequestMapping (value="/rewritego.html")
	public ModelAndView reWriteGo(@RequestParam(value="num") int intSeq ) throws Exception{
		
		ModelAndView mav =new ModelAndView();
		BoardMainDto boardMainDto = boardService.getArticle(intSeq);
		mav.addObject("reply", boardMainDto);
		mav.setViewName("jsp/board/replyWrite");
		
		return mav;
	}
	
	//�떟湲��벐湲�
	@RequestMapping(value="/rewrite.html")
	public ModelAndView replyInsert(BoardMainDto boardMainDto) throws Exception {
		
		boardService.addReply(boardMainDto);
		ModelAndView mav = new ModelAndView();
		
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");
		
		return mav;
	}
	
	//�뙎湲��엯�젰
	@RequestMapping(value="/addComment.html")
	public @ResponseBody String addComment(BoardMainDto boardMainDto) throws Exception{
		
		//�엯�젰
		
		boardService.addComment(boardMainDto);
		
		JSONObject json = new JSONObject();
		json.put("result", "sucess");
		
		return json.toJSONString();
	}
	
	//�뙎湲� �궘�젣�븯湲�
			@RequestMapping(value="/deletecomment.html")
			public ModelAndView deleteComment(@RequestParam(value="num") int intSeq, BoardMainDto boardMainDto) throws Exception{
				boardService.deleteArticle(intSeq);
				
				System.out.println(intSeq);
				
				ModelAndView mav= new ModelAndView();
				ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
				mav.addObject("list", list);
				mav.setViewName("jsp/board/basicboardList");
				
				return mav;
				 
			}
	
	
	//湲� �닔�젙而⑦듃濡�
			@RequestMapping(value="/modifygo.html")
			public ModelAndView modifyGo(@RequestParam(value="num") int intSeq )throws Exception{
				
				ModelAndView mav =new ModelAndView();
				
				BoardMainDto boardMainDto = boardService.getArticle(intSeq);		
				mav.addObject("read", boardMainDto);				
				mav.setViewName("jsp/board/basicboardModify");
				
				return mav; 
			}
	
	//湲� �닔�젙 �븯湲�
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
	
	//湲� �궘�젣�븯湲�
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
	
	//湲� �긽�꽭蹂닿린 �뵆�윭�뒪 �뙎湲�由ъ뒪�듃,
	@RequestMapping(value="/read.html")
	public ModelAndView detailView(@RequestParam(value="num") int intSeq)throws Exception{
		
		ModelAndView mav= new ModelAndView();
				
		BoardMainDto boardMainDto = boardService.getArticle(intSeq);		
		mav.addObject("read", boardMainDto);
		
		ArrayList<BoardMainDto> commentList = boardService.getCommentList(intSeq);
		mav.addObject("commentList",commentList );
		
		mav.setViewName("jsp/board/basicboardView");
				
		return mav;
	}
	
	
	
}
