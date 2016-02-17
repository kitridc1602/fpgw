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
	private String strGet_User;
	private Date datGet_Date;
	private String strEdit_User;
	private Date datEdit_Date;

	
	public MenuDto() {
		
	}
	
	public MenuDto(String strCode, String strPCode, String strName, String strPath, int intLevel, int intSort,
			int intUse_Flag, String strMenuIndex, String strGet_User, Date datGet_Date, String strEdit_User,
			Date datEdit_Date) {
		this.strCode = strCode;
		this.strPCode = strPCode;
		this.strName = strName;
		this.strPath = strPath;
		this.intLevel = intLevel;
		this.intSort = intSort;
		this.intUse_Flag = intUse_Flag;
		this.strMenuIndex = strMenuIndex;
		this.strGet_User = strGet_User;
		this.datGet_Date = datGet_Date;
		this.strEdit_User = strEdit_User;
		this.datEdit_Date = datEdit_Date;
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



	public String getStrGet_User() {
		return strGet_User;
	}



	public void setStrGet_User(String strGet_User) {
		this.strGet_User = strGet_User;
	}



	public Date getDatGet_Date() {
		return datGet_Date;
	}



	public void setDatGet_Date(Date datGet_Date) {
		this.datGet_Date = datGet_Date;
	}



	public String getStrEdit_User() {
		return strEdit_User;
	}



	public void setStrEdit_User(String strEdit_User) {
		this.strEdit_User = strEdit_User;
	}



	public Date getDatEdit_Date() {
		return datEdit_Date;
	}



	public void setDatEdit_Date(Date datEdit_Date) {
		this.datEdit_Date = datEdit_Date;
	}

	
}
