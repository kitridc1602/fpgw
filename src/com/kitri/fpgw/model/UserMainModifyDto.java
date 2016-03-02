package com.kitri.fpgw.model;

import java.util.Date;

public class UserMainModifyDto {

	private String UM_Code;
	private String UM_Name;
	private String UM_ID;
	private String UM_Pwd;
	private String UM_Depart_Cd;
	
	private String UM_Position_Bcode = "100";
	private String UM_Position;
	private int UM_Level;
	private String UM_Tel1;
	private String UM_Tel2;
	
	private String UM_Tel3;
	private String UM_Inline;
	private String UM_Hire_Y;
	private String UM_Hire_M;
	private String UM_Hire_D;
	
	private int UM_Vacation_Cnt;
	private int UM_Use_Flag;
	private String UM_Get_User;
	private Date UM_Get_Date;
	private String UM_Edit_User;
	
	private Date UM_Edit_Date;
	
	public UserMainModifyDto() {
	}
	
	public UserMainModifyDto(String uM_Code, String uM_Name, String uM_ID, String uM_Pwd, String uM_Depart_Cd,
			String uM_Position_Bcode, String uM_Position, int uM_Level, String uM_Tel1, String uM_Tel2, String uM_Tel3,
			String uM_Inline, String uM_Hire_Y, String uM_Hire_M, String uM_Hire_D, int uM_Vacation_Cnt,
			int uM_Use_Flag, String uM_Get_User, Date uM_Get_Date, String uM_Edit_User, Date uM_Edit_Date) {
		UM_Code = uM_Code;
		UM_Name = uM_Name;
		UM_ID = uM_ID;
		UM_Pwd = uM_Pwd;
		UM_Depart_Cd = uM_Depart_Cd;
		UM_Position_Bcode = uM_Position_Bcode;
		UM_Position = uM_Position;
		UM_Level = uM_Level;
		UM_Tel1 = uM_Tel1;
		UM_Tel2 = uM_Tel2;
		UM_Tel3 = uM_Tel3;
		UM_Inline = uM_Inline;
		UM_Hire_Y = uM_Hire_Y;
		UM_Hire_M = uM_Hire_M;
		UM_Hire_D = uM_Hire_D;
		UM_Vacation_Cnt = uM_Vacation_Cnt;
		UM_Use_Flag = uM_Use_Flag;
		UM_Get_User = uM_Get_User;
		UM_Get_Date = uM_Get_Date;
		UM_Edit_User = uM_Edit_User;
		UM_Edit_Date = uM_Edit_Date;
	}

	public String getUM_Code() {
		return UM_Code;
	}

	public void setUM_Code(String uM_Code) {
		UM_Code = uM_Code;
	}

	public String getUM_Name() {
		return UM_Name;
	}

	public void setUM_Name(String uM_Name) {
		UM_Name = uM_Name;
	}

	public String getUM_ID() {
		return UM_ID;
	}

	public void setUM_ID(String uM_ID) {
		UM_ID = uM_ID;
	}

	public String getUM_Pwd() {
		return UM_Pwd;
	}

	public void setUM_Pwd(String uM_Pwd) {
		UM_Pwd = uM_Pwd;
	}

	public String getUM_Depart_Cd() {
		return UM_Depart_Cd;
	}

	public void setUM_Depart_Cd(String uM_Depart_Cd) {
		UM_Depart_Cd = uM_Depart_Cd;
	}

	public String getUM_Position_Bcode() {
		return UM_Position_Bcode;
	}

	public void setUM_Position_Bcode(String uM_Position_Bcode) {
		UM_Position_Bcode = uM_Position_Bcode;
	}

	public String getUM_Position() {
		return UM_Position;
	}

	public void setUM_Position(String uM_Position) {
		UM_Position = uM_Position;
	}

	public int getUM_Level() {
		return UM_Level;
	}

	public void setUM_Level(int uM_Level) {
		UM_Level = uM_Level;
	}

	public String getUM_Tel1() {
		return UM_Tel1;
	}

	public void setUM_Tel1(String uM_Tel1) {
		UM_Tel1 = uM_Tel1;
	}

	public String getUM_Tel2() {
		return UM_Tel2;
	}

	public void setUM_Tel2(String uM_Tel2) {
		UM_Tel2 = uM_Tel2;
	}

	public String getUM_Tel3() {
		return UM_Tel3;
	}

	public void setUM_Tel3(String uM_Tel3) {
		UM_Tel3 = uM_Tel3;
	}

	public String getUM_Inline() {
		return UM_Inline;
	}

	public void setUM_Inline(String uM_Inline) {
		UM_Inline = uM_Inline;
	}

	public String getUM_Hire_Y() {
		return UM_Hire_Y;
	}

	public void setUM_Hire_Y(String uM_Hire_Y) {
		UM_Hire_Y = uM_Hire_Y;
	}

	public String getUM_Hire_M() {
		return UM_Hire_M;
	}

	public void setUM_Hire_M(String uM_Hire_M) {
		UM_Hire_M = uM_Hire_M;
	}

	public String getUM_Hire_D() {
		return UM_Hire_D;
	}

	public void setUM_Hire_D(String uM_Hire_D) {
		UM_Hire_D = uM_Hire_D;
	}

	public int getUM_Vacation_Cnt() {
		return UM_Vacation_Cnt;
	}

	public void setUM_Vacation_Cnt(int uM_Vacation_Cnt) {
		UM_Vacation_Cnt = uM_Vacation_Cnt;
	}

	public int getUM_Use_Flag() {
		return UM_Use_Flag;
	}

	public void setUM_Use_Flag(int uM_Use_Flag) {
		UM_Use_Flag = uM_Use_Flag;
	}

	public String getUM_Get_User() {
		return UM_Get_User;
	}

	public void setUM_Get_User(String uM_Get_User) {
		UM_Get_User = uM_Get_User;
	}

	public Date getUM_Get_Date() {
		return UM_Get_Date;
	}

	public void setUM_Get_Date(Date uM_Get_Date) {
		UM_Get_Date = uM_Get_Date;
	}

	public String getUM_Edit_User() {
		return UM_Edit_User;
	}

	public void setUM_Edit_User(String uM_Edit_User) {
		UM_Edit_User = uM_Edit_User;
	}

	public Date getUM_Edit_Date() {
		return UM_Edit_Date;
	}

	public void setUM_Edit_Date(Date uM_Edit_Date) {
		UM_Edit_Date = uM_Edit_Date;
	}

	
	
}
