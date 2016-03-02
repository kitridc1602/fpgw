package com.kitri.fpgw.model;

public class UserModifyDto {

	private String strWorkID;
	private String strWork_User;
	
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
	private String UD_Genger;
	private String UD_Birth_Y;
	private String UD_Birth_M;
	
	private String UD_Birth_D;
	private int UD_Calender_Kind;
	private String UD_Tel1;
	private String UD_Tel2;
	private String UD_Tel3;
	
	private String UD_Mobile1;
	private String UD_Mobile2;
	private String UD_Mobile3;
	private String UD_Zip1;
	private String UD_Zip2;
	
	private String UD_Addr1;
	private String UD_Addr2;
	private String UD_Homepage;
	private int UD_Wedding_flag;
	private String UD_Wedding_Y;
	
	private String UD_Wedding_M;
	private String UD_Wedding_D;
	private String UD_Hobby;
	private String UD_Resume;
	private String UD_Introduction;
	
	private String UD_Memo;
	private String UI_Face_Name;
	private String UI_Face_Path;
	private String UI_Sign_Name;
	private String UI_Sign_Path;
	
	public UserModifyDto() {
	}

	public UserModifyDto(String strWorkID, String strWork_User, String uM_Code, String uM_Name, String uM_ID,
			String uM_Pwd, String uM_Depart_Cd, String uM_Position_Bcode, String uM_Position, int uM_Level,
			String uM_Tel1, String uM_Tel2, String uM_Tel3, String uM_Inline, String uM_Hire_Y, String uM_Hire_M,
			String uM_Hire_D, int uM_Vacation_Cnt, int uM_Use_Flag, String uD_Genger, String uD_Birth_Y,
			String uD_Birth_M, String uD_Birth_D, int uD_Calender_Kind, String uD_Tel1, String uD_Tel2, String uD_Tel3,
			String uD_Mobile1, String uD_Mobile2, String uD_Mobile3, String uD_Zip1, String uD_Zip2, String uD_Addr1,
			String uD_Addr2, String uD_Homepage, int uD_Wedding_flag, String uD_Wedding_Y, String uD_Wedding_M,
			String uD_Wedding_D, String uD_Hobby, String uD_Resume, String uD_Introduction, String uD_Memo,
			String uI_Face_Name, String uI_Face_Path, String uI_Sign_Name, String uI_Sign_Path) {
		this.strWorkID = strWorkID;
		this.strWork_User = strWork_User;
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
		UD_Genger = uD_Genger;
		UD_Birth_Y = uD_Birth_Y;
		UD_Birth_M = uD_Birth_M;
		UD_Birth_D = uD_Birth_D;
		UD_Calender_Kind = uD_Calender_Kind;
		UD_Tel1 = uD_Tel1;
		UD_Tel2 = uD_Tel2;
		UD_Tel3 = uD_Tel3;
		UD_Mobile1 = uD_Mobile1;
		UD_Mobile2 = uD_Mobile2;
		UD_Mobile3 = uD_Mobile3;
		UD_Zip1 = uD_Zip1;
		UD_Zip2 = uD_Zip2;
		UD_Addr1 = uD_Addr1;
		UD_Addr2 = uD_Addr2;
		UD_Homepage = uD_Homepage;
		UD_Wedding_flag = uD_Wedding_flag;
		UD_Wedding_Y = uD_Wedding_Y;
		UD_Wedding_M = uD_Wedding_M;
		UD_Wedding_D = uD_Wedding_D;
		UD_Hobby = uD_Hobby;
		UD_Resume = uD_Resume;
		UD_Introduction = uD_Introduction;
		UD_Memo = uD_Memo;
		UI_Face_Name = uI_Face_Name;
		UI_Face_Path = uI_Face_Path;
		UI_Sign_Name = uI_Sign_Name;
		UI_Sign_Path = uI_Sign_Path;
	}

	public String getStrWorkID() {
		return strWorkID;
	}

	public void setStrWorkID(String strWorkID) {
		this.strWorkID = strWorkID;
	}

	public String getStrWork_User() {
		return strWork_User;
	}

