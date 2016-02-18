package com.kitri.fpgw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.ScheduleDto;
import com.kitri.fpgw.service.ScheduleService;

@Controller
@RequestMapping(value="/schedule")
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value="/select.html")
	public ModelAndView ScheduleSelect(ScheduleDto scheduleDto) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
		
	}
	
	@RequestMapping(value="/selectall.html")
	public ModelAndView ScheduleSelectAll(ScheduleDto scheduleDto) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/insert.html")
	public String ScheduleInsert(ScheduleDto scheduleDto) throws Exception {
		
		
		return "";
	}
	
	@RequestMapping(value="/modify.html")
	public String ScheduleModify(ScheduleDto scheduleDto) throws Exception {
		
		
		
		return "";
	}
	
	@RequestMapping(value="/delete.html")
	public String ScheduleDelete(ScheduleDto scheduleDto) throws Exception {
		
		
		return "";
	}
}
