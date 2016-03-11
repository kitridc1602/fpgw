<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>
<!DOCTYPE html>
<html lang="en">


<script type="text/javascript">

	/* 입력사항 체크 */
	
	function idCheck(){
		
		var strID = $("#strID");
		var cID = $("#strID").val();
		
		if(cID != null){
			
			if(cID.length > 6){
				
				var root = "${root }";
				
				$.ajax({
					
					url: root + "/user/idcheck.html",
					type: "POST",
					dataType: "json",
					data: {"strID" : cID},
					success:function(data){
					
						if(data.cnt == 0){
							
							strID.css('background-color', '#82FC63');
						} else {
							
							strID.css('background-color', '#F75B5B');
						}
					},
					error:function(error){
						
						alert("error~~~~~!!");
					}
					
					
					
				});
			} else if (cID.length == 0) {
				
				strID.css('background-color', '');
			} else{
				
				strID.css('background-color', '#F75B5B');
			}
			
		}
		
	}
	
	function passwordCheck(){
		
		var firstPWD = $("#strPWD");
		var secondPWD = $("#restrPWD");
		
		var firstValue = $("#strPWD").val();
		var secondValue = $("#restrPWD").val();
		
		if((firstValue.length == 0) && (secondValue.length == 0)){
			
			firstPWD.css('background-color', '');
			secondPWD.css('background-color', '');
		} else {
		
			if((firstValue.length > 6) 
					&& (secondValue.length > 6)
					&& (firstValue == secondValue)){
				
				firstPWD.css('background-color', '#82FC63');
				secondPWD.css('background-color', '#82FC63');
			} else {
				
				firstPWD.css('background-color', '#F75B5B');
				secondPWD.css('background-color', '#F75B5B');
			}
		
		}
		
	}
	
	
	
	function checkInfomation(kind){
	
		var resulet = true;
		
		var id = $("#strID").css('background-color');
		var strPWD = $("#strPWD").css('background-color');
		var restrPWD = $("#restrPWD").css('background-color');
		
		if(id != "rgb(130, 252, 99)"){
			
			alert("아이디가 올바르지 않습니다.");			
			result = false;
			return;
		}
		
		if((strPWD != "rgb(130, 252, 99)")
				|| (restrPWD != "rgb(130, 252, 99)")){
			
			alert("비밀번호가 올바르지 않습니다.");
			result = false;
			return;
		}
		
		return resulet;
	}
	
	
	function userSubmit(kind){
		
		if(checkInfomation(kind)){
		 
			var userModify = document.getElementById('userModify');
			
			if(kind == 'insert'){
				
				userModify.action = '${root }/user/insert.html';
				
			} else {
				
				userModify.action = '${root }/user/modify.html';
				
			}
			
			userModify.method = 'POST';
			userModify.enctype = 'multipart/form-data';
			userModify.submit();
		}
		
		
	}
	
</script>

<script type="text/javascript">

	function readUploadImage(inputObject) {
	
	/*
	브라우저에서 FileReader가 지원되는지 확인하기 위해 
	window.File && window.FileReader 해 본다. 
	*/
	
		if ( window.File && window.FileReader ) {
	
			/*
			입력된 파일이 1개 이상 있는지 확인~
			*/
	
			if ( inputObject.files && inputObject.files[0]) {
	
				/* 이미지 파일인지도 체크해 주면 좋지~ */
	
				if ( !(/image/i).test(inputObject.files[0].type ) ){
	
					alert("이미지 파일을 선택해 주세요!");
	
					return false;
	
				}
	
				/* FileReader 를 준비 한다. */
	
				var reader = new FileReader();
				
				reader.onload = function (e) {
	
					/* reader가 다 읽으면 userImage에 뿌려 주면 끝~  */
					
					if(e.target.result != null){
						
						$('#userImage').removeAttr("style");
					}
					$('#userImage').attr('src', e.target.result);
	
				}
	
				/* input file에 있는 파일 하나를 읽어온다. */
				reader.readAsDataURL(inputObject.files[0]);
			}
	
	
	
		} else {
	
			alert( "미리보기 안되요.~ 브라우저를 업그레이드하세요~");
	
		}
	
	}

