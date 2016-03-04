package com.kitri.fpgw.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.ApprDto;

@Repository
public class ApprDaoImpl implements ApprDao {

	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;
	
	@Override
	public int settlementnocnt(String code) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("settlementnocnt",code);
	}

	@Override
	public int settlementingcnt(String code) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("settlementingcnt",code);
	}

	@Override
	public int nosettlementcnt(String code) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("nosettlementcnt",code);
	}

	@Override
	public int oksettlementcnt(String code) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("oksettlementcnt",code);
	}

	@Override
	public int settlementokcnt(String code) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("settlementokcnt",code);
	}

	@Override
	public ArrayList<ApprDto> settlementnolistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("settlementnolistAll",code);
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> settlementinglistAll(String code) throws Exception {
		
		List<ApprDto> list=SqlSessionTemplate.selectList("settlementinglistAll",code);
		
		return (ArrayList<ApprDto>) list;
	}



	@Override
	public ArrayList<ApprDto> settlementoklistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("settlementoklistAll",code);
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> oksettlementlistAll(String code) throws Exception {
		List<ApprDto> list=SqlSessionTemplate.selectList("oksettlementlistAll",code);
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> nosettlementlistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("nosettlementlistAll",code);
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> cooperationoklistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("cooperationoklistAll",code);
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> cooperationnolistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("cooperationnolistAll",code);
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> insertgian(String code) throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("insertgian",code);
		
		return (ArrayList<ApprDto>) list;
	}
	
	
	public ArrayList<ApprDto> samplegian(ApprDto ApprDto) throws Exception{
		List<ApprDto> list=SqlSessionTemplate.selectList("samplegian",ApprDto);
		return (ArrayList<ApprDto>) list;
	}

}
