package com.kitri.fpgw.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.RantMainDto;
import com.kitri.fpgw.service.MainService;
import com.kitri.fpgw.service.RantService;

@Controller
@RequestMapping(value="/asset")
public class AssetController {
	
	@Autowired
	private MainService MainService;
	@Autowired
	private RantService RantService;
	
	@RequestMapping(value="/managecom.html")
	public ModelAndView selectCom() throws Exception{
		
		ArrayList<CodeManageDto> list = MainService.CodeManageSelectAll();
		
		ModelAndView mav = new ModelAndView();			
		mav.addObject("list", list);
		mav.setViewName("jsp/asset/managecom");
		
		return mav;
	}
		
	@RequestMapping(value="/managebook.html")
	public ModelAndView selectBook() throws Exception{
		
		ArrayList<CodeManageDto> list = MainService.CodeManageSelectAll();
		
		ModelAndView mav = new ModelAndView();			
		mav.addObject("list", list);
		mav.setViewName("jsp/asset/managebook");
		
		return mav;
	}
	
	@RequestMapping(value="/reserveasset.html", method=RequestMethod.GET)
	public ModelAndView selectReserve(HttpSession session) throws Exception{
		
		String strRMApproUser = selectApproUser();
		ArrayList<CodeManageDto> list = MainService.CodeManageSelectAll();

		ModelAndView mav = new ModelAndView();		
		mav.addObject("list", list);
		mav.addObject("approUser", strRMApproUser);
		mav.setViewName("jsp/asset/reserveasset");
		
		return mav;
	}
	
	@RequestMapping(value="/reserveasset.html", method=RequestMethod.POST)
	public ModelAndView insertReserve(RantMainDto rantMainDto) throws Exception{
		
		RantService.insertReserve(rantMainDto);
		
		String strRMApproUser = selectApproUser();	
		ArrayList<CodeManageDto> list = MainService.CodeManageSelectAll();

		ModelAndView mav = new ModelAndView();		
		mav.addObject("list", list);
		mav.addObject("approUser", strRMApproUser);
		mav.setViewName("jsp/asset/reserveasset");
		
		return mav;		

	}
	
	public String selectApproUser() throws Exception{
		
		return RantService.selectApproUser();
	}
	
	@RequestMapping(value="/checkreserve.html")
	public ModelAndView checkReserve(){
		
		ArrayList<RantMainDto> list = RantService.CodeManageSelect();
		
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getStrUMPositionCD());
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsp/asset/checkreserve");
		
		return mav;
	}
	
}

