package com.kitri.fpgw.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.AccountInfoDto;

@Repository
public class OptionDaoImpl implements OptionDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public ArrayList<AccountInfoDto> AccountInfoSelectAll() throws Exception {

		List<AccountInfoDto> list = sqlSessionTemplate.selectList("AccountInfoSelectAll");
		return (ArrayList<AccountInfoDto>) list;
	}

	@Override
	public AccountInfoDto AccountInfoSelect(String strCode) throws Exception {

		return sqlSessionTemplate.selectOne("AccountInfoSelect", strCode);
	}

	@Override
	public void AccountInfoInsert(AccountInfoDto accountDto) throws Exception {

		sqlSessionTemplate.insert("AccountInfoInsert", accountDto);
	}

	@Override
	public void AccountInfoModify(AccountInfoDto accountDto) throws Exception {

		sqlSessionTemplate.update("AccountInfoUpdate", accountDto);
	}

	@Override
	public void AccountInfoDelete(String strCode) throws Exception {

		sqlSessionTemplate.delete("AccountInfoDelete", strCode);
	}

	
}
