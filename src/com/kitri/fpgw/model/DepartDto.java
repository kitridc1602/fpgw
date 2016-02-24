package com.kitri.fpgw.model;


public class DepartDto {

	private String strCode;
	private String strName;
	private String strPCode;
	private String strPName;
	private int intSort;
	private int intLevel;
	private int intUse_Flag;
	private String strDepart_Index;
	
	public DepartDto() {

	}

	public DepartDto(String strCode, String strName, String strPCode, String strPName, int intSort, int intLevel,
			int intUse_Flag, String strDepart_Index) {
		this.strCode = strCode;
		this.strName = strName;
		this.strPCode = strPCode;
		this.strPName = strPName;
		this.intSort = intSort;
		this.intLevel = intLevel;
		this.intUse_Flag = intUse_Flag;
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

	public String getStrPCode() {
		return strPCode;
	}

	public void setStrPCode(String strPCode) {
		this.strPCode = strPCode;
	}

	public String getStrPName() {
		return strPName;
	}

	public void setStrPName(String strPName) {
		this.strPName = strPName;
	}

	public int getIntSort() {
		return intSort;
	}

	public void setIntSort(int intSort) {
		this.intSort = intSort;
	}

	public int getIntLevel() {
		return intLevel;
	}

	public void setIntLevel(int intLevel) {
		this.intLevel = intLevel;
	}

	public int getIntUse_Flag() {
		return intUse_Flag;
	}

	public void setIntUse_Flag(int intUse_Flag) {
		this.intUse_Flag = intUse_Flag;
	}

	public String getStrDepart_Index() {
		return strDepart_Index;
	}

	public void setStrDepart_Index(String strDepart_Index) {
		this.strDepart_Index = strDepart_Index;
	}
	
	
}
