package com.kitri.fpgw.dao;

import java.util.ArrayList;

import com.kitri.fpgw.model.ApprDto;

public interface ApprDao {

	public int settlementnocnt(String code);

	public int settlementokcnt(String code);

	public int settlementingcnt(String code);

	public int nosettlementcnt(String code);

	public int oksettlementcnt(String code);

	public ArrayList<ApprDto> settlementnolistAll(String code) throws Exception;

	public ArrayList<ApprDto> settlementinglistAll(String code) throws Exception;

	public ArrayList<ApprDto> settlementoklistAll(String code) throws Exception;

	public ArrayList<ApprDto> oksettlementlistAll(String code) throws Exception;

	public ArrayList<ApprDto> nosettlementlistAll(String code) throws Exception;

	public ArrayList<ApprDto> cooperationoklistAll(String code) throws Exception;

	public ArrayList<ApprDto> cooperationnolistAll(String code) throws Exception;
	
	public ArrayList<ApprDto> insertgian(String code) throws Exception;

	public ArrayList<ApprDto> samplegian(ApprDto ApprDto) throws Exception;
	
}
