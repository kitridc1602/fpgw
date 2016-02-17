package com.kitri.fpgw.model;

import java.util.Date;

public class CodeManageDto {

	private String strBCode;
	private String strBName;
	private String strSCode;
	private String strName; 
	private String strValue1;
	private String strValue2;
	private String strValue3;
	private int intSort;
	private int intUse_Flag;
	private String strGetUser;
	private Date datGetDate;
	private String strEditUser;
	private Date datEditDate;
		
	public CodeManageDto() {
		
	}
	
	public CodeManageDto(String strBCode, String strBName, String strSCode, String strName, String strValue1,
			String strValue2, String strValue3, int intSort, int intUse_Flag, String strGetUser, Date datGetDate,
			String strEditUser, Date datEditDate) {
		this.strBCode = strBCode;
		this.strBName = strBName;
		this.strSCode = strSCode;
		this.strName = strName;
		this.strValue1 = strValue1;
		this.strValue2 = strValue2;
		this.strValue3 = strValue3;
		this.intSort = intSort;
		this.intUse_Flag = intUse_Flag;
		this.strGetUser = strGetUser;
		this.datGetDate = datGetDate;
		this.strEditUser = strEditUser;
		this.datEditDate = datEditDate;
	}

	public String getStrBCode() {
		return strBCode;
	}

	public void setStrBCode(String strBCode) {
		this.strBCode = strBCode;
	}

	public String getStrBName() {
		return strBName;
	}

	public void setStrBName(String strBName) {
		this.strBName = strBName;
	}

	public String getStrSCode() {
		return strSCode;
	}

	public void setStrSCode(String strSCode) {
		this.strSCode = strSCode;
	}

	public String getStrName() {
		return strName;
	}

	public void setStrName(String strName) {
		this.strName = strName;
	}

	public String getStrValue1() {
		return strValue1;
	}

	public void setStrValue1(String strValue1) {
		this.strValue1 = strValue1;
	}

	public String getStrValue2() {
		return strValue2;
	}

	public void setStrValue2(String strValue2) {
		this.strValue2 = strValue2;
	}

	public String getStrValue3() {
		return strValue3;
	}

	public void setStrValue3(String strValue3) {
		this.strValue3 = strValue3;
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
