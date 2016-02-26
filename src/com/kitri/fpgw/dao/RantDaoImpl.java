package com.kitri.fpgw.dao;

import java.util.ArrayList;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public ArrayList<RantMainDto> CodeManageSelect() {
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
	public ArrayList<RantMainDto> selectTimeCheck(RantMainDto rantMainDto) {
		// TODO Auto-generated method stub

		List<RantMainDto> tclist = SqlSessionTemplate.selectList("selectTimeCheck", rantMainDto);		
		return (ArrayList<RantMainDto>) tclist;
	}


}
