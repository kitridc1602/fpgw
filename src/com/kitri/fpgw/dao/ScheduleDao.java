package com.kitri.fpgw.dao;

import java.util.ArrayList;

import com.kitri.fpgw.model.ScheduleDto;

public interface ScheduleDao {

	public ScheduleDto ScheduleSelect(ScheduleDto scheduleDto) throws Exception;
	public ArrayList<ScheduleDto> ScheduleSelectAll(ScheduleDto scheduleDto) throws Exception;
	public void ScheduleInsert(ScheduleDto scheduleDto) throws Exception;
	public void ScheduleModify(ScheduleDto scheduleDto) throws Exception;
	public void ScheduleDelete(ScheduleDto scheduleDto) throws Exception;
	
}
