<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>

 <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
        <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

       
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/jquery-ui-i18n.min.js"></script>

        <script>
            $(function() {
              $.datepicker.setDefaults($.datepicker.regional['ko']); 
              $('#startdate').datepicker();
              $('#enddate').datepicker();
            });
        </script>
        <script type="text/javascript">
        function a(){
        alert("상신이 완료되었습니다");
        parent.location.replace="agreement.htm";
        }
        
        function b(){
  		   alert("취소하셨으므로 전페이지로 돌아갑니다");
        parent.location.replace="write.htm";

        }
        
        
        </script>

<!DOCTYPE html>


<html lang="en">
          <!-- start: content -->
            <div id="content">
                <div class="panel">
               	
                  <div class="panel-body">
                    <div class="col-md-6 col-sm-12">
                    	<h3 class="animated fadeInLeft">DC16th Team No.2 GroupWare Project</h3>
                   	</div>
                   	
                    <div class="col-md-6 col-sm-12 text-right">
                        <h5 id="addr" style="color:#DDDDDE;"><span class="fa  fa-map-marker"></span></h5>                  
                    </div>
                  </div>                    

               </div>
                <div>
                	<!-- 실제 화면 구동부분 -->
                	
                	
<div style="text-align:center;">
<table width="700" border="1" style="width: 700px">



	<tr>
		<td colspan="6">
			<h1>기안서</h1>
		</td>
	</tr>
	<tr>
	<td style="width: 181px" rowspan="3">
	<table border="1" style="width: 181px; height: 142px;">
	
	<tr>
	<td bgcolor="silver" style="height: 35px" >문서 번호</td>
	<td style="height: 35px">1600-2312</td>
	</tr>
	
	<tr>
	<td bgcolor="silver" style="height: 35px" >문서종류</td>
	<td style="height: 35px">기안서</td>
	</tr>
	
	<tr>
	<td bgcolor="silver" style="height: 36px" >기안일자</td>
	<td style="height: 36px">2016.03.11</td>
	</tr>

<tr>
	<td bgcolor="silver" style="height: 36px" >기안자</td>
	<td style="height: 36px">오와와</td>
	</tr>


	
	
	</table>
	</td>
	<td rowspan="3" style="width: 27px">
	결<br />
	<br />
	제</td>
	<td style="height: 19px; width: 119px;">부 장</td>
	<td style="height: 19px; width: 119px;"></td>
	<td style="height: 19px; width: 119px;"></td>
	<td style="height: 19px; width: 119px;"></td>

	
	</tr>
				

	<tr>
	<td style="height: 109px; width: 119px;">김 민 수</td>
	<td style="height: 109px; width: 119px;">
	<form method="post" style="width: 49px">
		<input name="Button1" type="button" value="+" /></form>
	</td>
	<td style="height: 109px; width: 119px;">
	<form method="post">
		<input name="Button2" type="button" value="+" /></form>
	</td>
	<td style="height: 109px; width: 119px;">
	<form method="post">
		<input name="Button3" type="button" value="+" /></form>
	</td>

	
	</tr>
				

	<tr>
	<td style="height: 13px; width: 119px;">SIGN</td>
	<td style="height: 13px; width: 119px;"></td>
	<td style="height: 13px; width: 119px;"></td>
	<td style="height: 13px; width: 119px;"></td>

	
	</tr>
	<tr>
	<td colspan="2">시작일</td>
	<td><input type="text" id="startdate" size="10" style="width:100%;" /></td>
	<td colspan="2">종료일</td>
	<td><input type="text" id="enddate" size="10" style="width:100%;" /></td>
	
	</tr>
	<tr>
	<td>제목</td>
	<td style="width: 27px" colspan="5">
	<input name="Text1" type="text" style="width: 505px" /></td>
	</tr>
	<tr>
	<td colspan="6"><textarea style="width:100%;height:400px;"></textarea></td>
	</tr>
			
	<tr>
	<td colspan="2">파일첨부</td>
	<td colspan="4"><input type="file" style="width:100%;"/></td>
	</tr>	
<tr>
<td colspan="6">
<input name="Button1" type="button" value="상신" style="width: 140px" onclick="a()"/>
<input name="Button1" type="button" value="취소" style="width: 140px" onclick="b()"/></td>
</tr>
</table>
 <form>
          
        </form>
</div>
                	
                </div>
      		  </div>
          <!-- end: content -->

</html>