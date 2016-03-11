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

		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/additional/accountinfolist");
				
		ArrayList<AccountInfoDto> list = optionService.AccountInfoSelectAll();
		mav.addObject("accountInfo", list);
		
		return mav;
	}
		
	@RequestMapping(value="/accountinfoselect.html")
	public ModelAndView AccountInfoSelect(String strCode) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/additional/accountinfomodify");
		
		if(strCode != null){
			
			AccountInfoDto accountInfo = optionService.AccountInfoSelect(strCode);
			
			mav.addObject("accountInfo", accountInfo);
			
			mav.addObject("workKind", "수정");
		} else {
			
			mav.addObject("workKind", "입력");
		}
		
		
		return mav;
	}
	
	@RequestMapping(value="/accountinfoinsert.html")
	public ModelAndView AccountInfoInsert(AccountInfoDto accountDto) throws Exception {
		
		optionService.AccountInfoInsert(accountDto);
		
		return AccountSelectAll();
	}
	
	@RequestMapping(value="/accountinfomodify.html")
	public ModelAndView AccoutInfoModify(AccountInfoDto accountDto) throws Exception {
		
		optionService.AccountInfoModify(accountDto);
		
		return AccountSelectAll();
	}
	
	@RequestMapping(value="/accountinfodelete.html")
	public ModelAndView AccountInfoDelete(String strCode) throws Exception {
		
		optionService.AccountInfoDelete(strCode);
		
		return AccountSelectAll();
	}
	
	@RequestMapping(value="/accountlocation.html")
	public ModelAndView AccountLocationMapSearch() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/jspc/addr/map");
		
		return mav;
	}
	
	
	private ModelAndView AccountSelectAll() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		/*mav.setViewName("jsp/additional/accountinfolist");*/
		mav.setViewName("redirect:/option/accountinfoall.html");
		
		ArrayList<AccountInfoDto> list = optionService.AccountInfoSelectAll();
		mav.addObject("accountInfo", list);
		
		return mav;
	}
	
	
}
