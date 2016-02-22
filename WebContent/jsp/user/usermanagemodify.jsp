<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function addrSearch(){
		new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	        }
	    }).open();
	}
    
</script>



          <!-- start: content -->
            <div id="content">
                <div class="panel">
                  <div class="panel-body">
                      <div class="col-md-6 col-sm-12">
                        <h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
                        <p class="animated fadeInDown"><span class="fa  fa-map-marker"></span> 사용자 관리 >> 사용자 정보 수정</p>

                        
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
                   				<form action="${root }/user/update.html" method="post" enctype="application/x-www-form-urlencoded">
	                   				<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px;">
	                   					<h4>개인정보</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px;">
	                   					<tbody>
	                   						<tr>
	                   							<td align="right" style="border: 0px;">
	                   								<h6>사원번호</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<label>${sessionScope.userInfo.strCode }</label>
	                   							</td>
	                   							<td></td>
	                   							<td rowspan="6" align="center">
	                   								<img alt="" width="180px" height="240px" src="${root }${sessionScope.userImageInfo.strFace_Path }${sessionScope.userImageInfo.strFace_Name }">
	                   								<br>
	                   								<br>
	                   								<input type="button" class=" btn btn-3d" value="사진 추가/수정"/>
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>아이디</h6>
	                   							</td>
	                   							<td>
	                   								<input type="text" class="form-control" value="${sessionScope.userInfo.strID }">
	                   							</td>
	                   							<td align="right">
	                   								<h6>비밀번호</h6>
	                   							</td>
	                   							<td>
	                   								<input type="password" class="form-control" value="${sessionScope.userInfo.strPWD }">
	                   							</td>
	                   							<td></td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>새 비밀번호</h6>
	                   							</td>
	                   							<td>
	                   								<input type="password" class="form-control" value="">
	                   							</td>
	                   							<td align="right">
	                   								<h6>비밀번호 확인</h6>
	                   							</td>
	                   							<td>
	                   								<input type="password" class="form-control" value="">
	                   							</td>
	                   							<td></td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>이름</h6>
	                   							</td>
	                   							<td>
	                   								<input type="text" class="form-control" value="${sessionScope.userInfo.strName }">
	                   							</td>
	                   							<td align="right">
	                   								<h6>성별</h6>
	                   							</td>
	                   							<td>
	                   								&nbsp;&nbsp;
	                   								<c:choose>
	                   									<c:when test="${sessionScope.userDatailInfo.strGender eq 'F' }">
	                   										<input type="radio" name="gender" id="gender">
	                   										&nbsp;&nbsp;남&nbsp;&nbsp;&nbsp;
	                   										<input type="radio" name="gender" id="gender" checked="checked">
	                   									</c:when>
	                   								
	                   									<c:otherwise>
	                   										<input type="radio" name="gender" id="gender" checked="checked">
	                   										&nbsp;&nbsp;남&nbsp;&nbsp;&nbsp;
	                   										<input type="radio" name="gender" id="gender">
	                   									</c:otherwise>
	                   								</c:choose>
	                   								&nbsp;&nbsp;여
	                   							</td>
	                   							<td></td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>생년월일</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
		                                    					<c:choose>
		                                    						<c:when test="${year eq sessionScope.userDetailInfo.strBirth_YYYY }">
		                                    							<option value="${year }" selected="selected">${year }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${year }">${year }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			년
		                                  			<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="month" begin="1" end="12" step="1">
		                                    					<c:if test="${month < 10 }">
		                                    						<c:set var="month" value="0${month }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${month eq sessionScope.userDetailInfo.strBirth_MM }">
		                                    							<option value="${month }" selected="selected">${month }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${month }">${month }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			월
		                                  			<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="date" begin="1" end="31" step="1">
		                                    					<c:if test="${date < 10 }">
		                                    						<c:set var="date" value="0${date }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${date eq sessionScope.userDetailInfo.strBirth_DD }">
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
	                   									<c:when test="${sessionScope.userDatailInfo.intCalender_Kind eq 0 }">
	                   										<input type="radio" name="calendarKind" id="calendarKind" checked="checked">
		                                  					&nbsp;음&nbsp;&nbsp;&nbsp;&nbsp;
		                                  					<input type="radio" name="calendarKind" id="calendarKind">
	                   									</c:when>
	                   								
	                   									<c:otherwise>
	                   										<input type="radio" name="calendarKind" id="calendarKind">
		                                  					&nbsp;음&nbsp;&nbsp;&nbsp;&nbsp;
		                                  					<input type="radio" name="calendarKind" id="calendarKind" checked="checked">
	                   									</c:otherwise>
	                   								</c:choose>
		                                  			&nbsp;양&nbsp;)
	                   							</td>
	                   							<td></td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>자택 전화번호</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userDetail.strHome_Tel1 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userDetail.strHome_Tel2 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userDetail.strHome_Tel3 }">
	                   							</td>
	                   							<td></td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>핸드폰</h6>
	                   							</td>
	                   							<td colspan="6">
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userDetail.strMobile1 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userDetail.strMobile2 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userDetail.strMobile3 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>주소</h6>
	                   							</td>
	                   							<td colspan="5">
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userDetail.strZip1 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userDetail.strZip2 }">
	                   								<input type="button" class=" btn btn-3d" value="우편번호 검색" onclick="addrSearch()"/>
	                   								<input type="text" class="form-control" style="margin-top: 10px;" value="${sessionScope.userDetail.strAddr1 }">
	                   								<input type="text" class="form-control" style="margin-top: 10px;" value="${sessionScope.userDetail.strAddr2 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>홈페이지</h6>
	                   							</td>
	                   							<td colspan="5">
	                   								<input type="text" class="form-control">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>결혼여부</h6>
	                   							</td>
	                   							<td colspan="6">
	                   								<c:choose>
	                   									<c:when test="${sessionScope.userDatailInfo.intWedding_Flag eq 0 }">
	                   										<input type="radio" name="weddingFlag" id="weddingFlag" checked="checked">
			                   								&nbsp;&nbsp;미혼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                   								<input type="radio" name="weddingFlag" id="weddingFlag">
	                   									</c:when>
	                   								
	                   									<c:otherwise>
	                   										<input type="radio" name="weddingFlag" id="weddingFlag">
			                   								&nbsp;&nbsp;미혼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                   								<input type="radio" name="weddingFlag" id="weddingFlag" checked="checked">
	                   									</c:otherwise>
	                   								</c:choose>
	                   								&nbsp;&nbsp;기혼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(결혼 기념일 : 
			                              				<select style="width: 100px;">
			                                    			<option>선택</option>
			                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
			                                    					<c:choose>
			                                    						<c:when test="${year eq sessionScope.userDetailInfo.strWedding_YYYY }">
			                                    							<option value="${year }" selected="selected">${year }</option>
			                                    						</c:when>
			                                    							
			                                    						<c:otherwise>
			                                    							<option value="${year }">${year }</option>	
			                                    						</c:otherwise>
			                                    					</c:choose>
		                                    					</c:forEach>
			                                  			</select>
			                                  			년
			                                  			<select style="width: 100px;">
			                                    			<option>선택</option>
			                                    				<c:forEach var="month" begin="1" end="12" step="1">
			                                    					<c:if test="${month < 10 }">
			                                    						<c:set var="month" value="0${month }"/>
			                                    					</c:if>
			                                    					
			                                    					<c:choose>
			                                    						<c:when test="${month eq sessionScope.userDetailInfo.strWedding_MM }">
			                                    							<option value="${month }" selected="selected">${month }</option>
			                                    						</c:when>
			                                    							
			                                    						<c:otherwise>
			                                    							<option value="${month }">${month }</option>	
			                                    						</c:otherwise>
			                                    					</c:choose>
			                                    				</c:forEach>
			                                  			</select>
			                                  			월
			                                  			<select style="width: 100px;">
			                                    			<option>선택</option>
			                                    				<c:forEach var="date" begin="1" end="31" step="1">
			                                    					<c:if test="${date < 10 }">
			                                    						<c:set var="date" value="0${date }"/>
			                                    					</c:if>
			                                    					
			                                    					<c:choose>
			                                    						<c:when test="${date eq sessionScope.userDetailInfo.strWedding_DD }">
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
	                   				
	                   				<table style="margin-left: 30px;">
	                   					<tbody>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>직통 전화번호</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userInfo.strCo_Tel1 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userInfo.strCo_Tel2 }">
	                   								<span>-</span>
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userInfo.strCo_Tel3 }">
	                   								(내선)
	                   								<input type="text" style="text-align: center; width: 100px;" value="${sessionScope.userInfo.strCo_Tel_InLine }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>부서</h6>
	                   							</td>
	                   							<td>
	                   								<select class="form-control">
		                              					<option>선택</option>
		                              				</select>
	                   							</td>
	                   							<td align="right">
	                   								<h6>직급</h6>
	                   							</td>
	                   							<td>
	                   								<select class="form-control">
		                              					<c:forEach var="po" items="${position }">
		                              						<c:choose>
		                              							<c:when test="${po.strSCode eq sessionScope.userInfo.strPosition_Cd }">
		                              								<option value="${po.strSCode }" selected="selected">${po.strName }</option>
		                              							</c:when>
		                              								
		                              							<c:otherwise>
		                              								<option value="${po.strSCode }">${po.strName }</option>	
		                              							</c:otherwise>                              						
		                              						</c:choose>
		                              					</c:forEach>
		                              				</select>
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>입사일</h6>
	                   							</td>
	                   							<td colspan="3">
	                   								<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
		                                    					<c:choose>
		                                    						<c:when test="${year eq sessionScope.userDetailInfo.strHire_YYYY }">
		                                    							<option value="${year }" selected="selected">${year }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${year }">${year }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
	                                    					</c:forEach>
		                                  			</select>
		                                  			년
		                                  			<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="month" begin="1" end="12" step="1">
		                                    					<c:if test="${month < 10 }">
		                                    						<c:set var="month" value="0${month }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${month eq sessionScope.userDetailInfo.strHire_MM }">
		                                    							<option value="${month }" selected="selected">${month }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${month }">${month }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			월
		                                  			<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="date" begin="1" end="31" step="1">
		                                    					<c:if test="${date < 10 }">
		                                    						<c:set var="date" value="0${date }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${date eq sessionScope.userDetailInfo.strHire_DD }">
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
	                   						</tr>
	                   					</tbody>
	                   				</table>
	
	                   				<div style="border-bottom: 1px dashed #BDBDBD; margin-top: 30px; margin-bottom: 10px;">
	                   					<h4>부가정보</h4>
	                   				</div>
	
									<table style="margin-left: 30px;">
										<tbody>
											<tr>
	                   							<td align="right">
	                   								<h6>취미</h6>
	                   							</td>
	                   							<td>
	                   								<input type="text" class="form-control" style="width: 738px;" value="${sessionScope.userDetailInfo.strHobby }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>약식 이력사항</h6>
	                   							</td>
	                   							<td>
	                   								<textarea rows="7" cols="" class="form-control">${sessionScope.userDetailInfo.strResume }</textarea>
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td align="right">
	                   								<h6>자기소개</h6>
	                   							</td>
	                   							<td>
	                   								<textarea rows="10" cols="" class="form-control">${sessionScope.userDetailInfo.strIntroduction }</textarea>
	                   							</td>
	                   						</tr>
										</tbody>
									</table>
									
									<div style="margin-top: 30px; margin-bottom: 10px; text-align: right;">
	                   					<input type="submit" class=" btn btn-3d" value="수정"/>
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