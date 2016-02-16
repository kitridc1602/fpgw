package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.MainDao;
import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.MenuDto;
import com.kitri.fpgw.model.UserDto;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao MainDao;
	
	@Override
	public UserDto Login(UserDto userIn) throws Exception {
		
		return MainDao.LogIn(userIn);
	}

	
	@Override
	public ArrayList<MenuDto> MenuSelectAll() throws Exception {
		
		return MainDao.MenuSelectAll();
	}


	@Override
	public ArrayList<CodeManageDto> CodeManageSelectAll() throws Exception {

		return MainDao.CodeManageSelectAll();
	}


	@Override
	public ArrayList<CodeManageDto> CodeManageSelectBCode(String BCode) throws Exception {
		
		return MainDao.CodeManageSelectBCode(BCode);
	}


	@Override
	public ArrayList<CodeManageDto> CodeManageSelectBS(CodeManageDto CodeManageIn) throws Exception {

		return MainDao.CodeManageSelectBS(CodeManageIn);
	}


	@Override
	public ArrayList<UserDto> MainMessageList(String Code) throws Exception {
		
		return MainDao.MainMessageList(Code);
	}

	
	
}
