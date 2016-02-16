package com.kitri.fpgw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MoveController {

	@RequestMapping(value="index.html")
	public String Index(){
		
		return "index";
		
	}
	
	
}
