package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.UserDao;
import com.kitri.fpgw.model.UserDto;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public UserDto UserSelect(String strCode) throws Exception {

		return userDao.UserSelect(strCode);
	}

	@Override
	public ArrayList<UserDto> UserSelectAll() throws Exception {

		return userDao.UserSelectAll();
	}

	@Override
	public void UserInsert(UserDto userDto) throws Exception {

		userDao.UserInsert(userDto);
	}

	@Override
	public void UserModify(UserDto userDto) throws Exception {

		userDao.UserModify(userDto);
	}

	@Override
	public void UserDelete(String strCode) throws Exception {

		userDao.UserDelete(strCode);
	}

}
