package com.kitri.fpgw.util;

public class StringClass {

	public StringClass() {
	}

	/**작업 ID 생성**/
	public static String NewWorkIDCreate(){
		
		return Integer.toString((int)(Math.random() * 1000000000));
	}
	
	
}
