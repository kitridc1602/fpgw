package com.kitri.fpgw.dao;

import java.util.ArrayList;

import com.kitri.fpgw.model.UserDto;
import com.kitri.fpgw.model.UserImageDto;
import com.kitri.fpgw.model.UserModifyDto;

public interface UserDao {

	public UserDto UserSelect(String strCode) throws Exception;
	public ArrayList<UserDto> UserSelectAll() throws Exception;
	public String UserInsert(UserModifyDto userModifyDto) throws Exception;
	public void UserModify(UserModifyDto userModifyDto) throws Exception;
	public void UserDelete(String strCode) throws Exception;
	public UserImageDto UserImageSelect(String strCode) throws Exception;
	public void UserImageModify(UserImageDto userImageDto) throws Exception;
	public int UserIdCheck(String strID) throws Exception;
}
