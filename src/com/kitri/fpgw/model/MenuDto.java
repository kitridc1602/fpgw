package com.kitri.fpgw.model;

import java.util.Date;

public class MenuDto {

	private String strCode;
	private String strPCode;
	private String strName;
	private String strPath;
	private int intLevel;
	private int intSort;
	private int intUse_Flag;
	private String strMenuIndex;
	private String strGetUser;
	private Date datGetDate;
	private String strEditUser;
	private Date datEditDate;

	
	public MenuDto() {
		
	}
	
	public MenuDto(String strCode, String strPCode, String strName, String strPath, int intLevel, int intSort,
			int intUse_Flag, String strMenuIndex, String strGetUser, Date datGetDate, String strEditUser,
			Date datEditDate) {
		this.strCode = strCode;
		this.strPCode = strPCode;
		this.strName = strName;
		this.strPath = strPath;
		this.intLevel = intLevel;
		this.intSort = intSort;
		this.intUse_Flag = intUse_Flag;
		this.strMenuIndex = strMenuIndex;
		this.strGetUser = strGetUser;
		this.datGetDate = datGetDate;
		this.strEditUser = strEditUser;
		this.datEditDate = datEditDate;
	}

	public String getStrCode() {
		return strCode;
	}

	public void setStrCode(String strCode) {
		this.strCode = strCode;
	}

	public String getStrPCode() {
		return strPCode;
	}

	public void setStrPCode(String strPCode) {
		this.strPCode = strPCode;
	}

	public String getStrName() {
		return strName;
	}

	public void setStrName(String strName) {
		this.strName = strName;
	}

	public String getStrPath() {
		return strPath;
	}

	public void setStrPath(String strPath) {
		this.strPath = strPath;
	}

	public int getIntLevel() {
		return intLevel;
	}

	public void setIntLevel(int intLevel) {
		this.intLevel = intLevel;
	}

	public int getIntSort() {
		return intSort;
	}

	public void setIntSort(int intSort) {
		this.intSort = intSort;
	}

	public int getIntUse_Flag() {
		return intUse_Flag;
	}

	public void setIntUse_Flag(int intUse_Flag) {
		this.intUse_Flag = intUse_Flag;
	}

	public String getStrMenuIndex() {
		return strMenuIndex;
	}

	public void setStrMenuIndex(String strMenuIndex) {
		this.strMenuIndex = strMenuIndex;
	}

	public String getStrGetUser() {
		return strGetUser;
	}

	public void setStrGetUser(String strGetUser) {
		this.strGetUser = strGetUser;
	}

	public Date getDatGetDate() {
		return datGetDate;
	}

	public void setDatGetDate(Date datGetDate) {
		this.datGetDate = datGetDate;
	}

	public String getStrEditUser() {
		return strEditUser;
	}

	public void setStrEditUser(String strEditUser) {
		this.strEditUser = strEditUser;
	}

	public Date getDatEditDate() {
		return datEditDate;
	}

	public void setDatEditDate(Date datEditDate) {
		this.datEditDate = datEditDate;
	}

	
}
