package com.kitri.fpgw.dao;

import java.util.ArrayList;

import com.kitri.fpgw.model.UserDto;

public interface UserDao {

	public UserDto UserSelect(String strCode) throws Exception;
	public ArrayList<UserDto> UserSelectAll() throws Exception;
	public void UserInsert(UserDto userDto) throws Exception;
	public void UserModify(UserDto userDto) throws Exception;
	public void UserDelete(String strCode) throws Exception;
}
