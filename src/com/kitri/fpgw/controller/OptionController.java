package com.kitri.fpgw.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.AccountInfoDto;
import com.kitri.fpgw.service.OptionService;

@Controller
@RequestMapping(value="/option")
public class OptionController {

	@Autowired
	OptionService optionService;
	
	@RequestMapping(value="/accountinfoall.html")
	public ModelAndView AccountInfoSelectAll() throws Exception {

		return AccountSelectAll();
	}
		
	@RequestMapping(value="/accountinfoSelect.html")
	public ModelAndView AccountInfoSelect(String strCode) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/additional/accountinfomodify");
		
		if(strCode != null){
			
			
			mav.addObject("workKind", "수정");
		} else {
			
			mav.addObject("workKind", "입력");
		}
		
		
		return mav;
	}
	
	
	
	
	
	private ModelAndView AccountSelectAll() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/additional/accountinfolist");
		
		/*ArrayList<AccountInfoDto> list = optionService.AccountInfoSelectAll();
		mav.addObject("accountInfo", list);*/
		
		return mav;
	}
	
	
}
