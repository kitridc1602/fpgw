package com.kitri.fpgw.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.LogHistoryDto;
import com.kitri.fpgw.model.MenuDto;
import com.kitri.fpgw.model.UserDto;
import com.kitri.fpgw.service.MainService;

@Controller
@RequestMapping(value="/main")
public class MainController {

	@Autowired
	private MainService MainService;

	@RequestMapping(value="/index.html")
	public String Index(){
		
		return "index";
	}
	
	@RequestMapping(value="/login.html")
	public String Login(String id, String pwd, HttpSession session) throws Exception {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String ymd = sdf.format(date);
		
		UserDto userIn = new UserDto();
		userIn.setStrID(id);
		userIn.setStrPWD(pwd);
				
		UserDto userOut = MainService.Login(userIn);
		
		String strMovePage = "";

		if(userOut == null){
			
			session.setAttribute("success", "failed");
			strMovePage = "index";
		} else {
			
			/*로그인 기록*/			
			LogHistoryDto LogHistoryDto = new LogHistoryDto();
			LogHistoryDto.setStrLog_Ymd(ymd);
			LogHistoryDto.setStrUser_Cd(userOut.getStrCode());
			LogHistoryDto.setStrLog_Cd("001");
			MainService.LogCheck(LogHistoryDto);
			
			/*===== 세션 정리 =====*/
			/*사용자 정보*/
			session.setAttribute("success", "ok");
			session.setAttribute("userInfo", userOut);
			
			/*기초정보*/
			//1.회사정보
			ArrayList<CodeManageDto> coInfo = MainService.CodeManageSelectBCode("001");
			session.setAttribute("coInfo", coInfo);
			
			//2.직급정보
			ArrayList<CodeManageDto> position = MainService.CodeManageSelectBCode("100");
			session.setAttribute("position", position);
			
			//총사원정보(메신저 리스트)
			ArrayList<UserDto> allUser = MainService.MainMessageList(userOut.getStrCode());
			session.setAttribute("allUser", allUser);
			
			//메뉴정보
			ArrayList<MenuDto> listMenu = MainService.MenuSelectAll();
			session.setAttribute("menu", listMenu);
			
			
			strMovePage = "jsp/main/default";
		}
		
		return strMovePage;
	}
	
	@RequestMapping(value="logout.html")
	public String LogOut(HttpSession session) throws Exception {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String ymd = sdf.format(date);
		
		UserDto userIn = (UserDto) session.getAttribute("userInfo");
		
		/*로그아웃 기록*/			
		LogHistoryDto LogHistoryDto = new LogHistoryDto();
		LogHistoryDto.setStrLog_Ymd(ymd);
		LogHistoryDto.setStrUser_Cd(userIn.getStrCode());
		LogHistoryDto.setStrLog_Cd("002");
		MainService.LogCheck(LogHistoryDto);
		
		//세션정리
		session.removeAttribute("success");
		session.removeAttribute("userInfo");
		session.removeAttribute("coInfo");
		session.removeAttribute("position");
		session.removeAttribute("menu");
		
		return "index";
	}
	
}
