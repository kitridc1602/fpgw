package com.kitri.fpgw.model;

import java.util.Date;

public class ScheduleDto {

	private String strUser;
	private String strYY;
	private String strMM;
	private String strDD;
	private int intSeq;
	private String strTitle;
	private String strDetail_Comment;
	private String strStart_Hour;
	private String strStart_Minute;
	private String strEnd_Hour;
	private String strEnd_Minute;
	private String strTerm_Hour;
	private String strTerm_Minute;
	private String strSch_Kind_Cd;
	private String strSch_Kind_Nm;
	private String strWork_Kind_Cd;
	private String strWork_Kind_Nm;
	private String strDisclosure_Cd;
	private String strDisclosure_Nm;
	private String strGet_User_Cd;
	private String strGet_User_Nm;
	private Date datGet_Date;
	private String strEdit_User_Cd;
	private String strEdit_User_Nm;
	private Date datEdit_Date;
	
	public ScheduleDto() {

	}

	public ScheduleDto(String strUser, String strYY, String strMM, String strDD, int intSeq, String strTitle,
			String strDetail_Comment, String strStart_Hour, String strStart_Minute, String strEnd_Hour,
			String strEnd_Minute, String strTerm_Hour, String strTerm_Minute, String strSch_Kind_Cd,
			String strSch_Kind_Nm, String strWork_Kind_Cd, String strWork_Kind_Nm, String strDisclosure_Cd,
			String strDisclosure_Nm, String strGet_User_Cd, String strGet_User_Nm, Date datGet_Date,
			String strEdit_User_Cd, String strEdit_User_Nm, Date datEdit_Date) {
		this.strUser = strUser;
		this.strYY = strYY;
		this.strMM = strMM;
		this.strDD = strDD;
		this.intSeq = intSeq;
		this.strTitle = strTitle;
		this.strDetail_Comment = strDetail_Comment;
		this.strStart_Hour = strStart_Hour;
		this.strStart_Minute = strStart_Minute;
		this.strEnd_Hour = strEnd_Hour;
		this.strEnd_Minute = strEnd_Minute;
		this.strTerm_Hour = strTerm_Hour;
		this.strTerm_Minute = strTerm_Minute;
		this.strSch_Kind_Cd = strSch_Kind_Cd;
		this.strSch_Kind_Nm = strSch_Kind_Nm;
		this.strWork_Kind_Cd = strWork_Kind_Cd;
		this.strWork_Kind_Nm = strWork_Kind_Nm;
		this.strDisclosure_Cd = strDisclosure_Cd;
		this.strDisclosure_Nm = strDisclosure_Nm;
		this.strGet_User_Cd = strGet_User_Cd;
		this.strGet_User_Nm = strGet_User_Nm;
		this.datGet_Date = datGet_Date;
		this.strEdit_User_Cd = strEdit_User_Cd;
		this.strEdit_User_Nm = strEdit_User_Nm;
		this.datEdit_Date = datEdit_Date;
	}

	public String getStrUser() {
		return strUser;
	}

	public void setStrUser(String strUser) {
		this.strUser = strUser;
	}

	public String getStrYY() {
		return strYY;
	}

	public void setStrYY(String strYY) {
		this.strYY = strYY;
	}

	public String getStrMM() {
		return strMM;
	}

	public void setStrMM(String strMM) {
		this.strMM = strMM;
	}

	public String getStrDD() {
		return strDD;
	}

	public void setStrDD(String strDD) {
		this.strDD = strDD;
	}

	public int getIntSeq() {
		return intSeq;
	}

	public void setIntSeq(int intSeq) {
		this.intSeq = intSeq;
	}

	public String getStrTitle() {
		return strTitle;
	}

	public void setStrTitle(String strTitle) {
		this.strTitle = strTitle;
	}

	public String getStrDetail_Comment() {
		return strDetail_Comment;
	}

	public void setStrDetail_Comment(String strDetail_Comment) {
		this.strDetail_Comment = strDetail_Comment;
	}

	public String getStrStart_Hour() {
		return strStart_Hour;
	}

	public void setStrStart_Hour(String strStart_Hour) {
		this.strStart_Hour = strStart_Hour;
	}

	public String getStrStart_Minute() {
		return strStart_Minute;
	}

	public void setStrStart_Minute(String strStart_Minute) {
		this.strStart_Minute = strStart_Minute;
	}

	public String getStrEnd_Hour() {
		return strEnd_Hour;
	}

	public void setStrEnd_Hour(String strEnd_Hour) {
		this.strEnd_Hour = strEnd_Hour;
	}

	public String getStrEnd_Minute() {
		return strEnd_Minute;
	}

	public void setStrEnd_Minute(String strEnd_Minute) {
		this.strEnd_Minute = strEnd_Minute;
	}

	public String getStrTerm_Hour() {
		return strTerm_Hour;
	}

	public void setStrTerm_Hour(String strTerm_Hour) {
		this.strTerm_Hour = strTerm_Hour;
	}

	public String getStrTerm_Minute() {
		return strTerm_Minute;
	}

	public void setStrTerm_Minute(String strTerm_Minute) {
		this.strTerm_Minute = strTerm_Minute;
	}

	public String getStrSch_Kind_Cd() {
		return strSch_Kind_Cd;
	}

	public void setStrSch_Kind_Cd(String strSch_Kind_Cd) {
		this.strSch_Kind_Cd = strSch_Kind_Cd;
	}

	public String getStrSch_Kind_Nm() {
		return strSch_Kind_Nm;
	}

	public void setStrSch_Kind_Nm(String strSch_Kind_Nm) {
		this.strSch_Kind_Nm = strSch_Kind_Nm;
	}

	public String getStrWork_Kind_Cd() {
		return strWork_Kind_Cd;
	}

	public void setStrWork_Kind_Cd(String strWork_Kind_Cd) {
		this.strWork_Kind_Cd = strWork_Kind_Cd;
	}

	public String getStrWork_Kind_Nm() {
		return strWork_Kind_Nm;
	}

	public void setStrWork_Kind_Nm(String strWork_Kind_Nm) {
		this.strWork_Kind_Nm = strWork_Kind_Nm;
	}

	public String getStrDisclosure_Cd() {
		return strDisclosure_Cd;
	}

	public void setStrDisclosure_Cd(String strDisclosure_Cd) {
		this.strDisclosure_Cd = strDisclosure_Cd;
	}

	public String getStrDisclosure_Nm() {
		return strDisclosure_Nm;
	}

	public void setStrDisclosure_Nm(String strDisclosure_Nm) {
		this.strDisclosure_Nm = strDisclosure_Nm;
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
