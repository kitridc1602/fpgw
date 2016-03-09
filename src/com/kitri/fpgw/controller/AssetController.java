package com.kitri.fpgw.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.RantDetailDto;
import com.kitri.fpgw.model.RantMainDto;
import com.kitri.fpgw.model.UserMainDto;
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
		
		insertReserveDetail(rantMainDto);
		
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
	public ModelAndView checkReserve() throws Exception{
		
		ArrayList<RantMainDto> list = RantService.CodeManageSelect();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsp/asset/checkreserve");
		
		return mav;
	}
	
	public void insertReserveDetail(RantMainDto rantMainDto) throws Exception{
		
		RantDetailDto rantDetailDto = new RantDetailDto();
		
		rantDetailDto.setStrRDYmd(rantMainDto.getStrRMYmd());
		rantDetailDto.setStrRDStartTime(rantMainDto.getStrRMStartTime());
		rantDetailDto.setStrRDEndTime(rantMainDto.getStrRMEndTime());
		rantDetailDto.setStrRDRantProd(rantMainDto.getStrRMRantProd());
		rantDetailDto.setStrRDMemo(rantMainDto.getStrRMReqMemo());
		rantDetailDto.setStrRDGetUser(rantMainDto.getStrRMReqUserCD());
		rantDetailDto.setStrRDChkUser(rantMainDto.getStrRMApproUser());
		rantDetailDto.setStrRDRKBcode("760");
		rantDetailDto.setStrRDRK("001");
		
		RantService.insertReserveDetail(rantDetailDto);
	}
	
	@RequestMapping(value="/timecheck.html")
	public @ResponseBody String selectReserveTime(@RequestParam("strRMYmd")String strRMYmd, @RequestParam("strRMRantBcode")String strRMRantBcode, @RequestParam("strRMRantProd")String strRMRantProd) throws Exception{
		
		RantMainDto rantMainDto = new RantMainDto();
		rantMainDto.setStrRMYmd(strRMYmd);		
		rantMainDto.setStrRMRantBcode(strRMRantBcode);
		rantMainDto.setStrRMRantProd(strRMRantProd);
		
		ArrayList<RantMainDto> tclist = RantService.selectTimeCheck(rantMainDto);
		
		JSONObject jsontc = new JSONObject();
		JSONArray jarraytc = new JSONArray();
		for(RantMainDto list : tclist){
			
			JSONObject obj = new JSONObject();
			obj.put("strRMYmd", list.getStrRMYmd());
			obj.put("strRMRantBcode", list.getStrRMRantBcode());
			obj.put("strRMRantProd", list.getStrRMRantProd());
			obj.put("strRMStartTime", list.getStrRMStartTime());
			obj.put("strRMEndTime", list.getStrRMEndTime());
			obj.put("strRMStartValue", list.getStrStartValue());
			obj.put("strRMEndValue", list.getStrEndValue());
			jarraytc.add(obj);
		}
		
		jsontc.put("tclist", jarraytc);	
		
		return jsontc.toJSONString();
		
	}
	
	@RequestMapping(value="/detailasset.html")
	public ModelAndView selectMyReserve(HttpSession session) throws Exception{
				
		UserMainDto userInfo = (UserMainDto) session.getAttribute("userInfo");
		String strRMReqUser = userInfo.getStrCode();		
		ArrayList<RantMainDto> list = RantService.selectMyReserve(strRMReqUser);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsp/asset/detailasset");
		return mav;
	}
	
	@RequestMapping(value="/approvalok.html")
	public ModelAndView approvalOk(String strRDYmd, String strRDStartTime, String strRDEndTime, String strRDRantProd) throws Exception{
					
		RantDetailDto rantDetailDto = new RantDetailDto();
		rantDetailDto.setStrRDYmd(strRDYmd);
		rantDetailDto.setStrRDStartTime(strRDStartTime);
		rantDetailDto.setStrRDEndTime(strRDEndTime);
		rantDetailDto.setStrRDRantProd(strRDRantProd);
		
		RantService.approvalOk(rantDetailDto);
		
		return checkReserve();
	}
	
	@RequestMapping(value="/returnrequest.html")
	public ModelAndView returnRequest(String strRDYmd, String strRDStartTime, String strRDEndTime, String strRDRantProd) throws Exception{
		
		RantDetailDto rantDetailDto = new RantDetailDto();
		rantDetailDto.setStrRDYmd(strRDYmd);
		rantDetailDto.setStrRDStartTime(strRDStartTime);
		rantDetailDto.setStrRDEndTime(strRDEndTime);
		rantDetailDto.setStrRDRantProd(strRDRantProd);
		
		RantService.returnRequest(rantDetailDto);
		
		return checkReserve();
	}
	
	@RequestMapping(value="/returnprod.html")
	public ModelAndView returnProd(String strRDYmd, String strRDStartTime, String strRDEndTime, String strRDRantProd, HttpSession session) throws Exception{
		
		RantDetailDto rantDetailDto = new RantDetailDto();
		rantDetailDto.setStrRDYmd(strRDYmd);
		rantDetailDto.setStrRDStartTime(strRDStartTime);
		rantDetailDto.setStrRDEndTime(strRDEndTime);
		rantDetailDto.setStrRDRantProd(strRDRantProd);
		
		RantService.returnProd(rantDetailDto);
		
		return selectMyReserve(session);
	}
	
	@RequestMapping(value="/addasset.html", method=RequestMethod.GET)
	public String addasset(){
		
		return "jsp/asset/addasset";
		
	}
	
	@RequestMapping(value="/addasset.html", method=RequestMethod.POST)
	public String regasset(CodeManageDto codeManageDto){		
		
		RantService.regasset(codeManageDto);

		return addasset();
		
	}
	
	@RequestMapping(value="/modelcheck.html")
	public @ResponseBody String modelCheck(@RequestParam("strName")String strName, @RequestParam("strBCode")String strBCode){
		int cnt = RantService.modelCheck(strName, strBCode);
		JSONObject json = new JSONObject();
		json.put("modelCnt", cnt);
		
		return json.toJSONString();		
	}
	
	@RequestMapping(value="/viewAllcalendar.html")
	public ModelAndView viewAllCalendar(){
		ArrayList<RantDetailDto> vclist = RantService.selectCalendar();
		
		JSONObject jsonvc = new JSONObject();
		JSONArray jarrayvc = new JSONArray();
		for(RantDetailDto list : vclist){
			
			JSONObject obj = new JSONObject();			
			obj.put("title", list.getTitle());
			obj.put("start", list.getStrStart());
			obj.put("end", list.getStrEnd());
			jarrayvc.add(obj);
		}
		
		jsonvc.put("vclist", jarrayvc);
		System.out.println(jsonvc.toJSONString());
		ModelAndView mav = new ModelAndView();
		mav.addObject("jsonvc", jsonvc);
		mav.setViewName("jsp/asset/calendar");
		return mav;
	}
	
	@RequestMapping(value="/viewMycalendar.html")
	public ModelAndView viewMyCalendar(HttpSession session){
		
		UserMainDto userInfo = (UserMainDto) session.getAttribute("userInfo");
		String strRDGetUser = userInfo.getStrCode();
		
		ArrayList<RantDetailDto> vclist = RantService.selectMyCalendar(strRDGetUser);
		
		JSONObject jsonvc = new JSONObject();
		JSONArray jarrayvc = new JSONArray();
		for(RantDetailDto list : vclist){
			
			JSONObject obj = new JSONObject();			
			obj.put("title", list.getTitle());
			obj.put("start", list.getStrStart());
			obj.put("end", list.getStrEnd());
			jarrayvc.add(obj);
		}
		
		jsonvc.put("vclist", jarrayvc);
		System.out.println(jsonvc.toJSONString());
		ModelAndView mav = new ModelAndView();
		mav.addObject("jsonvc", jsonvc);
		mav.setViewName("jsp/asset/mycalendar");
		return mav;
	}
}

