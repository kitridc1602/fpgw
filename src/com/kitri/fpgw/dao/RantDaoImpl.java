package com.kitri.fpgw.dao;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.RantDetailDto;
import com.kitri.fpgw.model.RantMainDto;

@Repository
public class RantDaoImpl implements RantDao {
	
	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;
	
	@Override
	public void insertReserve(RantMainDto rantMainDto) throws Exception {
		// TODO Auto-generated method stub
		SqlSessionTemplate.insert("insertReserve", rantMainDto);
	}

	@Override
	public String selectApproUser() throws Exception {
		// TODO Auto-generated method stub
		
		
		return SqlSessionTemplate.selectOne("selectApproUser");
	}

	@Override
	public ArrayList<RantMainDto> CodeManageSelect() throws Exception{
		// TODO Auto-generated method stub
		List<RantMainDto> list = SqlSessionTemplate.selectList("CodeManageSelect");
		return (ArrayList<RantMainDto>) list;
	}

	@Override
	public void insertReserveDetail(RantDetailDto rantDetailDto) throws Exception {
		// TODO Auto-generated method stub
		SqlSessionTemplate.insert("insertRantDetail", rantDetailDto);
	}

	@Override
	public ArrayList<RantMainDto> selectTimeCheck(RantMainDto rantMainDto) throws Exception{
		// TODO Auto-generated method stub

		List<RantMainDto> tclist = SqlSessionTemplate.selectList("selectTimeCheck", rantMainDto);		
		return (ArrayList<RantMainDto>) tclist;
	}

	@Override
	public ArrayList<RantMainDto> selectMyReserve(String strRMReqUser) throws Exception{
		// TODO Auto-generated method stub
		List<RantMainDto> list = SqlSessionTemplate.selectList("selectMyReserve", strRMReqUser);		
		return (ArrayList<RantMainDto>) list;
	}

	@Override
	public void approvalOk(RantDetailDto rantDetailDto) throws Exception{
		// TODO Auto-generated method stub
		
		SqlSessionTemplate.update("approvalOk", rantDetailDto);
	}

	@Override
	public void returnRequest(RantDetailDto rantDetailDto) throws Exception{
		// TODO Auto-generated method stub
		SqlSessionTemplate.update("returnRequest", rantDetailDto);
	}

	@Override
	public void returnProd(RantDetailDto rantDetailDto) throws Exception {
		// TODO Auto-generated method stub
		SqlSessionTemplate.update("returnProd", rantDetailDto);
	}

	@Override
	public int modelCheck(Map<String, String> map) {
		// TODO Auto-generated method stub
		return (int)SqlSessionTemplate.selectOne("modelCheck", map);
	}

	@Override
	public void regasset(CodeManageDto codeManageDto) {
		// TODO Auto-generated method stub
		SqlSessionTemplate.insert("insertCodeManage", codeManageDto);
	}

	@Override
	public ArrayList<RantDetailDto> selectCalendar() {
		// TODO Auto-generated method stub
		List<RantDetailDto> list = SqlSessionTemplate.selectList("viewCalendar");
		return (ArrayList<RantDetailDto>) list;
	}

	@Override
	public ArrayList<RantDetailDto> selectMyCalendar(String strRDGetUser) {
		// TODO Auto-generated method stub
		List<RantDetailDto> list = SqlSessionTemplate.selectList("viewMyCalendar", strRDGetUser);
		return (ArrayList<RantDetailDto>) list;
	}


}
