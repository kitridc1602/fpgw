package com.kitri.fpgw.controller;

import java.util.ArrayList;
import java.util.Date;

import org.json.simple.JSONArray;
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
@RequestMapping(value = "/board")
public class BoardController {

	@Autowired
	private BoardService boardService;

	// 기본 게시판 리스트
	@RequestMapping(value = "basicboardList.html")
	public ModelAndView basicboardList(String strGroup, String strKind, String workkind, String subworkkind)
			throws Exception {

		ModelAndView mav = new ModelAndView();

		BoardMainDto boardMainDto = new BoardMainDto();
		boardMainDto.setStrGroup(strGroup);
		boardMainDto.setStrKind(strKind);

		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);

		mav.addObject("list", list);

		if ("001".equals(workkind)) {
			mav.addObject("workKind", "寃뚯떆�뙋 >> 怨듭��궗�빆");
		} else if ("002".equals(workkind)) {
			mav.addObject("workKind", "寃뚯떆�뙋 >> 遺��꽌蹂꾧쾶�떆�뙋");
		} else if ("003".equals(workkind)) {
			mav.addObject("workKind", "寃뚯떆�뙋 >> �옄�쑀寃뚯떆�뙋");
		} else if ("004".equals(workkind)) {
			mav.addObject("workKind", "寃뚯떆�뙋 >> KITRI STORY");
		}

		if ("001".equals(subworkkind)) {
			mav.addObject("subworkkind", "怨듭��궗�빆");
		} else if ("002".equals(subworkkind)) {
			mav.addObject("subworkkind", "遺��꽌蹂꾧쾶�떆�뙋");
		} else if ("003".equals(subworkkind)) {
			mav.addObject("subworkkind", "�옄�쑀寃뚯떆�뙋");
		} else if ("004".equals(subworkkind)) {
			mav.addObject("subworkkind", "KITRI STORY");
		}

		mav.setViewName("jsp/board/basicboardList");

