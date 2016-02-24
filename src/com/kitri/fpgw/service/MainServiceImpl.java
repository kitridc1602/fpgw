package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.MainDao;
import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.DepartDto;
import com.kitri.fpgw.model.LogHistoryDto;
import com.kitri.fpgw.model.MenuDto;
import com.kitri.fpgw.model.UserDetaileDto;
import com.kitri.fpgw.model.UserDto;
import com.kitri.fpgw.model.UserImageDto;
import com.kitri.fpgw.model.UserMainDto;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao MainDao;
	
	@Override
	public UserMainDto LogIn(UserMainDto userMainDto) throws Exception {
		
		return MainDao.LogIn(userMainDto);
	}

	
	@Override
	public UserDetaileDto UserDetailSelect(String strCode) throws Exception {

		return MainDao.UserDetailSelect(strCode);
	}


	@Override
	public UserImageDto UserImageSelect(String strCode) throws Exception {
		
		return MainDao.UserImageSelect(strCode);
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


	@Override
	public void LogCheck(LogHistoryDto LogHistoryDto) throws Exception {
		
		MainDao.LogCheck(LogHistoryDto);
		
	}


	@Override
	public ArrayList<CodeManageDto> CodeManageBCodeGroupSelectAll() throws Exception {
		
		return MainDao.CodeManageBCodeGroupSelectAll();
	}


	@Override
	public ArrayList<UserDto> UserListAll(String strCode, int intKind) throws Exception {
		
		return MainDao.UserListAll(strCode, intKind);
	}


	@Override
	public ArrayList<DepartDto> DepartListAll() throws Exception {

		return MainDao.DepartListAll();
	}

	
	
	
}
