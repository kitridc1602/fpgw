package com.kitri.fpgw.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.RantDao;
import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.RantDetailDto;
import com.kitri.fpgw.model.RantMainDto;

@Service
public class RantServiceImpl implements RantService {
	
	@Autowired	
	private RantDao RantDao;
	
	@Override
	public void insertReserve(RantMainDto rantMainDto) throws Exception {
		// TODO Auto-generated method stub
		RantDao.insertReserve(rantMainDto);
	}

	@Override
	public String selectApproUser() throws Exception {
		// TODO Auto-generated method stub
		return RantDao.selectApproUser();
	}

	@Override
	public ArrayList<RantMainDto> CodeManageSelect()  throws Exception{
		// TODO Auto-generated method stub			
		return RantDao.CodeManageSelect();
	}

	@Override
	public void insertReserveDetail(RantDetailDto rantDetailDto) throws Exception {
		// TODO Auto-generated method stub
		RantDao.insertReserveDetail(rantDetailDto);
	}

	@Override
	public ArrayList<RantMainDto> selectTimeCheck(RantMainDto rantMainDto )  throws Exception{
		// TODO Auto-generated method stub
		
		return RantDao.selectTimeCheck(rantMainDto);
	}

	@Override
	public ArrayList<RantMainDto> selectMyReserve(String strRMReqUser)  throws Exception{
		// TODO Auto-generated method stub				
		return RantDao.selectMyReserve(strRMReqUser);
	}

	@Override
	public void approvalOk(RantDetailDto rantDetailDto)  throws Exception{
		// TODO Auto-generated method stub
		RantDao.approvalOk(rantDetailDto);
	}

	@Override
	public void returnRequest(RantDetailDto rantDetailDto)  throws Exception{
		// TODO Auto-generated method stub
		RantDao.returnRequest(rantDetailDto);
	}

	@Override
	public void returnProd(RantDetailDto rantDetailDto) throws Exception {
		// TODO Auto-generated method stub
		RantDao.returnProd(rantDetailDto);
	}

	@Override
	public int modelCheck(String strName, String strBCode) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
		map.put("strName", strName);
		map.put("strBCode", strBCode);
		
		return RantDao.modelCheck(map);
	}

	@Override
	public void regasset(CodeManageDto codeManageDto) {
		// TODO Auto-generated method stub
		RantDao.regasset(codeManageDto);
	}

	@Override
	public ArrayList<RantDetailDto> selectCalendar() {
		// TODO Auto-generated method stub
		
		return RantDao.selectCalendar();
	}

	@Override
	public ArrayList<RantDetailDto> selectMyCalendar(String strRDGetUser) {
		// TODO Auto-generated method stub
		return RantDao.selectMyCalendar(strRDGetUser);
	}

}
