package com.kitri.fpgw.service;

import java.util.ArrayList;

import com.kitri.fpgw.model.ScheduleDto;
import com.kitri.fpgw.model.ScheduleModifyDto;

public interface ScheduleService {

	public ScheduleDto ScheduleSelect(ScheduleDto scheduleDto) throws Exception;
	public ArrayList<ScheduleDto> ScheduleSelectAll(ScheduleDto scheduleDto) throws Exception;
	public void ScheduleInsert(ScheduleDto scheduleDto) throws Exception;
	public void ScheduleModify(ScheduleModifyDto scheduleModifyDto) throws Exception;
	public void ScheduleDelete(ScheduleDto scheduleDto) throws Exception;
	
}
