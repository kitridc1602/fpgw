package com.kitri.fpgw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.UserDto;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@RequestMapping(value="/select.html")
	public ModelAndView UserSelect(String code){
		
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
	}
	
	@RequestMapping(value="/selectall.html")
	public ModelAndView UserSelectAll(){
		
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
	}

	@RequestMapping(value="/modify.html")
	public String UserModify(UserDto userDto){
		
		
		return "";
	}
	
	@RequestMapping(value="/delete.html")
	public String UserDelete(String code){
		
		
		return "";
	}
	
}
