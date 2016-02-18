package com.kitri.fpgw.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.UserDto;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public UserDto UserSelect(String strCode) throws Exception {
		
		return (UserDto) sqlSessionTemplate.selectList("userSelect", strCode);
	}

	@Override
	public ArrayList<UserDto> UserSelectAll() throws Exception {
		
		List<UserDto> list = sqlSessionTemplate.selectList("userSelectAll");
		
		return (ArrayList<UserDto>) list;
	}

	@Override
	public void UserInsert(UserDto userDto) throws Exception {

		sqlSessionTemplate.insert("userInsert", userDto);
	}

	@Override
	public void UserModify(UserDto userDto) throws Exception {

		sqlSessionTemplate.update("userModify", userDto);
	}

	@Override
	public void UserDelete(String strCode) throws Exception {

		sqlSessionTemplate.delete("userDelete", strCode);
	}

}
