package com.kitri.fpgw.model;

import java.util.Date;

public class UserMainDto {

	private String strCode;
	private String strName;
	private String strID;
	private String strPWD;
	private String strDepart_Cd;
	private String strDepart_Nm;
	private String strPosition_Cd;
	private String strPosition_Nm;
	private int intLevel;
	private String strCo_Tel1;
	private String strCo_Tel2;
	private String strCo_Tel3;
	private String strCo_Tel_InLine;
	private String strHire_YYYY;
	private String strHire_MM;
	private String strHire_DD;
	private int intVacation_Count;
	private int intUse_Flag;
	private String strGet_User_Cd;
	private String strGet_User_Nm;
	private Date datGet_Date;
	private String strEdit_User_Cd;
	private String strEdit_User_Nm;
	private Date datEdit_Date;
	
	public UserMainDto() {
	}

	public UserMainDto(String strCode, String strName, String strID, String strPWD, String strDepart_Cd,
			String strDepart_Nm, String strPosition_Cd, String strPosition_Nm, int intLevel, String strCo_Tel1,
			String strCo_Tel2, String strCo_Tel3, String strCo_Tel_InLine, String strHire_YYYY, String strHire_MM,
			String strHire_DD, int intVacation_Count, int intUse_Flag, String strGet_User_Cd, String strGet_User_Nm,
			Date datGet_Date, String strEdit_User_Cd, String strEdit_User_Nm, Date datEdit_Date) {
		this.strCode = strCode;
		this.strName = strName;
		this.strID = strID;
		this.strPWD = strPWD;
		this.strDepart_Cd = strDepart_Cd;
		this.strDepart_Nm = strDepart_Nm;
		this.strPosition_Cd = strPosition_Cd;
		this.strPosition_Nm = strPosition_Nm;
		this.intLevel = intLevel;
		this.strCo_Tel1 = strCo_Tel1;
		this.strCo_Tel2 = strCo_Tel2;
		this.strCo_Tel3 = strCo_Tel3;
		this.strCo_Tel_InLine = strCo_Tel_InLine;
		this.strHire_YYYY = strHire_YYYY;
		this.strHire_MM = strHire_MM;
		this.strHire_DD = strHire_DD;
		this.intVacation_Count = intVacation_Count;
		this.intUse_Flag = intUse_Flag;
		this.strGet_User_Cd = strGet_User_Cd;
		this.strGet_User_Nm = strGet_User_Nm;
		this.datGet_Date = datGet_Date;
		this.strEdit_User_Cd = strEdit_User_Cd;
		this.strEdit_User_Nm = strEdit_User_Nm;
		this.datEdit_Date = datEdit_Date;
	}

	public String getStrCode() {
		return strCode;
	}

	public void setStrCode(String strCode) {
		this.strCode = strCode;
	}

	public String getStrName() {
		return strName;
	}

	public void setStrName(String strName) {
		this.strName = strName;
	}

	public String getStrID() {
		return strID;
	}

	public void setStrID(String strID) {
		this.strID = strID;
	}

	public String getStrPWD() {
		return strPWD;
	}

	public void setStrPWD(String strPWD) {
		this.strPWD = strPWD;
	}

	public String getStrDepart_Cd() {
		return strDepart_Cd;
	}

	public void setStrDepart_Cd(String strDepart_Cd) {
		this.strDepart_Cd = strDepart_Cd;
	}

	public String getStrDepart_Nm() {
		return strDepart_Nm;
	}

	public void setStrDepart_Nm(String strDepart_Nm) {
		this.strDepart_Nm = strDepart_Nm;
	}

	public String getStrPosition_Cd() {
		return strPosition_Cd;
	}

	public void setStrPosition_Cd(String strPosition_Cd) {
		this.strPosition_Cd = strPosition_Cd;
	}

	public String getStrPosition_Nm() {
		return strPosition_Nm;
	}

	public void setStrPosition_Nm(String strPosition_Nm) {
		this.strPosition_Nm = strPosition_Nm;
	}

	public int getIntLevel() {
		return intLevel;
	}

	public void setIntLevel(int intLevel) {
		this.intLevel = intLevel;
	}

	public String getStrCo_Tel1() {
		return strCo_Tel1;
	}

	public void setStrCo_Tel1(String strCo_Tel1) {
		this.strCo_Tel1 = strCo_Tel1;
	}

	public String getStrCo_Tel2() {
		return strCo_Tel2;
	}

	public void setStrCo_Tel2(String strCo_Tel2) {
		this.strCo_Tel2 = strCo_Tel2;
	}

	public String getStrCo_Tel3() {
		return strCo_Tel3;
	}

	public void setStrCo_Tel3(String strCo_Tel3) {
		this.strCo_Tel3 = strCo_Tel3;
	}

	public String getStrCo_Tel_InLine() {
		return strCo_Tel_InLine;
	}

	public void setStrCo_Tel_InLine(String strCo_Tel_InLine) {
		this.strCo_Tel_InLine = strCo_Tel_InLine;
	}

	public String getStrHire_YYYY() {
		return strHire_YYYY;
	}

	public void setStrHire_YYYY(String strHire_YYYY) {
		this.strHire_YYYY = strHire_YYYY;
	}

	public String getStrHire_MM() {
		return strHire_MM;
	}

	public void setStrHire_MM(String strHire_MM) {
		this.strHire_MM = strHire_MM;
	}

	public String getStrHire_DD() {
		return strHire_DD;
	}

	public void setStrHire_DD(String strHire_DD) {
		this.strHire_DD = strHire_DD;
	}

	public int getIntVacation_Count() {
		return intVacation_Count;
	}

	public void setIntVacation_Count(int intVacation_Count) {
		this.intVacation_Count = intVacation_Count;
	}

	public int getIntUse_Flag() {
		return intUse_Flag;
	}

	public void setIntUse_Flag(int intUse_Flag) {
		this.intUse_Flag = intUse_Flag;
	}

	public String getStrGet_User_Cd() {
		return strGet_User_Cd;
	}

	public void setStrGet_User_Cd(String strGet_User_Cd) {
		this.strGet_User_Cd = strGet_User_Cd;
	}

	public String getStrGet_User_Nm() {
		return strGet_User_Nm;
	}

	public void setStrGet_User_Nm(String strGet_User_Nm) {
		this.strGet_User_Nm = strGet_User_Nm;
	}

	public Date getDatGet_Date() {
		return datGet_Date;
	}

	public void setDatGet_Date(Date datGet_Date) {
		this.datGet_Date = datGet_Date;
	}

	public String getStrEdit_User_Cd() {
		return strEdit_User_Cd;
	}

	public void setStrEdit_User_Cd(String strEdit_User_Cd) {
		this.strEdit_User_Cd = strEdit_User_Cd;
	}

	public String getStrEdit_User_Nm() {
		return strEdit_User_Nm;
	}

	public void setStrEdit_User_Nm(String strEdit_User_Nm) {
		this.strEdit_User_Nm = strEdit_User_Nm;
	}

	public Date getDatEdit_Date() {
		return datEdit_Date;
	}

	public void setDatEdit_Date(Date datEdit_Date) {
		this.datEdit_Date = datEdit_Date;
	}
	

	
	
}
