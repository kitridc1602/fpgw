package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.RantDao;
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
	public ArrayList<RantMainDto> CodeManageSelect() {
		// TODO Auto-generated method stub			
		return RantDao.CodeManageSelect();
	}

}
