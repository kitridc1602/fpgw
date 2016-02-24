package com.kitri.fpgw.dao;

import java.util.ArrayList;

import com.kitri.fpgw.model.ApprDto;

public interface ApprDao {

	public int settlementnocnt();
	
	public int settlementokcnt();
	
	public int settlementingcnt();
	
	public int nosettlementcnt();
	
	public int oksettlementcnt();
	
	public ArrayList<ApprDto> settlementnolistAll() throws Exception;

	public ArrayList<ApprDto> settlementinglistAll() throws Exception;
	
	public ArrayList<ApprDto> settlementnolistAll2() throws Exception;

	public ArrayList<ApprDto> settlementoklistAll() throws Exception;
	
	public ArrayList<ApprDto> oksettlementlistAll() throws Exception;
	
	public ArrayList<ApprDto> nosettlementlistAll() throws Exception;
}