	public void setStrWork_User(String strWork_User) {
		this.strWork_User = strWork_User;
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

	public String getUD_Genger() {
		return UD_Genger;
	}

	public void setUD_Genger(String uD_Genger) {
		UD_Genger = uD_Genger;
	}

	public String getUD_Birth_Y() {
		return UD_Birth_Y;
	}

	public void setUD_Birth_Y(String uD_Birth_Y) {
		UD_Birth_Y = uD_Birth_Y;
	}

	public String getUD_Birth_M() {
		return UD_Birth_M;
	}

	public void setUD_Birth_M(String uD_Birth_M) {
		UD_Birth_M = uD_Birth_M;
	}

	public String getUD_Birth_D() {
		return UD_Birth_D;
	}

	public void setUD_Birth_D(String uD_Birth_D) {
		UD_Birth_D = uD_Birth_D;
	}

	public int getUD_Calender_Kind() {
		return UD_Calender_Kind;
	}

	public void setUD_Calender_Kind(int uD_Calender_Kind) {
		UD_Calender_Kind = uD_Calender_Kind;
	}

	public String getUD_Tel1() {
		return UD_Tel1;
	}

	public void setUD_Tel1(String uD_Tel1) {
		UD_Tel1 = uD_Tel1;
	}

	public String getUD_Tel2() {
		return UD_Tel2;
	}

	public void setUD_Tel2(String uD_Tel2) {
		UD_Tel2 = uD_Tel2;
	}

	public String getUD_Tel3() {
		return UD_Tel3;
	}

	public void setUD_Tel3(String uD_Tel3) {
		UD_Tel3 = uD_Tel3;
	}

	public String getUD_Mobile1() {
		return UD_Mobile1;
	}

	public void setUD_Mobile1(String uD_Mobile1) {
		UD_Mobile1 = uD_Mobile1;
	}

	public String getUD_Mobile2() {
		return UD_Mobile2;
	}

	public void setUD_Mobile2(String uD_Mobile2) {
		UD_Mobile2 = uD_Mobile2;
	}

	public String getUD_Mobile3() {
		return UD_Mobile3;
	}

	public void setUD_Mobile3(String uD_Mobile3) {
		UD_Mobile3 = uD_Mobile3;
	}

	public String getUD_Zip1() {
		return UD_Zip1;
	}

	public void setUD_Zip1(String uD_Zip1) {
		UD_Zip1 = uD_Zip1;
	}

	public String getUD_Zip2() {
		return UD_Zip2;
	}

	public void setUD_Zip2(String uD_Zip2) {
		UD_Zip2 = uD_Zip2;
	}

	public String getUD_Addr1() {
		return UD_Addr1;
	}

	public void setUD_Addr1(String uD_Addr1) {
		UD_Addr1 = uD_Addr1;
	}

	public String getUD_Addr2() {
		return UD_Addr2;
	}

	public void setUD_Addr2(String uD_Addr2) {
		UD_Addr2 = uD_Addr2;
	}

	public String getUD_Homepage() {
		return UD_Homepage;
	}

	public void setUD_Homepage(String uD_Homepage) {
		UD_Homepage = uD_Homepage;
	}

	public int getUD_Wedding_flag() {
		return UD_Wedding_flag;
	}

	public void setUD_Wedding_flag(int uD_Wedding_flag) {
		UD_Wedding_flag = uD_Wedding_flag;
	}

	public String getUD_Wedding_Y() {
		return UD_Wedding_Y;
	}

	public void setUD_Wedding_Y(String uD_Wedding_Y) {
		UD_Wedding_Y = uD_Wedding_Y;
	}

	public String getUD_Wedding_M() {
		return UD_Wedding_M;
	}

	public void setUD_Wedding_M(String uD_Wedding_M) {
		UD_Wedding_M = uD_Wedding_M;
	}

	public String getUD_Wedding_D() {
		return UD_Wedding_D;
	}

	public void setUD_Wedding_D(String uD_Wedding_D) {
		UD_Wedding_D = uD_Wedding_D;
	}

	public String getUD_Hobby() {
		return UD_Hobby;
	}

	public void setUD_Hobby(String uD_Hobby) {
		UD_Hobby = uD_Hobby;
	}

	public String getUD_Resume() {
		return UD_Resume;
	}

	public void setUD_Resume(String uD_Resume) {
		UD_Resume = uD_Resume;
	}

	public String getUD_Introduction() {
		return UD_Introduction;
	}

	public void setUD_Introduction(String uD_Introduction) {
		UD_Introduction = uD_Introduction;
	}

	public String getUD_Memo() {
		return UD_Memo;
	}

	public void setUD_Memo(String uD_Memo) {
		UD_Memo = uD_Memo;
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

	
	
	
}
