package com.kitri.fpgw.service;

import java.util.ArrayList;

import com.kitri.fpgw.model.ScheduleDto;

public interface ScheduleService {

	public ScheduleDto ScheduleSelect(ScheduleDto scheduleDto) throws Exception;
	public ArrayList<ScheduleDto> ScheduleSelectAll(ScheduleDto scheduleDto) throws Exception;
	public void ScheduleInsert(ScheduleDto scheduleDto) throws Exception;
	public void ScheduleModify(ScheduleDto scheduleDto) throws Exception;
	public void ScheduleDelete(ScheduleDto scheduleDto) throws Exception;
	
}
