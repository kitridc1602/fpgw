package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.ApprDao;
import com.kitri.fpgw.model.ApprDto;

@Service
public class ApprServiceImpl implements ApprService {

	@Autowired
	private ApprDao ApprDao;
	
	@Override
	public int settlementnocnt(String code) {
		// TODO Auto-generated method stub
		return ApprDao.settlementnocnt(code);
	}

	@Override
	public int settlementokcnt(String code) {
		// TODO Auto-generated method stub
		return ApprDao.settlementokcnt(code);
	}

	@Override
	public int settlementingcnt(String code) {
		// TODO Auto-generated method stub
		return ApprDao.settlementingcnt(code);
	}

	@Override
	public int nosettlementcnt(String code) {
		// TODO Auto-generated method stub
		return ApprDao.nosettlementcnt(code);
	}

	@Override
	public int oksettlementcnt(String code) {
		// TODO Auto-generated method stub
		return ApprDao.oksettlementcnt(code);
	}

	@Override
	public ArrayList<ApprDto> settlementnolistAll(String code) throws Exception{
		// TODO Auto-generated method stub
		return ApprDao.settlementnolistAll(code);
	}

	@Override
	public ArrayList<ApprDto> settlementinglistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.settlementinglistAll(code);
	}

	

	@Override
	public ArrayList<ApprDto> settlementoklistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.settlementoklistAll(code);
	}

	@Override
	public ArrayList<ApprDto> oksettlementlistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.oksettlementlistAll(code);
	}

	@Override
	public ArrayList<ApprDto> nosettlementlistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.nosettlementlistAll(code);
	}

	@Override
	public ArrayList<ApprDto> cooperationoklistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.cooperationoklistAll(code);
	}

	@Override
	public ArrayList<ApprDto> cooperationnolistAll(String code) throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.cooperationnolistAll(code);
	}

	@Override
	public ArrayList<ApprDto> insertgian(String code) throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.insertgian(code);
	}

	@Override
	public ArrayList<ApprDto> samplegian(ApprDto ApprDto) throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.samplegian(ApprDto);
	}
	
	
	
	
}
