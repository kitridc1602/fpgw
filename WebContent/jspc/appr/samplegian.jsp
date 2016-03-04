<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
 request.setCharacterEncoding("utf-8");
String coopername1="";
String coopername2="";
String coopername3="";
String coopername4="";

String apprname1="";
String apprname2="";
String apprname3="";
String apprname4="";
String receivedepartname="";
String  receivename="";

//협조자
 coopername1 = request.getParameter("coopername11");
 coopername2 = request.getParameter("coopername22");
 coopername3 = request.getParameter("coopername33");
 coopername4 = request.getParameter("coopername44");
/*  coopername1 =coopername1.replaceAll("\\p{Z}", "");
 coopername2 =coopername2.replaceAll("\\p{Z}", "");
 coopername3 =coopername3.replaceAll("\\p{Z}", "");
 coopername4 =coopername4.replaceAll("\\p{Z}", ""); */
 
 //결제자
   apprname1 = request.getParameter("apprname11");
   apprname2 = request.getParameter("apprname22");
   apprname3 = request.getParameter("apprname33");
   apprname4 = request.getParameter("apprname44");
/*   apprname1 =apprname1.replaceAll("\\p{Z}", "");
  apprname2 =apprname2.replaceAll("\\p{Z}", "");
  apprname3 =apprname3.replaceAll("\\p{Z}", "");
  apprname4 =apprname4.replaceAll("\\p{Z}", ""); */
  
  //수신부서
  receivedepartname=request.getParameter("receivedepartname1");
  
  //수신자
 receivename=request.getParameter("receivename1");
  /* receivename =receivename.replaceAll("\\p{Z}", ""); */
  
  //문서번호
  //앞번호
  String docuno="";
   docuno=request.getParameter("docuno1");
  //뒷번호
  String docuseq="";
   docuseq=request.getParameter("docuseq1");
  //문서종류
  String docukind="";
   docukind=request.getParameter("docukind1");
  
  //공개비공개
  String disclo="";
 disclo=request.getParameter("disclo1");
  
  //보존기한
  String record="";
   record=request.getParameter("record1");
  
  //부서
  String departmentname="";
  departmentname=request.getParameter("departmentname1");
  //기안자
  
  String draftname="";
   draftname=request.getParameter("draftname1");
  
  //기안연일월
  
  String draftyear="";
  String draftmonth="";
  String draftday="";
  
  draftyear=request.getParameter("draftyear1");
  draftmonth=request.getParameter("draftmonth1");
   draftday=request.getParameter("draftday1");
  //제목
  String strtitle="";
   strtitle=request.getParameter("strtitle");
  //내용
  String strvalue="";
  strvalue=request.getParameter("strvalue"); 


 %>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>기안서</title>
<style type="text/css">
.style1 {
	text-align: center;
	font-size: xx-large;
}
.style2 {
	text-align: center;
}
</style>
</head>

<body>
<div class="style1">
<p>기안서</p>
</div>

<form method="post">
<table style="width:50%; height: 100%;" border="1" align="center">
	<tr>
		<td style="width: 95px" class="style2">문서번호</td>
		<td colspan="3" class="style2"><%=docuno %>-<%=docuseq %></td>
		<td class="style2" rowspan="3" style="width: 31px">결<br />
		<br />
		제</td>
		<td class="style2">1란</td>
		<td class="style2">2란</td>
		<td class="style2">3란</td>
		<td class="style2">4란</td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">문서종류</td>
		<td colspan="3" class="style2"><%=docukind %></td>
		<td class="style2"><%=apprname1 %></td>
		<td class="style2"><%=apprname2 %></td>
		<td class="style2"><%=apprname3 %></td>
		<td class="style2"><%=apprname4%></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">부서</td>
		<td colspan="3" class="style2"><%=departmentname %></td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 95px; height: 25px" class="style2">기안일</td>
		<td colspan="3" class="style2" style="height: 25px"><%=draftyear %>/<%=draftmonth %>/<%=draftday %></td>
		<td class="style2" rowspan="3" style="width: 31px">협<br />
		<br />
		조</td>
		<td class="style2" style="height: 25px">1란</td>
		<td class="style2" style="height: 25px">2란</td>
		<td class="style2" style="height: 25px">3란</td>
		<td class="style2" style="height: 25px">4란</td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">기안자</td>
		<td colspan="3" class="style2"><%=draftname %></td>
		<td class="style2"><%=coopername1 %></td>
		<td class="style2"><%=coopername2 %></td>
		<td class="style2"><%=coopername3 %></td>
		<td class="style2"><%=coopername4 %></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">공개여부</td>
		<td style="width: 113px" class="style2"><%=disclo %></td>
		<td style="width: 80px" class="style2">보존기간</td>
		<td style="width: 153px" class="style2"><%=record %></td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">수신부서</td>
		<td colspan="8" class="style2"><%=receivedepartname %></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">수신자</td>
		<td colspan="8" class="style2"><%=receivename %></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">제목</td>
		<td colspan="8" class="style2"><%=strtitle %></td>
	</tr>
	<tr>
		<td colspan="9" class="style2" style="height: 273px"><%=strvalue %></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">첨부파일</td>
		<td colspan="8" class="style2">&nbsp;</td>
	</tr>
</table>

<table align="center">
<tr>
<td>
	<input name="submit" type="submit" value="작성완료" style="width: 133px" /> &nbsp;&nbsp;&nbsp;&nbsp; 
	<input name="cancel" type="button" value="취소" style="width: 133px" />
	</td>
</tr>
</table>
</form>
</body>

</html>