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
                        <h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
                        <p class="animated fadeInDown"><span class="fa  fa-map-marker"></span> 부가서비스 >> 거래처 관리</p>

                        
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
                   	<h4><span class="icon-notebook icons"></span> 거래처 정보 ${workKind }</h4>
                </div>

					<!-- start : 메뉴 디자인 구성하는 위치 -->
				<div class="col-md-12">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="panel-heading bg-white border-none">
                   			<div class="panel-body">
                   				<form id="accountInfoModify" name="accountInfoModify">
	                   				<table style="width: 100%">
	                   					<tbody>
	                   						<tr>
	                   							<td style="width: 10%; text-align: right;">거래처명</td>
	                   							<td colspan="3"><input type="text" class="form-control" id="" name=""  value=""></td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">성명</td>
	                   							<td style="width: 50%;"><input type="text" class="form-control" id="" name=""  value=""></td>
	                   							<td style="width: 10%; text-align: right;">직급</td>
	                   							<td>
	                   								<select class="form-control" id="" name="">
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
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">주소</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strZip1" name="strZip1" style="text-align: center; width: 15%;" readonly="readonly" value="${userModify.strZip1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strZip2" name="strZip2" style="text-align: center; width: 15%;" readonly="readonly" value="${userModify.strZip2 }">
	                   								<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="우편번호 검색" onclick="addrSearch()"/>
	                   								<input type="text" class="form-control" id="strAddr1" name="strAddr1" style="margin-top: 10px;" readonly="readonly" value="${userModify.strAddr1 }">
	                   								<input type="text" class="form-control" id="strAddr2" name="strAddr2" style="margin-top: 10px;" value="${userModify.strAddr2 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">전화번호</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strCo_Tel1" name="strCo_Tel1" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strCo_Tel2" name="strCo_Tel2" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel2 }">
	                   								<span>-</span>
	                   								<input type="text" id="strCo_Tel3" name="strCo_Tel3" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel3 }">
	                   								(내선)
	                   								<input type="text" id="strCo_Tel_InLine" name="strCo_Tel_InLine" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel_InLine }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">팩스번호</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strCo_Tel1" name="strCo_Tel1" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strCo_Tel2" name="strCo_Tel2" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel2 }">
	                   								<span>-</span>
	                   								<input type="text" id="strCo_Tel3" name="strCo_Tel3" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel3 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">핸드폰</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strCo_Tel1" name="strCo_Tel1" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strCo_Tel2" name="strCo_Tel2" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel2 }">
	                   								<span>-</span>
	                   								<input type="text" id="strCo_Tel3" name="strCo_Tel3" style="text-align: center; width: 100px;" value="${userModify.strCo_Tel3 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">이메일</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strHome_Page" name="strHome_Page" class="form-control" value="${userModify.strHome_Page }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">홈페이지</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strHome_Page" name="strHome_Page" class="form-control" value="${userModify.strHome_Page }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">메모</td>
	                   							<td colspan="3">
	                   								<textarea id="strResume" name="strResume" rows="7" cols="" class="form-control">${userModify.strResume }</textarea>
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
					<div class="col-md-2"></div>
				
				
				
				</div>
					<!-- end : 메뉴 디자인 구성하는 위치 -->
					
           </div>
          <!-- end: content -->

</html>