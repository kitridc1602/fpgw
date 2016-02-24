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
	public int settlementnocnt() {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("settlementnocnt");
	}

	@Override
	public int settlementingcnt() {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("settlementingcnt");
	}

	@Override
	public int nosettlementcnt() {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("nosettlementcnt");
	}

	@Override
	public int oksettlementcnt() {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("oksettlementcnt");
	}

	@Override
	public int settlementokcnt() {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("settlementokcnt");
	}

	@Override
	public ArrayList<ApprDto> settlementnolistAll() throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("settlementnolistAll");
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> settlementinglistAll() throws Exception {
		
		List<ApprDto> list=SqlSessionTemplate.selectList("settlementinglistAll");
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> settlementnolistAll2() throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("settlementnolistAll2");
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> settlementoklistAll() throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("settlementoklistAll");
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> oksettlementlistAll() throws Exception {
		List<ApprDto> list=SqlSessionTemplate.selectList("oksettlementlistAll");
		
		return (ArrayList<ApprDto>) list;
	}

	@Override
	public ArrayList<ApprDto> nosettlementlistAll() throws Exception {
		// TODO Auto-generated method stub
		List<ApprDto> list=SqlSessionTemplate.selectList("nosettlementlistAll");
		
		return (ArrayList<ApprDto>) list;
	}
	
	
	

}
