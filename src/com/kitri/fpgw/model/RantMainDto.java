package com.kitri.fpgw.model;

import java.util.Date;

public class RantMainDto {
	
	private String strRMYmd;			//일자		20160218
	private String strRMGetUser;		//등록자
	private Date datRMGetDate;			//등록시간
	private String strRMEditUser;		//수정자
	private Date datRMEditDate;			//수정시간
	private String strRMStartTime;		//시작시간
	private String strRMEndTime;		//종료시간
	private String strRMRantProd;		//대여품
	private String strRMRantBcode;		//대여품 구분
	private String strRMReqUserCD;		//요청자
	private String strRMApproUser;		//승인자
	private String strRMReqMemo;		//요청사항
	private String strRMMemo;			//메모
	
	private String strCMName;			//
	private String strUMPositionCD;
	private String strUMPositionNM;
	private String strRMReqUserNM;
	
	public RantMainDto() {
		
	}
	
	public RantMainDto(String strRMYmd, String strRMStartTime, String strRMEndTime, String strCMName, String strRMReqUserNM,
			String strRMReqUserCD, String strUMPositionCD, String strUMPositionNM){
		
		this.strRMYmd = strRMYmd;
		this.strRMStartTime = strRMStartTime;
		this.strRMEndTime = strRMEndTime;
		this.strCMName = strCMName;
		this.strRMReqUserNM = strRMReqUserNM;
		this.strRMReqUserCD = strRMReqUserCD;
		this.strUMPositionCD = strUMPositionCD;
		this.strUMPositionNM = strUMPositionNM;
	}
	
	public RantMainDto(String strRMYmd, String strRMGetUser, Date datRMGetDate, String strRMEditUser,
			Date datRMEditDate, String strRMStartTime, String strRMEndTime, String strRMRantProd, String strRMRantBcode,
			String strRMReqUserCD, String strRMApproUser, String strRMReqMemo, String strRMMemo) {

		this.strRMYmd = strRMYmd;
		this.strRMGetUser = strRMGetUser;
		this.datRMGetDate = datRMGetDate;
		this.strRMEditUser = strRMEditUser;
		this.datRMEditDate = datRMEditDate;
		this.strRMStartTime = strRMStartTime;
		this.strRMEndTime = strRMEndTime;
		this.strRMRantProd = strRMRantProd;
		this.strRMRantBcode = strRMRantBcode;
		this.strRMReqUserCD = strRMReqUserCD;
		this.strRMApproUser = strRMApproUser;
		this.strRMReqMemo = strRMReqMemo;
		this.strRMMemo = strRMMemo;
	}

	public String getStrRMYmd() {
		return strRMYmd;
	}

	public void setStrRMYmd(String strRMYmd) {
		this.strRMYmd = strRMYmd;
	}

	public String getStrRMGetUser() {
		return strRMGetUser;
	}

	public void setStrRMGetUser(String strRMGetUser) {
		
		this.strRMGetUser = strRMGetUser;
	}

	public Date getDatRMGetDate() {
		return datRMGetDate;
	}

	public void setDatRMGetDate(Date datRMGetDate) {
		this.datRMGetDate = datRMGetDate;
	}

	public String getStrRMEditUser() {
		return strRMEditUser;
	}

	public void setStrRMEditUser(String strRMEditUser) {
		this.strRMEditUser = strRMEditUser;
	}

	public Date getDatRMEditDate() {
		return datRMEditDate;
	}

	public void setDatRMEditDate(Date datRMEditDate) {
		this.datRMEditDate = datRMEditDate;
	}

	public String getStrRMStartTime() {
		return strRMStartTime;
	}

	public void setStrRMStartTime(String strRMStartTime) {
		this.strRMStartTime = strRMStartTime;
	}

	public String getStrRMEndTime() {
		return strRMEndTime;
	}

	public void setStrRMEndTime(String strRMEndTime) {
		this.strRMEndTime = strRMEndTime;
	}

	public String getStrRMRantProd() {
		return strRMRantProd;
	}

	public void setStrRMRantProd(String strRMRantProd) {
		this.strRMRantProd = strRMRantProd;
	}

	public String getStrRMRantBcode() {
		return strRMRantBcode;
	}

	public void setStrRMRantBcode(String strRMRantBcode) {
		this.strRMRantBcode = strRMRantBcode;
	}

	public String getStrRMReqUserCD() {
		return strRMReqUserCD;
	}

	public void setStrRMReqUser(String strRMReqUser) {

		this.strRMReqUserCD = strRMReqUser;
	}

	public String getStrRMApproUser() {
		return strRMApproUser;
	}

	public void setStrRMApproUser(String strRMApproUser) {
		this.strRMApproUser = strRMApproUser;
	}

	public String getStrRMReqMemo() {
		return strRMReqMemo;
	}

	public void setStrRMReqMemo(String strRMReqMemo) {
		this.strRMReqMemo = strRMReqMemo;
	}

	public String getStrRMMemo() {
		return strRMMemo;
	}

	public void setStrRMMemo(String strRMMemo) {
		this.strRMMemo = strRMMemo;
	}

	public String getStrCMName() {
		return strCMName;
	}

	public void setStrCMName(String strCMName) {
		this.strCMName = strCMName;
	}

	public String getStrUMPositionCD() {
		return strUMPositionCD;
	}

	public void setStrUMPositionCD(String strUMPositionCD) {
		this.strUMPositionCD = strUMPositionCD;
	}

	public String getStrUMPositionNM() {
		return strUMPositionNM;
	}

	public void setStrUMPositionNM(String strUMPositionNM) {
		this.strUMPositionNM = strUMPositionNM;
	}

	public String getStrRMReqUserNM() {
		return strRMReqUserNM;
	}

	public void setStrRMReqUserNM(String strRMReqUserNM) {
		this.strRMReqUserNM = strRMReqUserNM;
	}
	
	
}
