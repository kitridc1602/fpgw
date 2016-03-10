package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.OptionDao;
import com.kitri.fpgw.model.AccountInfoDto;

@Service
public class OptionServiceImpl implements OptionService {

	@Autowired
	OptionDao optionDao;
	
	@Override
	public ArrayList<AccountInfoDto> AccountInfoSelectAll() throws Exception {

		return optionDao.AccountInfoSelectAll();
	}

	@Override
	public AccountInfoDto AccountInfoSelect(String strCode) throws Exception {

		return optionDao.AccountInfoSelect(strCode);
	}

	@Override
	public void AccountInfoInsert(AccountInfoDto accountDto) throws Exception {

		optionDao.AccountInfoInsert(accountDto);
	}

	@Override
	public void AccountInfoModify(AccountInfoDto accountDto) throws Exception {

		optionDao.AccountInfoModify(accountDto);
	}

	@Override
	public void AccountInfoDelete(String strCode) throws Exception {

		optionDao.AccountInfoDelete(strCode);
	}

	
}
