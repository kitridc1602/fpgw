package com.kitri.fpgw.service;

import java.util.ArrayList;

import com.kitri.fpgw.model.RantMainDto;

public interface RantService {
	public void insertReserve(RantMainDto rantMainDto) throws Exception;
	public String selectApproUser() throws Exception;
	public ArrayList<RantMainDto> CodeManageSelect();
}
