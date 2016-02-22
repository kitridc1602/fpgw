package com.kitri.fpgw.service;

import java.util.ArrayList;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.LogHistoryDto;
import com.kitri.fpgw.model.MenuDto;
import com.kitri.fpgw.model.UserDetaileDto;
import com.kitri.fpgw.model.UserDto;
import com.kitri.fpgw.model.UserImageDto;
import com.kitri.fpgw.model.UserMainDto;

public interface MainService {

	public UserMainDto LogIn(UserMainDto userMainDto) throws Exception;
	public UserDetaileDto UserDetailSelect(String strCode) throws Exception;
	public UserImageDto UserImageSelect(String strCode) throws Exception;
	public ArrayList<MenuDto> MenuSelectAll() throws Exception;
	public ArrayList<CodeManageDto> CodeManageSelectAll() throws Exception;
	public ArrayList<CodeManageDto> CodeManageSelectBCode(String BCode) throws Exception;
	public ArrayList<CodeManageDto> CodeManageSelectBS(CodeManageDto CodeManageIn) throws Exception;
	public ArrayList<UserDto> MainMessageList(String Code) throws Exception;
	public void LogCheck(LogHistoryDto LogHistoryDto) throws Exception;
	public ArrayList<CodeManageDto> CodeManageBCodeGroupSelectAll() throws Exception;
	public ArrayList<UserDto> UserListAll(String strCode) throws Exception;
}
