package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.ScheduleDao;
import com.kitri.fpgw.model.ScheduleDto;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleDao scheduleDao;
	
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
