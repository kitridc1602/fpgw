package com.kitri.fpgw.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitri.fpgw.model.ScheduleDto;

@Repository
public class ScheduleDaoImpl implements ScheduleDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public ScheduleDto ScheduleSelect(ScheduleDto scheduleDto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ScheduleDto> ScheduleSelectAll(ScheduleDto scheduleDto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void ScheduleInsert(ScheduleDto scheduleDto) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void ScheduleModify(ScheduleDto scheduleDto) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void ScheduleDelete(ScheduleDto scheduleDto) throws Exception {
		// TODO Auto-generated method stub

	}

}
