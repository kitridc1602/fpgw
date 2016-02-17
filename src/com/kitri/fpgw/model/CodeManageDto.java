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
	private String strGet_User;
	private Date datGet_Date;
	private String strEdit_User;
	private Date datEdit_Date;
		
	public CodeManageDto() {
		
	}
	
	public CodeManageDto(String strBCode, String strBName, String strSCode, String strName, String strValue1,
			String strValue2, String strValue3, int intSort, int intUse_Flag, String strGet_User, Date datGet_Date,
			String strEdit_User, Date datEdit_Date) {
		this.strBCode = strBCode;
		this.strBName = strBName;
		this.strSCode = strSCode;
		this.strName = strName;
		this.strValue1 = strValue1;
		this.strValue2 = strValue2;
		this.strValue3 = strValue3;
		this.intSort = intSort;
		this.intUse_Flag = intUse_Flag;
		this.strGet_User = strGet_User;
		this.datGet_Date = datGet_Date;
		this.strEdit_User = strEdit_User;
		this.datEdit_Date = datEdit_Date;
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
