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
	public int settlementnocnt() {
		// TODO Auto-generated method stub
		return ApprDao.settlementnocnt();
	}

	@Override
	public int settlementokcnt() {
		// TODO Auto-generated method stub
		return ApprDao.settlementokcnt();
	}

	@Override
	public int settlementingcnt() {
		// TODO Auto-generated method stub
		return ApprDao.settlementingcnt();
	}

	@Override
	public int nosettlementcnt() {
		// TODO Auto-generated method stub
		return ApprDao.nosettlementcnt();
	}

	@Override
	public int oksettlementcnt() {
		// TODO Auto-generated method stub
		return ApprDao.oksettlementcnt();
	}

	@Override
	public ArrayList<ApprDto> settlementnolistAll() throws Exception{
		// TODO Auto-generated method stub
		return ApprDao.settlementnolistAll();
	}

	@Override
	public ArrayList<ApprDto> settlementinglistAll() throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.settlementinglistAll();
	}

	@Override
	public ArrayList<ApprDto> settlementnolistAll2() throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.settlementnolistAll2();

	}

	@Override
	public ArrayList<ApprDto> settlementoklistAll() throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.settlementoklistAll();
	}

	@Override
	public ArrayList<ApprDto> oksettlementlistAll() throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.oksettlementlistAll();
	}

	@Override
	public ArrayList<ApprDto> nosettlementlistAll() throws Exception {
		// TODO Auto-generated method stub
		return ApprDao.nosettlementlistAll();
	}
	
	
	
	
}
