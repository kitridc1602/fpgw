package com.kitri.fpgw.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.DepartDto;
import com.kitri.fpgw.model.LogHistoryDto;
import com.kitri.fpgw.model.MenuDto;
import com.kitri.fpgw.model.UserBFDto;
import com.kitri.fpgw.model.UserDetaileDto;
import com.kitri.fpgw.model.UserDto;
import com.kitri.fpgw.model.UserImageDto;
import com.kitri.fpgw.model.UserMainDto;
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
	
	@RequestMapping(value="/default.html")
	public String Default(){
		
		return "jsp/main/default";
	}
	
	@RequestMapping(value="/login.html")
	public String Login(String id, String pwd, HttpSession session) throws Exception {
				
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String ymd = sdf.format(date);
		
		UserMainDto userIn = new UserMainDto();
		userIn.setStrID(id);
		userIn.setStrPWD(pwd);
				
		UserMainDto userOut = MainService.LogIn(userIn);
		
		String strMovePage = "";
		
		if(userOut == null){
			
			session.setAttribute("success", "failed");
			strMovePage = "index";
		} else {
			
			session.setMaxInactiveInterval(84500);
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
			UserDetaileDto userDetailInfo = MainService.UserDetailSelect(userOut.getStrCode());
			session.setAttribute("userDetailInfo", userDetailInfo);
			UserImageDto userImageInfo = MainService.UserImageSelect(userOut.getStrCode());
			session.setAttribute("userImageInfo", userImageInfo);
			
			/*전체 사용자*/
			ArrayList<UserDto> allUser = MainService.UserListAll(userOut.getStrCode(), 0);
			session.setAttribute("allUser", allUser);
			
			/*부서 정보*/
			ArrayList<DepartDto> DepartList = MainService.DepartListAll();
			session.setAttribute("DepartList", DepartList);
			ArrayList<UserDto> DepartUserList = MainService.UserListAll(userOut.getStrCode(), 1);
			session.setAttribute("DepartUserList", DepartUserList);
			
			
						
			/*기초정보*/
			ArrayList<CodeManageDto> BCode = MainService.CodeManageBCodeGroupSelectAll();
			session.setAttribute("BCode", BCode);
			
			int len = BCode.size();
			for(int i = 0; i < len; i++){
				
				CodeManageDto bcodeDto = BCode.get(i);
								
				ArrayList<CodeManageDto> SCode = MainService.CodeManageSelectBCode(bcodeDto.getStrBCode());
								
				session.setAttribute(bcodeDto.getStrValue4(), SCode);
			}
			
			
			
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
		
		UserMainDto userIn = (UserMainDto) session.getAttribute("userInfo");

		/*로그아웃 기록*/			
		LogHistoryDto LogHistoryDto = new LogHistoryDto();
		LogHistoryDto.setStrLog_Ymd(ymd);
		LogHistoryDto.setStrUser_Cd(userIn.getStrCode());
		LogHistoryDto.setStrLog_Cd("002");
		MainService.LogCheck(LogHistoryDto);

		//세션정리		
		ArrayList<CodeManageDto> BCode = (ArrayList<CodeManageDto>) session.getAttribute("BCode");
		session.removeAttribute("BCode");

		int len = BCode.size();
		
		for(int i = 0; i < len; i++){

			CodeManageDto bcodeDto = BCode.get(i);
			session.removeAttribute(bcodeDto.getStrValue4());
		}
		
		session.removeAttribute("success");
		session.removeAttribute("userInfo");
		session.removeAttribute("userDetailInfo");
		session.removeAttribute("userImageInfo");
		session.removeAttribute("allUser");
		session.removeAttribute("DepartList");
		session.removeAttribute("menu");
		
		return "index";
	}
	
}
