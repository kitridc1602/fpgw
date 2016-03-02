package com.kitri.fpgw.model;

import java.util.Date;

public class UserImageModifyDto {

	private String UI_Um_Code;
	private String UI_Face_Name;
	private String UI_Face_Path;
	private String UI_Sign_Name;
	private String UI_Sign_Path;
	
	private String UI_Get_User;
	private Date UI_Get_Date;
	
	
	public UserImageModifyDto() {
	}

	public UserImageModifyDto(String uI_Um_Code, String uI_Face_Name, String uI_Face_Path, String uI_Sign_Name,
			String uI_Sign_Path, String uI_Get_User, Date uI_Get_Date) {
		UI_Um_Code = uI_Um_Code;
		UI_Face_Name = uI_Face_Name;
		UI_Face_Path = uI_Face_Path;
		UI_Sign_Name = uI_Sign_Name;
		UI_Sign_Path = uI_Sign_Path;
		UI_Get_User = uI_Get_User;
		UI_Get_Date = uI_Get_Date;
	}

	public String getUI_Um_Code() {
		return UI_Um_Code;
	}

	public void setUI_Um_Code(String uI_Um_Code) {
		UI_Um_Code = uI_Um_Code;
	}

	public String getUI_Face_Name() {
		return UI_Face_Name;
	}

	public void setUI_Face_Name(String uI_Face_Name) {
		UI_Face_Name = uI_Face_Name;
	}

	public String getUI_Face_Path() {
		return UI_Face_Path;
	}

	public void setUI_Face_Path(String uI_Face_Path) {
		UI_Face_Path = uI_Face_Path;
	}

	public String getUI_Sign_Name() {
		return UI_Sign_Name;
	}

	public void setUI_Sign_Name(String uI_Sign_Name) {
		UI_Sign_Name = uI_Sign_Name;
	}

	public String getUI_Sign_Path() {
		return UI_Sign_Path;
	}

	public void setUI_Sign_Path(String uI_Sign_Path) {
		UI_Sign_Path = uI_Sign_Path;
	}

	public String getUI_Get_User() {
		return UI_Get_User;
	}

	public void setUI_Get_User(String uI_Get_User) {
		UI_Get_User = uI_Get_User;
	}

	public Date getUI_Get_Date() {
		return UI_Get_Date;
	}

	public void setUI_Get_Date(Date uI_Get_Date) {
		UI_Get_Date = uI_Get_Date;
	}

	
	
}
