package com.kitri.fpgw.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.CodeManageDto;
import com.kitri.fpgw.model.MenuDto;
import com.kitri.fpgw.model.UserDto;

@Repository
public class MainDaoImpl implements MainDao {

	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;
	
	@Override
	public UserDto LogIn(UserDto userIn) throws Exception {
		
		return (UserDto) SqlSessionTemplate.selectOne("LoginUser", userIn);
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

	
}
