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

//������
 coopername1 = request.getParameter("coopername11");
 coopername2 = request.getParameter("coopername22");
 coopername3 = request.getParameter("coopername33");
 coopername4 = request.getParameter("coopername44");
/*  coopername1 =coopername1.replaceAll("\\p{Z}", "");
 coopername2 =coopername2.replaceAll("\\p{Z}", "");
 coopername3 =coopername3.replaceAll("\\p{Z}", "");
 coopername4 =coopername4.replaceAll("\\p{Z}", ""); */
 
 //������
   apprname1 = request.getParameter("apprname11");
   apprname2 = request.getParameter("apprname22");
   apprname3 = request.getParameter("apprname33");
   apprname4 = request.getParameter("apprname44");
/*   apprname1 =apprname1.replaceAll("\\p{Z}", "");
  apprname2 =apprname2.replaceAll("\\p{Z}", "");
  apprname3 =apprname3.replaceAll("\\p{Z}", "");
  apprname4 =apprname4.replaceAll("\\p{Z}", ""); */
  
  //���źμ�
  receivedepartname=request.getParameter("receivedepartname1");
  
  //������
 receivename=request.getParameter("receivename1");
  /* receivename =receivename.replaceAll("\\p{Z}", ""); */
  
  //������ȣ
  //�չ�ȣ
  String docuno="";
   docuno=request.getParameter("docuno1");
  //�޹�ȣ
  String docuseq="";
   docuseq=request.getParameter("docuseq1");
  //��������
  String docukind="";
   docukind=request.getParameter("docukind1");
  
  //���������
  String disclo="";
 disclo=request.getParameter("disclo1");
  
  //��������
  String record="";
   record=request.getParameter("record1");
  
  //�μ�
  String departmentname="";
  departmentname=request.getParameter("departmentname1");
  //�����
  
  String draftname="";
   draftname=request.getParameter("draftname1");
  
  //��ȿ��Ͽ�
  
  String draftyear="";
  String draftmonth="";
  String draftday="";
  
  draftyear=request.getParameter("draftyear1");
  draftmonth=request.getParameter("draftmonth1");
   draftday=request.getParameter("draftday1");
  //����
  String strtitle="";
   strtitle=request.getParameter("strtitle");
  //����
  String strvalue="";
  strvalue=request.getParameter("strvalue"); 


 %>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ȼ�</title>
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
<p>��ȼ�</p>
</div>

<form method="post">
<table style="width:50%; height: 100%;" border="1" align="center">
	<tr>
		<td style="width: 95px" class="style2">������ȣ</td>
		<td colspan="3" class="style2"><%=docuno %>-<%=docuseq %></td>
		<td class="style2" rowspan="3" style="width: 31px">��<br />
		<br />
		��</td>
		<td class="style2">1��</td>
		<td class="style2">2��</td>
		<td class="style2">3��</td>
		<td class="style2">4��</td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">��������</td>
		<td colspan="3" class="style2"><%=docukind %></td>
		<td class="style2"><%=apprname1 %></td>
		<td class="style2"><%=apprname2 %></td>
		<td class="style2"><%=apprname3 %></td>
		<td class="style2"><%=apprname4%></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">�μ�</td>
		<td colspan="3" class="style2"><%=departmentname %></td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 95px; height: 25px" class="style2">�����</td>
		<td colspan="3" class="style2" style="height: 25px"><%=draftyear %>/<%=draftmonth %>/<%=draftday %></td>
		<td class="style2" rowspan="3" style="width: 31px">��<br />
		<br />
		��</td>
		<td class="style2" style="height: 25px">1��</td>
		<td class="style2" style="height: 25px">2��</td>
		<td class="style2" style="height: 25px">3��</td>
		<td class="style2" style="height: 25px">4��</td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">�����</td>
		<td colspan="3" class="style2"><%=draftname %></td>
		<td class="style2"><%=coopername1 %></td>
		<td class="style2"><%=coopername2 %></td>
		<td class="style2"><%=coopername3 %></td>
		<td class="style2"><%=coopername4 %></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">��������</td>
		<td style="width: 113px" class="style2"><%=disclo %></td>
		<td style="width: 80px" class="style2">�����Ⱓ</td>
		<td style="width: 153px" class="style2"><%=record %></td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
		<td class="style2">&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">���źμ�</td>
		<td colspan="8" class="style2"><%=receivedepartname %></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">������</td>
		<td colspan="8" class="style2"><%=receivename %></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">����</td>
		<td colspan="8" class="style2"><%=strtitle %></td>
	</tr>
	<tr>
		<td colspan="9" class="style2" style="height: 273px"><%=strvalue %></td>
	</tr>
	<tr>
		<td style="width: 95px" class="style2">÷������</td>
		<td colspan="8" class="style2">&nbsp;</td>
	</tr>
</table>

<table align="center">
<tr>
<td>
	<input name="submit" type="submit" value="�ۼ��Ϸ�" style="width: 133px" /> &nbsp;&nbsp;&nbsp;&nbsp; 
	<input name="cancel" type="button" value="���" style="width: 133px" />
	</td>
</tr>
</table>
</form>
</body>

</html>