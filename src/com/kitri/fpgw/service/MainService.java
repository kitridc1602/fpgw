package com.kitri.fpgw.service;

import java.util.ArrayList;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.MenuDto;
import com.kitri.fpgw.model.UserDto;

public interface MainService {

	public UserDto Login(UserDto userIn) throws Exception;
	public ArrayList<MenuDto> MenuSelectAll() throws Exception;
	public ArrayList<CodeManageDto> CodeManageSelectAll() throws Exception;
	public ArrayList<CodeManageDto> CodeManageSelectBCode(String BCode) throws Exception;
	public ArrayList<CodeManageDto> CodeManageSelectBS(CodeManageDto CodeManageIn) throws Exception;
	public ArrayList<UserDto> MainMessageList(String Code) throws Exception;
}
