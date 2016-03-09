package com.kitri.fpgw.service;

import java.util.ArrayList;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.RantDetailDto;
import com.kitri.fpgw.model.RantMainDto;

public interface RantService {
	public void insertReserve(RantMainDto rantMainDto) throws Exception;
	public void insertReserveDetail(RantDetailDto rantDetailDto) throws Exception;
	public String selectApproUser() throws Exception;
	public ArrayList<RantMainDto> CodeManageSelect() throws Exception;	
	public ArrayList<RantMainDto> selectTimeCheck(RantMainDto rantMainDto) throws Exception;
	public ArrayList<RantMainDto> selectMyReserve(String strRMReqUser) throws Exception;
	public void approvalOk(RantDetailDto rantDetailDto) throws Exception;
	public void returnRequest(RantDetailDto rantDetailDto) throws Exception;
	public void returnProd(RantDetailDto rantDetailDto) throws Exception;
	public int modelCheck(String strName, String strBCode);
	public void regasset(CodeManageDto codeManageDto);
	public ArrayList<RantDetailDto> selectCalendar();
	public ArrayList<RantDetailDto> selectMyCalendar(String strRDGetUser);

}
