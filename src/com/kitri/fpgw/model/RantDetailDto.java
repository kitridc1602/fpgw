package com.kitri.fpgw.model;

import java.util.Date;

public class RantDetailDto {

	private String strRDYmd;			//일자
	private String strRDGetUser;		//등록자 == 요청자
	private Date datRDGetDate;		//등록시간
	private String strRDStartTime;	//시작시간
	private String strRDEndTime;		//종료시간
	private String strRDRantProd;		//대여품
	private int strRDSeq;				//순번
	private String strRDChkUser;		//확인자
	private String strRDRKBcode;		//대여진행구분
	private String strRDRK;			//대여진행
	private String strRDMemo;			//메모
	
	public RantDetailDto(){
		
	}

	public RantDetailDto(String strRDYmd, String strRDGetUser, Date datRDGetDate, String strRDStartTime,
			String strRDEndTime, String strRDRantProd, int strRDSeq, String strRDChkUser, String strRDRKBcode,
			String strRDRK, String strRDMemo) {

		this.strRDYmd = strRDYmd;
		this.strRDGetUser = strRDGetUser;
		this.datRDGetDate = datRDGetDate;
		this.strRDStartTime = strRDStartTime;
		this.strRDEndTime = strRDEndTime;
		this.strRDRantProd = strRDRantProd;
		this.strRDSeq = strRDSeq;
		this.strRDChkUser = strRDChkUser;
		this.strRDRKBcode = strRDRKBcode;
		this.strRDRK = strRDRK;
		this.strRDMemo = strRDMemo;
	}

	public String getStrRDYmd() {
		return strRDYmd;
	}

	public void setStrRDYmd(String strRDYmd) {
		this.strRDYmd = strRDYmd;
	}

	public String getStrRDGetUser() {
		return strRDGetUser;
	}

	public void setStrRDGetUser(String strRDGetUser) {
		this.strRDGetUser = strRDGetUser;
	}

	public Date getDatRDGetDate() {
		return datRDGetDate;
	}

	public void setDatRDGetDate(Date datRDGetDate) {
		this.datRDGetDate = datRDGetDate;
	}

	public String getStrRDStartTime() {
		return strRDStartTime;
	}

	public void setStrRDStartTime(String strRDStartTime) {
		this.strRDStartTime = strRDStartTime;
	}

	public String getStrRDEndTime() {
		return strRDEndTime;
	}

	public void setStrRDEndTime(String strRDEndTime) {
		this.strRDEndTime = strRDEndTime;
	}

	public String getStrRDRantProd() {
		return strRDRantProd;
	}

	public void setStrRDRantProd(String strRDRantProd) {
		this.strRDRantProd = strRDRantProd;
	}

	public int getStrRDSeq() {
		return strRDSeq;
	}

	public void setStrRDSeq(int strRDSeq) {
		this.strRDSeq = strRDSeq;
	}

	public String getStrRDChkUser() {
		return strRDChkUser;
	}

	public void setStrRDChkUser(String strRDChkUser) {
		this.strRDChkUser = strRDChkUser;
	}

	public String getStrRDRKBcode() {
		return strRDRKBcode;
	}

	public void setStrRDRKBcode(String strRDRKBcode) {
		this.strRDRKBcode = strRDRKBcode;
	}

	public String getStrRDRK() {
		return strRDRK;
	}

	public void setStrRDRK(String strRDRK) {
		this.strRDRK = strRDRK;
	}

	public String getStrRDMemo() {
		return strRDMemo;
	}

	public void setStrRDMemo(String strRDMemo) {
		this.strRDMemo = strRDMemo;
	}
	
	
}
