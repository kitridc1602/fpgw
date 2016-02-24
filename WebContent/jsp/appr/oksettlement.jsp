<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
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
                	     	<table>
	<tr>
		<td colspan="2">
		<p style="width: 239px">개인 문서함 ▶ 결제완료문서</p>
		</td>
		<td><select name="Select1">
		<option>검색조건</option>
		<option>기안자</option>
		<option>문서번호</option>
		<option>제목</option>
		<option>문서종류</option>
		</select> <input name="Text1" type="text" />
		<input name="Button1" type="button" value="검색" /> </td>
	</tr>
</table>
<table border="2" style="width: 1006px">
	<tr>
	
		<td style="width: 78px">문서번호</td>
		<td style="width: 99px">기안날짜</td>
		<td style="width: 108px">문서종류</td>
		<td style="width: 291px">문서명</td>
		<td style="width: 90px">상태</td>
	</tr>
	<c:forEach var="c" items="${list }">
	<tr>
	
		<td style="width: 78px">${c.strAm_Docu_No }-${c.strAm_Seq }</td>
		<td style="width: 99px">${c.strAm_Draft_Y }/${c.strAm_Draft_M }/${c.strAm_Draft_D }</td>
		<td style="width: 108px">${c.strDl_Name }</td>
		<td style="width: 291px"><a href="#" onclick="a()">${c.strAm_Title }</a></td>
		<td style="width: 90px">${c.strCm_Name}</td>
	</tr>
</c:forEach>
</table>
                
                </div>
      		  </div>
          <!-- end: content -->

</html>