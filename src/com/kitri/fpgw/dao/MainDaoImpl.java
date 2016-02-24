package com.kitri.fpgw.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.DepartDto;
import com.kitri.fpgw.model.LogHistoryDto;
import com.kitri.fpgw.model.MenuDto;
import com.kitri.fpgw.model.UserDetaileDto;
import com.kitri.fpgw.model.UserDto;
import com.kitri.fpgw.model.UserImageDto;
import com.kitri.fpgw.model.UserMainDto;

@Repository
public class MainDaoImpl implements MainDao {

	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;
	
	@Override
	public UserMainDto LogIn(UserMainDto userMainDto) throws Exception {
		
		return (UserMainDto) SqlSessionTemplate.selectOne("LoginUserMain", userMainDto);
	}
	
	@Override
	public UserDetaileDto UserDetailSelect(String strCode) throws Exception {
		
		return (UserDetaileDto) SqlSessionTemplate.selectOne("LoginUserDetail", strCode);
	}

	@Override
	public UserImageDto UserImageSelect(String strCode) throws Exception {
		
		return (UserImageDto) SqlSessionTemplate.selectOne("LoginUserImage", strCode);
	}

	@Override
	public ArrayList<MenuDto> MenuSelectAll() throws Exception {
	
		List<MenuDto> list = SqlSessionTemplate.selectList("MenuList");
		
		return (ArrayList<MenuDto>) list;
	}

	@Override
	public ArrayList<CodeManageDto> CodeManageSelectAll() throws Exception {
		
		List<CodeManageDto> list = SqlSessionTemplate.selectList("CodeListAll");
		
		return (ArrayList<CodeManageDto>) list;
	}
	
	@Override
	public ArrayList<CodeManageDto> CodeManageSelectBCode(String BCode) throws Exception {
		
		List<CodeManageDto> list = SqlSessionTemplate.selectList("CodeListBcode", BCode);
		
		return (ArrayList<CodeManageDto>) list;
		
	}

	@Override
	public ArrayList<CodeManageDto> CodeManageSelectBS(CodeManageDto CodeManageIn) throws Exception {

		List<CodeManageDto> list = SqlSessionTemplate.selectList("CodeListBS", CodeManageIn);
		
		return (ArrayList<CodeManageDto>) list;
	}

	@Override
	public ArrayList<UserDto> MainMessageList(String Code) throws Exception {
		
		List<UserDto> list = SqlSessionTemplate.selectList("MainMessageList", Code);

		return (ArrayList<UserDto>) list;
	}

	@Override
	public void LogCheck(LogHistoryDto LogHistoryDto) throws Exception {
		
		SqlSessionTemplate.update("logCheck", LogHistoryDto);
	}

	@Override
	public ArrayList<CodeManageDto> CodeManageBCodeGroupSelectAll() throws Exception {
		
		List<CodeManageDto> list = SqlSessionTemplate.selectList("CodeBCodeListAll");
		
		return (ArrayList<CodeManageDto>) list;
	}

	@Override
	public ArrayList<UserDto> UserListAll(String strCode, int intKind) throws Exception {

		List<UserDto> list = null;
		
		switch (intKind) {
		case 0:
			list = SqlSessionTemplate.selectList("UserListAllName", strCode); 
			break;

		case 1:
			list = SqlSessionTemplate.selectList("UserListAllSort", strCode);
			break;
		}
		 
		
		return (ArrayList<UserDto>) list;
	}

	@Override
	public ArrayList<DepartDto> DepartListAll() throws Exception {

		List<DepartDto> list = SqlSessionTemplate.selectList("DepartListAll");
		
		return (ArrayList<DepartDto>) list;
	}

	
}
