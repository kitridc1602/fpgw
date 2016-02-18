package com.kitri.fpgw.model;

import java.util.Date;

public class UserDetaileDto {

	private String strCode;
	private String strGender;
	private String strBirth_YYYY;
	private String strBirth_MM;
	private String strBirth_DD;
	private int intCalender_Kind;
	private String strHome_Tel1;
	private String strHome_Tel2;
	private String strHome_Tel3;
	private String strMobile1;
	private String strMobile2;
	private String strMobile3;
	private String strZip1;
	private String strZip2;
	private String strAddr1;
	private String strAddr2;
	private String strHome_Page;
	private int intWedding_Flag;
	private String strWedding_YYYY;
	private String strWedding_MM;
	private String strWedding_DD;
	private String strHobby;
	private String strResume;
	private String strIntroduction;
	private String strMemo;
	private String strGet_User_Cd;
	private String strGet_User_Nm;
	private Date datGet_Date;
	private String strEdit_User_Cd;
	private String strEdit_User_Nm;
	private Date datEdit_Date;
	
	public UserDetaileDto() {
	}

	public UserDetaileDto(String strCode, String strGender, String strBirth_YYYY, String strBirth_MM,
			String strBirth_DD, int intCalender_Kind, String strHome_Tel1, String strHome_Tel2, String strHome_Tel3,
			String strMobile1, String strMobile2, String strMobile3, String strZip1, String strZip2, String strAddr1,
			String strAddr2, String strHome_Page, int intWedding_Flag, String strWedding_YYYY, String strWedding_MM,
			String strWedding_DD, String strHobby, String strResume, String strIntroduction, String strMemo,
			String strGet_User_Cd, String strGet_User_Nm, Date datGet_Date, String strEdit_User_Cd,
			String strEdit_User_Nm, Date datEdit_Date) {
		this.strCode = strCode;
		this.strGender = strGender;
		this.strBirth_YYYY = strBirth_YYYY;
		this.strBirth_MM = strBirth_MM;
		this.strBirth_DD = strBirth_DD;
		this.intCalender_Kind = intCalender_Kind;
		this.strHome_Tel1 = strHome_Tel1;
		this.strHome_Tel2 = strHome_Tel2;
		this.strHome_Tel3 = strHome_Tel3;
		this.strMobile1 = strMobile1;
		this.strMobile2 = strMobile2;
		this.strMobile3 = strMobile3;
		this.strZip1 = strZip1;
		this.strZip2 = strZip2;
		this.strAddr1 = strAddr1;
		this.strAddr2 = strAddr2;
		this.strHome_Page = strHome_Page;
		this.intWedding_Flag = intWedding_Flag;
		this.strWedding_YYYY = strWedding_YYYY;
		this.strWedding_MM = strWedding_MM;
		this.strWedding_DD = strWedding_DD;
		this.strHobby = strHobby;
		this.strResume = strResume;
		this.strIntroduction = strIntroduction;
		this.strMemo = strMemo;
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

	public String getStrGender() {
		return strGender;
	}

	public void setStrGender(String strGender) {
		this.strGender = strGender;
	}

	public String getStrBirth_YYYY() {
		return strBirth_YYYY;
	}

	public void setStrBirth_YYYY(String strBirth_YYYY) {
		this.strBirth_YYYY = strBirth_YYYY;
	}

	public String getStrBirth_MM() {
		return strBirth_MM;
	}

	public void setStrBirth_MM(String strBirth_MM) {
		this.strBirth_MM = strBirth_MM;
	}

	public String getStrBirth_DD() {
		return strBirth_DD;
	}

	public void setStrBirth_DD(String strBirth_DD) {
		this.strBirth_DD = strBirth_DD;
	}

	public int getIntCalender_Kind() {
		return intCalender_Kind;
	}

	public void setIntCalender_Kind(int intCalender_Kind) {
		this.intCalender_Kind = intCalender_Kind;
	}

	public String getStrHome_Tel1() {
		return strHome_Tel1;
	}

	public void setStrHome_Tel1(String strHome_Tel1) {
		this.strHome_Tel1 = strHome_Tel1;
	}

	public String getStrHome_Tel2() {
		return strHome_Tel2;
	}

	public void setStrHome_Tel2(String strHome_Tel2) {
		this.strHome_Tel2 = strHome_Tel2;
	}

	public String getStrHome_Tel3() {
		return strHome_Tel3;
	}

	public void setStrHome_Tel3(String strHome_Tel3) {
		this.strHome_Tel3 = strHome_Tel3;
	}

	public String getStrMobile1() {
		return strMobile1;
	}

	public void setStrMobile1(String strMobile1) {
		this.strMobile1 = strMobile1;
	}

	public String getStrMobile2() {
		return strMobile2;
	}

	public void setStrMobile2(String strMobile2) {
		this.strMobile2 = strMobile2;
	}

	public String getStrMobile3() {
		return strMobile3;
	}

	public void setStrMobile3(String strMobile3) {
		this.strMobile3 = strMobile3;
	}

	public String getStrZip1() {
		return strZip1;
	}

	public void setStrZip1(String strZip1) {
		this.strZip1 = strZip1;
	}

	public String getStrZip2() {
		return strZip2;
	}

	public void setStrZip2(String strZip2) {
		this.strZip2 = strZip2;
	}

	public String getStrAddr1() {
		return strAddr1;
	}

	public void setStrAddr1(String strAddr1) {
		this.strAddr1 = strAddr1;
	}

	public String getStrAddr2() {
		return strAddr2;
	}

	public void setStrAddr2(String strAddr2) {
		this.strAddr2 = strAddr2;
	}

	public String getStrHome_Page() {
		return strHome_Page;
	}

	public void setStrHome_Page(String strHome_Page) {
		this.strHome_Page = strHome_Page;
	}

	public int getIntWedding_Flag() {
		return intWedding_Flag;
	}

	public void setIntWedding_Flag(int intWedding_Flag) {
		this.intWedding_Flag = intWedding_Flag;
	}

	public String getStrWedding_YYYY() {
		return strWedding_YYYY;
	}

	public void setStrWedding_YYYY(String strWedding_YYYY) {
		this.strWedding_YYYY = strWedding_YYYY;
	}

	public String getStrWedding_MM() {
		return strWedding_MM;
	}

	public void setStrWedding_MM(String strWedding_MM) {
		this.strWedding_MM = strWedding_MM;
	}

	public String getStrWedding_DD() {
		return strWedding_DD;
	}

	public void setStrWedding_DD(String strWedding_DD) {
		this.strWedding_DD = strWedding_DD;
	}

	public String getStrHobby() {
		return strHobby;
	}

	public void setStrHobby(String strHobby) {
		this.strHobby = strHobby;
	}

	public String getStrResume() {
		return strResume;
	}

	public void setStrResume(String strResume) {
		this.strResume = strResume;
	}

	public String getStrIntroduction() {
		return strIntroduction;
	}

	public void setStrIntroduction(String strIntroduction) {
		this.strIntroduction = strIntroduction;
	}

	public String getStrMemo() {
		return strMemo;
	}

	public void setStrMemo(String strMemo) {
		this.strMemo = strMemo;
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
