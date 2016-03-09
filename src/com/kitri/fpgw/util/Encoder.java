package com.kitri.fpgw.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Encoder {

	public static String urlToUTF(String tmp){
		
		String utf = "";
		try {
			
			utf = URLEncoder.encode(tmp, "UTF-8");
					
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return utf;
	}
	
	
}
