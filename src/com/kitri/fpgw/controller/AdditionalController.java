package com.kitri.fpgw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/additional")
public class AdditionalController {
	
	//@Autowired
	
	@RequestMapping(value="/contactcompany.html")
	public String selectCompany(){
		
		return "jsp/additional/company";
	}
}