</script>


          <!-- start: content -->
            <div id="content">
                <div class="panel">
                  <div class="panel-body">
                      <div class="col-md-6 col-sm-12">
                        <h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
                        <p class="animated fadeInDown"><span class="fa  fa-map-marker"></span> 관리자 업무 >> 사용자 관리</p>

                        
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="col-md-6 col-sm-6 text-right" style="padding-left:10px;">
                          <h5 id="addr"  style="color:#DDDDDE;"><span class="fa  fa-map-marker"></span> 위치정보 들어가는 자리</h5>
                          <h1 style="margin-top: -10px;color: #ddd;"></h1>
                        </div>
                        <div class="col-md-6 col-sm-6">
                           <div class="wheather">
	                            <div class="sun animated pulse infinite">
	                              <div class="suny"></div>
	                            </div>
                          </div>
                        </div>                   
                    </div>
                  </div>                    
                </div>
                
                <div class="panel-heading bg-white border-none" style="margin-bottom: 20px;">
                   	<h4><span class="icon-notebook icons"></span>사용자 정보 수정</h4>
                </div>

					<!-- start : 메뉴 디자인 구성하는 위치 -->
				
				<div class="col-md-12">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<div class="panel-heading bg-white border-none">
                   			<div class="panel-body">
                   				<form id="userModify" name="userModify">
	                   				<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px;">
	                   					<h4>개인정보</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px; width: 95%;">
	                   					<tbody>
	                   						<tr>
	                   							<td align="right" style="width: 10%;">
	                   								<h6>아이디</h6>
	                   							</td>
	                   							<td>
	                   								<c:choose>
	                   									<c:when test="${userModify.strID ne null}">
	                   										<input type="text" class="form-control" id="strID" name="strID" readonly="readonly" value="${userModify.strID }">
	                   									</c:when>
	                   									
	                   									<c:otherwise>
	                   										<input type="text" class="form-control" id="strID" name="strID" onkeyup="idCheck()" placeholder="7글자 이상">
	                   									</c:otherwise>
	                   								</c:choose>
	                   							</td>
	                   							
	                   							<td align="right" style="width: 10%;">
	                   								<h6>사원번호</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strCode" name="strCode" value="${userModify.strCode }" class="form-control" readonly="readonly">
	                   							</td>
	                   							<td rowspan="5" align="center" style="width: 20%;">
	                   							
	                   								<c:choose>
	                   								
	                   									<c:when test="${userModify.strCode ne null }">
	                   										<img alt="" id="userImage" name="userImage" width="180px" height="240px" src="${root }${userModify.strFace_Path }${userModify.strFace_Name }">
	                   									</c:when>
	                   									
	                   									<c:otherwise>
	                   										<img alt="" id="userImage" name="userImage" width="180px" height="240px" style="display: none;">
	                   									</c:otherwise>
	                   								</c:choose>
	                   								
	                   								<br>
	                   								<br>
	                   								<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="사진 추가/수정" onclick="document.getElementById('fileBean').click();"/>
	                   								<input type="file" id="fileBean" name="fileBean" onchange="readUploadImage(this)" style="display: none;"/>
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>비밀번호</h6>
	                   							</td>
	                   							<td>
	                   								<input type="password" id="strPWD" name="strPWD"  value="${userModify.strPWD }" class="form-control" onkeyup="passwordCheck()" placeholder="7글자 이상">
	                   							</td>
	                   							<td align="right">
	                   								<h6>비밀번호 확인</h6>
	                   							</td>
	                   							<td>
	                   								<input type="password" id="restrPWD" name="restrPWD"  value="${userModify.strPWD }" class="form-control" onkeyup="passwordCheck()" placeholder="7글자 이상">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>이름</h6>
	                   							</td>
	                   							<td>
	                   								<input type="text" class="form-control" id="strName" name="strName" value="${userModify.strName }">
	                   							</td>
	                   							<td align="right">
	                   								<h6>성별</h6>
	                   							</td>
	                   							<td>
	                   								&nbsp;&nbsp;
	                   								<c:choose>
	                   									<c:when test="${userModify.strGender eq 'F' }">
	                   										<input type="radio" name="strGender" id="strGender" value="M">
	                   										&nbsp;&nbsp;남&nbsp;&nbsp;&nbsp;
	                   										<input type="radio" name="strGender" id="strGender" value="F" checked="checked">
	                   									</c:when>
	                   								
	                   									<c:otherwise>
	                   										<input type="radio" name="strGender" id="strGender" value="M" checked="checked">
	                   										&nbsp;&nbsp;남&nbsp;&nbsp;&nbsp;
	                   										<input type="radio" name="strGender" id="strGender" value="F">
	                   									</c:otherwise>
	                   								</c:choose>
	                   								&nbsp;&nbsp;여
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>생년월일</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<select style="width: 100px;" id="strBirth_YYYY" name="strBirth_YYYY">
		                                    			<option value="">선택</option>
		                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
		                                    					<c:choose>
		                                    						<c:when test="${year eq userModify.strBirth_YYYY }">
		                                    							<option value="${year }" selected="selected">${year }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${year }">${year }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			년
		                                  			<select style="width: 100px;" id="strBirth_MM" name="strBirth_MM">
		                                    			<option value="">선택</option>
		                                    				<c:forEach var="month" begin="1" end="12" step="1">
		                                    					<c:if test="${month < 10 }">
		                                    						<c:set var="month" value="0${month }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${month eq userModify.strBirth_MM }">
		                                    							<option value="${month }" selected="selected">${month }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${month }">${month }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			월
		                                  			<select style="width: 100px;" id="strBirth_DD" name="strBirth_DD">
		                                    			<option value="">선택</option>
		                                    				<c:forEach var="date" begin="1" end="31" step="1">
		                                    					<c:if test="${date < 10 }">
		                                    						<c:set var="date" value="0${date }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${date eq userModify.strBirth_DD }">
		                                    							<option value="${date }" selected="selected">${date }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${date }">${date }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			일&nbsp;&nbsp;&nbsp;(&nbsp;
		                                  			<c:choose>
	                   									<c:when test="${userModify.intCalender_Kind eq 0 }">
	                   										<input type="radio" name="intCalender_Kind" id="intCalender_Kind" value="0" checked="checked">
		                                  					&nbsp;음&nbsp;&nbsp;&nbsp;&nbsp;
		                                  					<input type="radio" name="intCalender_Kind" id="intCalender_Kind" value="1">
	                   									</c:when>
	                   								
	                   									<c:otherwise>
	                   										<input type="radio" name="intCalender_Kind" id="intCalender_Kind" value="0">
		                                  					&nbsp;음&nbsp;&nbsp;&nbsp;&nbsp;
		                                  					<input type="radio" name="intCalender_Kind" id="intCalender_Kind" value="1" checked="checked">
	                   									</c:otherwise>
	                   								</c:choose>
		                                  			&nbsp;양&nbsp;)
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>자택 전화번호</h6>
	                   							</td>
	                   							<td>
	                   								<input type="text" style="text-align: center; width: 30%;" id="strHome_Tel1" name="strHome_Tel1" value="${userModify.strHome_Tel1 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 30%;" id="strHome_Tel2" name="strHome_Tel2" value="${userModify.strHome_Tel2 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 30%;" id="strHome_Tel3" name="strHome_Tel3" value="${userModify.strHome_Tel3 }">
	                   							</td>
	                   							
	                   							<td align="right">
	                   								<h6>핸드폰</h6>
	                   							</td>
	                   							<td>
	                   								<input type="text" style="text-align: center; width: 30%;" id="strMobile1" name="strMobile1" value="${userModify.strMobile1 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 30%;" id="strMobile2" name="strMobile2" value="${userModify.strMobile2 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 30%;" id="strMobile3" name="strMobile3" value="${userModify.strMobile3 }">
	                   							</td>
	                   							
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>주소</h6>
	                   							</td>
	                   							<td colspan="6">
	                   								<input type="text" id="strZip1" name="strZip1" style="text-align: center; width: 10%;" readonly="readonly" value="${userModify.strZip1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strZip2" name="strZip2" style="text-align: center; width: 10%;" readonly="readonly" value="${userModify.strZip2 }">
	                   								<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="우편번호 검색" onclick="addrSearch()"/>
	                   								<input type="text" class="form-control" id="strAddr1" name="strAddr1" style="margin-top: 10px; width: 70%;" readonly="readonly" value="${userModify.strAddr1 }">
	                   								<input type="text" class="form-control" id="strAddr2" name="strAddr2" style="margin-top: 10px; width: 70%;" value="${userModify.strAddr2 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>홈페이지</h6>
	                   							</td>
	                   							<td colspan="6">
	                   								<input type="text" id="strHome_Page" name="strHome_Page" class="form-control" style="width: 70%;" value="${userModify.strHome_Page }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>결혼여부</h6>
	                   							</td>
	                   							<td colspan="6">
	                   								<c:choose>
	                   									<c:when test="${userModify.intWedding_Flag eq 0 }">
	                   										<input type="radio" name="intWedding_Flag" id="intWedding_Flag" value="0" checked="checked">
			                   								&nbsp;&nbsp;미혼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                   								<input type="radio" name="intWedding_Flag" id="intWedding_Flag" value="1">
	                   									</c:when>
	                   								
	                   									<c:otherwise>
	                   										<input type="radio" name="intWedding_Flag" id="intWedding_Flag" value="0">
			                   								&nbsp;&nbsp;미혼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                   								<input type="radio" name="intWedding_Flag" id="intWedding_Flag" value="1" checked="checked">
	                   									</c:otherwise>
	                   								</c:choose>
	                   								&nbsp;&nbsp;기혼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(결혼 기념일 : 
			                              				<select style="width: 100px;" id="strWedding_YYYY" name="strWedding_YYYY">
			                                    			<option value="">선택</option>
			                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
			                                    					<c:choose>
			                                    						<c:when test="${year eq userModify.strWedding_YYYY }">
			                                    							<option value="${year }" selected="selected">${year }</option>
			                                    						</c:when>
			                                    							
			                                    						<c:otherwise>
			                                    							<option value="${year }">${year }</option>	
			                                    						</c:otherwise>
			                                    					</c:choose>
		                                    					</c:forEach>
			                                  			</select>
			                                  			년
			                                  			<select style="width: 100px;" id="strWedding_MM" name="strWedding_MM">
			                                    			<option value="">선택</option>
			                                    				<c:forEach var="month" begin="1" end="12" step="1">
			                                    					<c:if test="${month < 10 }">
			                                    						<c:set var="month" value="0${month }"/>
			                                    					</c:if>
			                                    					
			                                    					<c:choose>
			                                    						<c:when test="${month eq userModify.strWedding_MM }">
			                                    							<option value="${month }" selected="selected">${month }</option>
			                                    						</c:when>
			                                    							
			                                    						<c:otherwise>
			                                    							<option value="${month }">${month }</option>	
			                                    						</c:otherwise>
			                                    					</c:choose>
			                                    				</c:forEach>
			                                  			</select>
			                                  			월
			                                  			<select style="width: 100px;" id="strWedding_DD" name="strWedding_DD">
			                                    			<option value="">선택</option>
			                                    				<c:forEach var="date" begin="1" end="31" step="1">
			                                    					<c:if test="${date < 10 }">
			                                    						<c:set var="date" value="0${date }"/>
			                                    					</c:if>
			                                    					
			                                    					<c:choose>
			                                    						<c:when test="${date eq userModify.strWedding_DD }">
			                                    							<option value="${date }" selected="selected">${date }</option>
			                                    						</c:when>
			                                    							
			                                    						<c:otherwise>
			                                    							<option value="${date }">${date }</option>	
			                                    						</c:otherwise>
			                                    					</c:choose>
			                                    				</c:forEach>
			                                  			</select>
			                              				)
	                   							</td>
	                   						</tr>
	                   					</tbody>
	                   				</table>
	                   				
	                   				<div style="border-bottom: 1px dashed #BDBDBD; margin-top: 30px; margin-bottom: 10px;">
	                   					<h4>회사정보</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px; width: 95%;">
	                   					<tbody>
	                   						<tr>
	                   							<td align="right" style="width: 10%;">
	                   								<h6>직통 전화번호</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strCo_Tel1" name="strCo_Tel1" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strCo_Tel2" name="strCo_Tel2" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel2 }">
	                   								<span>-</span>
	                   								<input type="text" id="strCo_Tel3" name="strCo_Tel3" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel3 }">
	                   								(내선)
	                   								<input type="text" id="strCo_Tel_InLine" name="strCo_Tel_InLine" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel_InLine }">
	                   							</td>
	                   							<td align="right" style="width: 10%;">
	                   								<h6>사용여부</h6>
	                   							</td>
	                   							<td>
	                   								<select id="intUse_Flag" name="intUse_Flag" style="width: 40%;">
		                   								<c:forEach var="use" items="${sessionScope.useFlag }">
		                              						<c:choose>
		                              							<c:when test="${use.strSCode eq userModify.intUse_Flag }">
	                              									<option value="${use.strSCode }" selected="selected">${use.strName }</option>
		                              							</c:when>
		                              								
		                              							<c:otherwise>
	                              									<option value="${use.strSCode }">${use.strName }</option>
		                              							</c:otherwise>                              						
		                              						</c:choose>
		                              					</c:forEach>
	                   								</select>
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>부서</h6>
	                   							</td>
	                   							<td>
	                   								<label style="width: 90%;" id="strDepart_Nm" name="strDepart_Nm">${userModify.strDepart_Nm }</label>
	                   								<input type="hidden" id="strDepart_Cd" name="strDepart_Cd" value="${userModify.strDepart_Cd }">
	                   								<a href=""  data-toggle="modal" data-target="#depart" onclick="selectImport('strDepart_Cd', 'strDepart_Nm')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>	
	                   							</td>
	                   							<td align="right" style="width: 10%;">
	                   								<h6>직급</h6>
	                   							</td>
	                   							<td>
	                   								<select class="form-control" style="width: 60%;" id="strPosition_Cd" name="strPosition_Cd">
	                   									<option value="000">선택</option>
			                              					<c:forEach var="po" items="${position }">
			                              						<c:choose>
			                              							<c:when test="${po.strSCode eq userModify.strPosition_Cd }">
			                              								<c:if test="${po.strSCode ne '000' }">
			                              									<option value="${po.strSCode }" selected="selected">${po.strName }</option>
			                              								</c:if>
			                              							</c:when>
			                              								
			                              							<c:otherwise>
			                              								<c:if test="${po.strSCode ne '000' }">
			                              									<option value="${po.strSCode }">${po.strName }</option>
		                              									</c:if>	
			                              							</c:otherwise>                              						
			                              						</c:choose>
			                              					</c:forEach>
		                              				</select>
	                   							</td>
	                   							<td align="right" style="width: 10%;">
	                   								<h6>권한</h6>
	                   							</td>
	                   							<td>
	                   								<select id="intLevel" name="intLevel" style="width: 40%;">
		                   								<c:forEach var="level" begin="1" end="9" step="1">
		                   									<option value="${level }">${level }</option>
		                   								</c:forEach>
	                   								</select>
	                   							</td>
	                   							
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>입사일</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<select style="width: 100px;" id="strHire_YYYY" name="strHire_YYYY">
		                                    			<option value="">선택</option>
		                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
		                                    					<c:choose>
		                                    						<c:when test="${year eq userModify.strHire_YYYY }">
		                                    							<option value="${year }" selected="selected">${year }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${year }">${year }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
	                                    					</c:forEach>
		                                  			</select>
		                                  			년
		                                  			<select style="width: 100px;" id="strHire_MM" name="strHire_MM">
		                                    			<option value="">선택</option>
		                                    				<c:forEach var="month" begin="1" end="12" step="1">
		                                    					<c:if test="${month < 10 }">
		                                    						<c:set var="month" value="0${month }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${month eq userModify.strHire_MM }">
		                                    							<option value="${month }" selected="selected">${month }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${month }">${month }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			월
		                                  			<select style="width: 100px;" id="strHire_DD" name="strHire_DD">
		                                    			<option value="">선택</option>
		                                    				<c:forEach var="date" begin="1" end="31" step="1">
		                                    					<c:if test="${date < 10 }">
		                                    						<c:set var="date" value="0${date }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${date eq userModify.strHire_DD }">
		                                    							<option value="${date }" selected="selected">${date }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${date }">${date }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			일
	                   							</td>
	                   							<td align="right">
	                   								<h6>총 휴가</h6>
	                   							</td>
	                   							<td>
	                   								<c:choose>
	                   									<c:when test="${!empty userModify.intVacation_Count }">
	                   										<input type="text" id="intVacation_Count" name="intVacation_Count"  value="${userModify.intVacation_Count }" style="width: 40%; text-align: right;"><label>일</label>
	                   									</c:when>
	                   									
	                   									<c:otherwise>
	                   										<input type="text" id="intVacation_Count" name="intVacation_Count"  value="0" style="width: 40%; text-align: right;"><label>일</label>
	                   									</c:otherwise>
	                   								</c:choose>
	                   							</td>
	                   						</tr>
	                   					</tbody>
	                   				</table>
	
	                   				<div style="border-bottom: 1px dashed #BDBDBD; margin-top: 30px; margin-bottom: 10px;">
	                   					<h4>부가정보</h4>
	                   				</div>
	
									<table style="margin-left: 30px; width: 95%;">
										<tbody>
											<tr>
	                   							<td align="right">
	                   								<h6>취미</h6>
	                   							</td>
	                   							<td>
	                   								<input type="text" id="strHobby" name="strHobby" class="form-control" style="width: 738px;" value="${userModify.strHobby }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>약식 이력사항</h6>
	                   							</td>
	                   							<td>
	                   								<textarea id="strResume" name="strResume" rows="7" cols="" class="form-control">${userModify.strResume }</textarea>
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>자기소개</h6>
	                   							</td>
	                   							<td>
	                   								<textarea id="strIntroduction" name="strIntroduction" rows="10" cols="" class="form-control">${userModify.strIntroduction }</textarea>
	                   							</td>
	                   						</tr>
										</tbody>
									</table>
									
									<div style="margin-top: 30px; margin-bottom: 10px; text-align: right;">
										<c:choose>
											<c:when test="${!empty userModify.strCode }">
	                   							<input type="button" id="btnModify" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="수정" onclick="userSubmit('modify')"/>
	                   						</c:when>
	                   						
	                   						<c:otherwise>
	                   							<input type="button" id="btnInsert" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="입력" onclick="userSubmit('insert')"/>
	                   						</c:otherwise>
	                   					</c:choose>
	                   					<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="종료" onclick="location.href='${root}/user/selectall.html'"/>
	                   					<input type="hidden" id="strGet_User_Cd" name="strGet_User_Cd" value="${sessionScope.userInfo.strCode }">
	                   					<input type="hidden" id="strEdit_User_Cd" name="strEdit_User_Cd" value="${sessionScope.userInfo.strCode }">
	                   				</div>
	                   				
								</form>
                   			</div>
               			</div>
					
						
					</div>
					<div class="col-md-1"></div>
				
				
				
				</div>
				
				
					
                
					
					
					<!-- end : 메뉴 디자인 구성하는 위치 -->
					
           </div>
          <!-- end: content -->

</html>