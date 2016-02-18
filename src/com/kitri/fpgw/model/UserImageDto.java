package com.kitri.fpgw.model;

import java.util.Date;

public class UserImageDto {

	private String strCode;
	private String strFace_Name;
	private String strFace_Path;
	private String strSign_Name;
	private String strSign_Path;
	private String strGet_User_Cd;
	private String strGet_User_Nm;
	private Date datGet_Date;
	
	public UserImageDto() {
	}

	public UserImageDto(String strCode, String strFace_Name, String strFace_Path, String strSign_Name,
			String strSign_Path, String strGet_User_Cd, String strGet_User_Nm, Date datGet_Date) {
		this.strCode = strCode;
		this.strFace_Name = strFace_Name;
		this.strFace_Path = strFace_Path;
		this.strSign_Name = strSign_Name;
		this.strSign_Path = strSign_Path;
		this.strGet_User_Cd = strGet_User_Cd;
		this.strGet_User_Nm = strGet_User_Nm;
		this.datGet_Date = datGet_Date;
	}

	public String getStrCode() {
		return strCode;
	}

	public void setStrCode(String strCode) {
		this.strCode = strCode;
	}

	public String getStrFace_Name() {
		return strFace_Name;
	}

	public void setStrFace_Name(String strFace_Name) {
		this.strFace_Name = strFace_Name;
	}

	public String getStrFace_Path() {
		return strFace_Path;
	}

	public void setStrFace_Path(String strFace_Path) {
		this.strFace_Path = strFace_Path;
	}

	public String getStrSign_Name() {
		return strSign_Name;
	}

	public void setStrSign_Name(String strSign_Name) {
		this.strSign_Name = strSign_Name;
	}

	public String getStrSign_Path() {
		return strSign_Path;
	}

	public void setStrSign_Path(String strSign_Path) {
		this.strSign_Path = strSign_Path;
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
	
	
}