		return mav;

	}

	// 기본 글쓰기 버튼 누를때
	@RequestMapping(value = "/writego.html")
	public String writeGo() {

		return "jsp/board/basicBoardWrite";
	}

	// 기본 글 작성 후 입력 버튼 누르면
	@RequestMapping(value = "basicBoardWrite.html", method = RequestMethod.POST)
	public ModelAndView insert(BoardMainDto boardMainDto) throws Exception {

		boardService.addArticle(boardMainDto);

		ModelAndView mav = new ModelAndView();

		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");

		return mav;

	}

	// 답글 달기 버튼 누르면
	@RequestMapping(value = "/rewritego.html")
	public ModelAndView reWriteGo(@RequestParam(value = "num") int intSeq) throws Exception {

		ModelAndView mav = new ModelAndView();
		BoardMainDto boardMainDto = boardService.getArticle(intSeq);
		mav.addObject("reply", boardMainDto);
		mav.setViewName("jsp/board/replyWrite");

		return mav;
	}

	// 기본 답글 쓰기
	@RequestMapping(value = "/rewrite.html")
	public ModelAndView replyInsert(BoardMainDto boardMainDto) throws Exception {

		boardService.addReply(boardMainDto);
		ModelAndView mav = new ModelAndView();

		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");

		return mav;
	}

	// 글 수정 하기 버튼 누르면~
	@RequestMapping(value = "/modifygo.html")
	public ModelAndView modifyGo(@RequestParam(value = "num") int intSeq) throws Exception {

		ModelAndView mav = new ModelAndView();

		BoardMainDto boardMainDto = boardService.getArticle(intSeq);
		mav.addObject("read", boardMainDto);
		mav.setViewName("jsp/board/basicboardModify");

		return mav;
	}

	// 게시글 수정
	@RequestMapping(value = "/modify.html")
	public ModelAndView update(BoardMainDto boardMainDto) throws Exception {

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

	// 게시글 삭제
	@RequestMapping(value = "/delete.html")
	public ModelAndView deleteGo(@RequestParam(value = "num") int intSeq) throws Exception {
		boardService.deleteArticle(intSeq);

		System.out.println(intSeq);

		ModelAndView mav = new ModelAndView();

		BoardMainDto boardMainDto = new BoardMainDto();
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");

		return mav;

	}

	// 상세보기
	@RequestMapping(value = "/read.html")
	public ModelAndView detailView(@RequestParam(value = "num") int intSeq) throws Exception {

		ModelAndView mav = new ModelAndView();

		BoardMainDto boardMainDto = boardService.getArticle(intSeq);
		mav.addObject("read", boardMainDto);

		ArrayList<BoardMainDto> commentList = boardService.getCommentList(intSeq);
		mav.addObject("commentList", commentList);

		mav.setViewName("jsp/board/basicboardView");

		return mav;
	}

	// 댓글 입력
	@RequestMapping(value="/addComment.html", method=RequestMethod.POST)
	public @ResponseBody String addComment(
			@RequestParam("ccstrDetailComment") String ccstrDetailComment, 
			@RequestParam("ccstrWriterCode") String ccstrWriterCode, 
			@RequestParam("ccstrGroupCode") String ccstrGroupCode, 
			@RequestParam("ccstrTitle") String ccstrTitle,
			@RequestParam("ccstrGroup") String ccstrGroup, 
			@RequestParam("ccstrKindCode") String ccstrKindCode, 
			@RequestParam("ccstrKind") String ccstrKind, 
			@RequestParam("ccintSeq") int ccintSeq 
			) throws Exception{
		
			
		BoardMainDto boardMainDto=new BoardMainDto();
		boardMainDto.setStrDetailComment(ccstrDetailComment);
		boardMainDto.setStrWriterCode(ccstrWriterCode);
		boardMainDto.setStrGroupCode(ccstrGroupCode);
		boardMainDto.setStrGroup(ccstrGroup);
		boardMainDto.setStrKindCode(ccstrKindCode);
		boardMainDto.setStrKind(ccstrKind);
		boardMainDto.setIntPseq(ccintSeq);
		boardMainDto.setStrTitle(ccstrTitle);
		
		boardService.addComment(boardMainDto);
		
		
		
		JSONObject json = new JSONObject();
		/*json.put("ccstrDetailComment", boardMainDto.getStrDetailComment());
		json.put("ccstrWriterCode", boardMainDto.getStrName());
		json.put("ccdatGet_Date",boardMainDto.getDatGet_Date());*/
		
/*		json.put("ccstrGroupCode", boardMainDto.getStrGroupCode());
		json.put("ccstrGroup", boardMainDto.getStrGroup());
		json.put("ccstrKindCode", value)*/
		json.put("ok", "success");
		return json.toJSONString();
	}
	
	/*댓글쓰기 ajax 사용 안하는거
		@RequestMapping(value="/addComment.html")
		public ModelAndView addComment( BoardMainDto boardMainDto) throws Exception{
			boardService.addComment(boardMainDto);
					
			ModelAndView mav=new ModelAndView();
			boardMainDto = boardService.getArticle(boardMainDto.getIntSeq());
			mav.addObject("read", boardMainDto);
			ArrayList<BoardMainDto> commentList = boardService.getCommentList(boardMainDto.getIntSeq());
			mav.addObject("commentList", commentList);
			
			mav.setViewName("jsp/board/basicboardView");

			return mav;
		}*/

	
	//댓글 수정버튼 클릭
	@RequestMapping(value = "/modifycomment.html")
	public @ResponseBody String modifyComment(@RequestParam("mmintSeq") int intSeq)throws Exception{
		
		BoardMainDto boardMainDto = boardService.getArticle(intSeq);
		JSONObject json = new JSONObject();
		json.put("ok", "success");
				
		return json.toJSONString();
	}
	
	
	// 댓글 삭제
	@RequestMapping(value = "/deletecomment.html")
	public ModelAndView deleteComment(@RequestParam(value = "num") int intSeq, BoardMainDto boardMainDto)
			throws Exception {
		boardService.deleteArticle(intSeq);

		System.out.println(intSeq);

		ModelAndView mav = new ModelAndView();
		ArrayList<BoardMainDto> list = boardService.getSelectBasicList(boardMainDto);
		mav.addObject("list", list);
		mav.setViewName("jsp/board/basicboardList");

		return mav;

	}

}
