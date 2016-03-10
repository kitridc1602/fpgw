package com.kitri.fpgw.dao;

import java.util.ArrayList;

import com.kitri.fpgw.model.AccountInfoDto;

public interface OptionDao {

	public ArrayList<AccountInfoDto> AccountInfoSelectAll() throws Exception;
	public AccountInfoDto AccountInfoSelect(String strCode) throws Exception;
	public void AccountInfoInsert(AccountInfoDto accountDto) throws Exception;
	public void AccountInfoModify(AccountInfoDto accountDto) throws Exception;
	public void AccountInfoDelete(String strCode) throws Exception;
}
