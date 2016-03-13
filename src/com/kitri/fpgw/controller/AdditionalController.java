package com.kitri.fpgw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/additional")
public class AdditionalController {
	

	@RequestMapping(value="/contactcompany.html")
	public ModelAndView selectCompany(String location, String venderNm){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jspc/addr/map");
		mav.addObject("location", location);
		mav.addObject("venderNm", venderNm);
		
		return mav;
	}
}
