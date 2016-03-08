package com.kitri.fpgw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.fpgw.dao.ScheduleDao;
import com.kitri.fpgw.model.ScheduleDto;
import com.kitri.fpgw.model.ScheduleModifyDto;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleDao scheduleDao;
	
	@Override
	public ScheduleDto ScheduleSelect(ScheduleDto scheduleDto) throws Exception {
		
		return scheduleDao.ScheduleSelect(scheduleDto);
	}

	@Override
	public ArrayList<ScheduleDto> ScheduleSelectAll(ScheduleDto scheduleDto) throws Exception {
	
		return scheduleDao.ScheduleSelectAll(scheduleDto);
	}

	@Override
	public void ScheduleInsert(ScheduleDto scheduleDto) throws Exception {

		scheduleDao.ScheduleInsert(scheduleDto);
	}

	@Override
	public void ScheduleModify(ScheduleModifyDto scheduleModifyDto) throws Exception {

		scheduleDao.ScheduleModify(scheduleModifyDto);
	}

	@Override
	public void ScheduleDelete(ScheduleDto scheduleDto) throws Exception {
		
		System.out.println("scheduleDao.ScheduleDelete");
		scheduleDao.ScheduleDelete(scheduleDto);
	}

}
