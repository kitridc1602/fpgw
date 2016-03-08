package com.kitri.fpgw.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.ProcedureParameterKeyDto;
import com.kitri.fpgw.model.ScheduleDto;
import com.kitri.fpgw.model.ScheduleModifyDto;

@Repository
public class ScheduleDaoImpl implements ScheduleDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public ScheduleDto ScheduleSelect(ScheduleDto scheduleDto) throws Exception {
				
		return sqlSessionTemplate.selectOne("ScheduleSelect", scheduleDto);
	}

	@Override
	public ArrayList<ScheduleDto> ScheduleSelectAll(ScheduleDto scheduleDto) throws Exception {
		
		List<ScheduleDto> list = sqlSessionTemplate.selectList("ScheduleSelectAll", scheduleDto);
		
		return (ArrayList<ScheduleDto>) list;
	}

	@Override
	public void ScheduleInsert(ScheduleDto scheduleDto) throws Exception {
		
		sqlSessionTemplate.insert("ScheduleInsert", scheduleDto);
	}

	@Override
	public void ScheduleModify(ScheduleModifyDto scheduleModifyDto) throws Exception {

		if(sqlSessionTemplate.insert("ScheduleTempInsert", scheduleModifyDto) > 0){
			
			ProcedureParameterKeyDto procedureParameterKeyDto = new ProcedureParameterKeyDto(
																	scheduleModifyDto.getStrWorkID(),
																	scheduleModifyDto.getStrWork_User());
			sqlSessionTemplate.update("ScheduleModify", procedureParameterKeyDto);
		}
	}

	@Override
	public void ScheduleDelete(ScheduleDto scheduleDto) throws Exception {
		
		System.out.println("sqlSessionTemplate.delete");
		sqlSessionTemplate.delete("ScheduleDelete", scheduleDto);

	}

}
