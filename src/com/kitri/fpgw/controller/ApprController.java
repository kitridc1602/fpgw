package com.kitri.fpgw.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.ApprDto;
import com.kitri.fpgw.model.UserMainDto;
import com.kitri.fpgw.service.ApprService;
import com.kitri.fpgw.service.MainService;

@Controller
@RequestMapping(value = "/appr")
public class ApprController {

	@Autowired

	private ApprService ApprService;
	private MainService MainService;

	@RequestMapping(value = "/main.html")
	public ModelAndView settlementmainlist(HttpSession session) throws Exception {
	
		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
	
	
		

		
		//메인 각종 문서들의 건수
		int a = ApprService.settlementnocnt(code);
		int b= ApprService.settlementokcnt(code);
		int c=ApprService.settlementingcnt(code);
		int d=ApprService.nosettlementcnt(code);
		int e=ApprService.oksettlementcnt(code);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("settlementnocnt", a);
		mav.addObject("settlementokcnt",b);
		mav.addObject("settlementingcnt",c);
		mav.addObject("nosettlementcnt",d);
		mav.addObject("oksettlementcnt",e);
		
		//메인 내가 미결제한 문서들 리스트
		
		ArrayList<ApprDto> list=ApprService.settlementnolistAll(code);
		ArrayList<ApprDto> list2=ApprService.settlementinglistAll(code);
		mav.addObject("list",list);
		mav.addObject("list2",list2);
		
		
		mav.setViewName("jsp/appr/settlementmain");
		
		return mav;
	}
	
	@RequestMapping(value = "/settlementno.html")
	public ModelAndView settlementno(HttpSession session) throws Exception{

		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
		ArrayList<ApprDto> list=ApprService.settlementnolistAll(code);		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/settlementno");
		
		return mav;
	}
	
	@RequestMapping(value = "/settlementok.html")
	public ModelAndView settlementok(HttpSession session) throws Exception{

		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
		ArrayList<ApprDto> list=ApprService.settlementoklistAll(code);		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/settlementok");
		
		return mav;
	}
	
	@RequestMapping(value="/settlementing.html")
	public ModelAndView settlementing(HttpSession session) throws Exception{

		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
		
		ArrayList<ApprDto> list=ApprService.settlementinglistAll(code);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/settlementing");
		
		return mav;
	}
	
	@RequestMapping(value="/oksettlement.html")
	public ModelAndView oksettlement(HttpSession session) throws Exception{
		

		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
		ArrayList<ApprDto> list=ApprService.oksettlementlistAll(code);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/oksettlement");
		
		
		return mav;
	}
	
	@RequestMapping(value="/nosettlement.html")
	public ModelAndView nosettlement(HttpSession session) throws Exception{

		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
		
		ArrayList<ApprDto> list=ApprService.nosettlementlistAll(code);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/nosettlement");
		
		
		return mav;
	}
	
	@RequestMapping(value="/cooperationok.html")
	public ModelAndView cooperationok(HttpSession session) throws Exception{

		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
		
		
		
		ArrayList<ApprDto> list=ApprService.cooperationoklistAll(code);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/cooperationok");
		
		return mav;
	}
	
	@RequestMapping(value="/cooperationno.html")
	public ModelAndView cooperationon(HttpSession session) throws Exception{

		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
		ArrayList<ApprDto> list=ApprService.cooperationnolistAll(code);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("/jsp/appr/cooperationno");
		
		return mav;
		
	}

	@RequestMapping(value="/insertgian.html")
	public ModelAndView insertgian(HttpSession session) throws Exception{
		UserMainDto userInfo=(UserMainDto) session.getAttribute("userInfo");
		String code=userInfo.getStrCode();
		ArrayList<ApprDto> list=ApprService.insertgian(code);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("/jsp/appr/insertgian");
		
		return mav;
	}
	
	@RequestMapping(value="/samplegian.html")
	public ModelAndView samplegian(ApprDto ApprDto) throws Exception{
		
		ArrayList<ApprDto> list=ApprService.samplegian(ApprDto);
		
		
		return null;
	}
	
	
	@RequestMapping(value="/insertbalju.html")
	public ModelAndView insertbalju() throws Exception{
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/jsp/appr/insertbalju");
		return mav;
	}
	
	@RequestMapping(value="/insertchuljang.html")
	public ModelAndView insertchuljang() throws Exception{
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/jsp/appr/insertchuljang");
		return mav;
	}
	
	@RequestMapping(value="/insertvacation.html")
	public ModelAndView insertvacation() throws Exception{
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/jsp/appr/insertvacation");
		return mav;
	}
	
	
	
}
