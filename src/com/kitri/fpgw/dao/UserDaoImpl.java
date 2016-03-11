package com.kitri.fpgw.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.ProcedureParameterKeyDto;
import com.kitri.fpgw.model.UserDto;
import com.kitri.fpgw.model.UserImageDto;
import com.kitri.fpgw.model.UserModifyDto;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public UserDto UserSelect(String strCode) throws Exception {
		
		return (UserDto) sqlSessionTemplate.selectOne("userSelect", strCode);
	}

	@Override
	public ArrayList<UserDto> UserSelectAll() throws Exception {
		
		List<UserDto> list = sqlSessionTemplate.selectList("userSelectAll");
		
		return (ArrayList<UserDto>) list;
	}

	@Override
	public String UserInsert(UserModifyDto userModifyDto) throws Exception {

		ProcedureParameterKeyDto procedureParameterKeyDto = new ProcedureParameterKeyDto(userModifyDto.getStrWorkID(), userModifyDto.getStrWork_User());
		
		if(sqlSessionTemplate.insert("userModifyTempInsert", userModifyDto) > 0){
			
			sqlSessionTemplate.insert("userInsert", procedureParameterKeyDto);
			
			System.out.println(procedureParameterKeyDto.getStrReturn_Code());
		}
		
		return procedureParameterKeyDto.getStrReturn_Code();
	}

	@Override
	public void UserModify(UserModifyDto userModifyDto) throws Exception {
		
		if(sqlSessionTemplate.insert("userModifyTempInsert", userModifyDto) > 0){
			
			ProcedureParameterKeyDto procedureParameterKeyDto = new ProcedureParameterKeyDto(userModifyDto.getStrWorkID(), userModifyDto.getStrWork_User());	
			
			sqlSessionTemplate.update("userModify", procedureParameterKeyDto);
		}
	}

	@Override
	public void UserDelete(String strCode) throws Exception {

		sqlSessionTemplate.delete("userDelete", strCode);
	}

	@Override
	public UserImageDto UserImageSelect(String strCode) throws Exception {

		return (UserImageDto) sqlSessionTemplate.selectOne("userImageSelect", strCode);
	}

	@Override
	public void UserImageModify(UserImageDto userImageDto) throws Exception {

		sqlSessionTemplate.update("userImageModify", userImageDto);
	}

	@Override
	public int UserIdCheck(String strID) throws Exception {

		return sqlSessionTemplate.selectOne("idCheck", strID);
	}
	
}
