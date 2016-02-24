package com.kitri.fpgw.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.ApprDto;
import com.kitri.fpgw.service.ApprService;

@Controller
@RequestMapping(value = "/appr")
public class ApprController {

	@Autowired

	private ApprService ApprService;

	@RequestMapping(value = "/main.html")
	public ModelAndView settlementmainlist() throws Exception {
		//메인 각종 문서들의 건수
		int a = ApprService.settlementnocnt();
		int b= ApprService.settlementokcnt();
		int c=ApprService.settlementingcnt();
		int d=ApprService.nosettlementcnt();
		int e=ApprService.oksettlementcnt();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("settlementnocnt", a);
		mav.addObject("settlementokcnt",b);
		mav.addObject("settlementingcnt",c);
		mav.addObject("nosettlementcnt",d);
		mav.addObject("oksettlementcnt",e);
		
		//메인 내가 미결제한 문서들 리스트
		
		ArrayList<ApprDto> list=ApprService.settlementnolistAll();
		ArrayList<ApprDto> list2=ApprService.settlementinglistAll();
		mav.addObject("list",list);
		mav.addObject("list2",list2);
		
		
		mav.setViewName("jsp/appr/settlementmain");
		
		return mav;
	}
	
	@RequestMapping(value = "/settlementno.html")
	public ModelAndView settlementno() throws Exception{
		ArrayList<ApprDto> list=ApprService.settlementnolistAll2();		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/settlementno");
		
		return mav;
	}
	
	@RequestMapping(value = "/settlementok.html")
	public ModelAndView settlementok() throws Exception{
		ArrayList<ApprDto> list=ApprService.settlementoklistAll();		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/settlementok");
		
		return mav;
	}
	
	@RequestMapping(value="/settlementing.html")
	public ModelAndView settlementing() throws Exception{
		
		ArrayList<ApprDto> list=ApprService.settlementinglistAll();
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/settlementing");
		
		return mav;
	}
	
	@RequestMapping(value="/oksettlement.html")
	public ModelAndView oksettlement() throws Exception{
		
		ArrayList<ApprDto> list=ApprService.oksettlementlistAll();
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/oksettlement");
		
		
		return mav;
	}
	
	
	
	@RequestMapping(value="/nosettlement.html")
	public ModelAndView nosettlement() throws Exception{
		
		ArrayList<ApprDto> list=ApprService.nosettlementlistAll();
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsp/appr/nosettlement");
		
		
		return mav;
	}
}
