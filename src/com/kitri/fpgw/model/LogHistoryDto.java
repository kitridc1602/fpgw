package com.kitri.fpgw.model;

import java.util.Date;

public class LogHistoryDto {

	private String strLog_Ymd;
	private String strUser_Cd;
	private String strLog_Cd;
	private String strLog_Nm;
	private Date strLog_Time;
	private String strLog_IP_Addr;
	
	public LogHistoryDto() {
	}

	public LogHistoryDto(String strLog_Ymd, String strUser_Cd, String strLog_Cd, String strLog_Nm, Date strLog_Time,
			String strLog_IP_Addr) {
		this.strLog_Ymd = strLog_Ymd;
		this.strUser_Cd = strUser_Cd;
		this.strLog_Cd = strLog_Cd;
		this.strLog_Nm = strLog_Nm;
		this.strLog_Time = strLog_Time;
		this.strLog_IP_Addr = strLog_IP_Addr;
	}

	public String getStrLog_Ymd() {
		return strLog_Ymd;
	}

	public void setStrLog_Ymd(String strLog_Ymd) {
		this.strLog_Ymd = strLog_Ymd;
	}

	public String getStrUser_Cd() {
		return strUser_Cd;
	}

	public void setStrUser_Cd(String strUser_Cd) {
		this.strUser_Cd = strUser_Cd;
	}

	public String getStrLog_Cd() {
		return strLog_Cd;
	}

	public void setStrLog_Cd(String strLog_Cd) {
		this.strLog_Cd = strLog_Cd;
	}

	public String getStrLog_Nm() {
		return strLog_Nm;
	}

	public void setStrLog_Nm(String strLog_Nm) {
		this.strLog_Nm = strLog_Nm;
	}

	public Date getStrLog_Time() {
		return strLog_Time;
	}

	public void setStrLog_Time(Date strLog_Time) {
		this.strLog_Time = strLog_Time;
	}

	public String getStrLog_IP_Addr() {
		return strLog_IP_Addr;
	}

	public void setStrLog_IP_Addr(String strLog_IP_Addr) {
		this.strLog_IP_Addr = strLog_IP_Addr;
	}
	
	
}
