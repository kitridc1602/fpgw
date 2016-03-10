<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<script type="text/javascript">

	/* 입력사항 체크 */
	function checkInfomation(kind){
	
		var resulet = true;
		
		return resulet;
	}
	
	
	function userSubmit(kind){
		
		if(checkInfomation(kind)){
			
			var userModify = document.getElementById('accountInfoModify');
			
			if(kind == 'insert'){
				
				userModify.action = '${root }/option/accountinfoinsert.html';
				
			} else {
				
				userModify.action = '${root }/option/accountinfomodify.html';
				
			}
			
			userModify.method = 'POST';
			userModify.submit();
		}
		
		
	}
	
</script>

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
	                   							<td colspan="3">
	                   								<input type="hidden" class="form-control" id="strCode" name="strCode"  value="${accountInfo.strCode }">
	                   								<input type="text" class="form-control" id="strVender_Name" name="strVender_Name"  value="${accountInfo.strVender_Name }">
                   								</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">성명</td>
	                   							<td style="width: 50%;">
	                   								<input type="text" class="form-control" id="strPerson_Name" name="strPerson_Name"  value="${accountInfo.strPerson_Name }">
	                   							</td>
	                   							<td style="width: 10%; text-align: right;">직급</td>
	                   							<td>
	                   								<select class="form-control" id="strPosition_Cd" name="strPosition_Cd">
	                   									<option value="000">선택</option>
			                              					<c:forEach var="po" items="${position }">
			                              						<c:choose>
			                              							<c:when test="${po.strSCode eq accountInfo.strPosition_Cd }">
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
	                   								<input type="text" id="strZip1" name="strZip1" style="text-align: center; width: 15%;" readonly="readonly" value="${accountInfo.strZip1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strZip2" name="strZip2" style="text-align: center; width: 15%;" readonly="readonly" value="${accountInfo.strZip2 }">
	                   								<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="우편번호 검색" onclick="addrSearch()"/>
	                   								<input type="text" class="form-control" id="strAddr1" name="strAddr1" style="margin-top: 10px;" readonly="readonly" value="${accountInfo.strAddr1 }">
	                   								<input type="text" class="form-control" id="strAddr2" name="strAddr2" style="margin-top: 10px;" value="${accountInfo.strAddr2 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">전화번호</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strTel1" name="strTel1" style="text-align: center; width: 100px;" value="${accountInfo.strTel1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strTel2" name="strTel2" style="text-align: center; width: 100px;" value="${accountInfo.strTel2 }">
	                   								<span>-</span>
	                   								<input type="text" id="strTel3" name="strTel3" style="text-align: center; width: 100px;" value="${accountInfo.strTel3 }">
	                   								(내선)
	                   								<input type="text" id="strInLine" name="strInLine" style="text-align: center; width: 100px;" value="${accountInfo.strInLine }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">팩스번호</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strFax1" name="strFax1" style="text-align: center; width: 100px;" value="${accountInfo.strFax1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strFax2" name="strFax2" style="text-align: center; width: 100px;" value="${accountInfo.strFax2 }">
	                   								<span>-</span>
	                   								<input type="text" id="strFax3" name="strFax3" style="text-align: center; width: 100px;" value="${accountInfo.strFax3 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">핸드폰</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strMobile1" name="strMobile1" style="text-align: center; width: 100px;" value="${accountInfo.strMobile1 }">
	                   								<span>-</span>
	                   								<input type="text" id="strMobile2" name="strMobile2" style="text-align: center; width: 100px;" value="${accountInfo.strMobile2 }">
	                   								<span>-</span>
	                   								<input type="text" id="strMobile3" name="strMobile3" style="text-align: center; width: 100px;" value="${accountInfo.strMobile3 }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">이메일</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strEmail" name="strEmail" class="form-control" value="${accountInfo.strEmail }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">홈페이지</td>
	                   							<td colspan="3">
	                   								<input type="text" id="strHomePage" name="strHomePage" class="form-control" value="${accountInfo.strHomePage }">
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="text-align: right;">메모</td>
	                   							<td colspan="3">
	                   								<textarea id="strMemo" name="strMemo" rows="7" cols="" class="form-control">${accountInfo.strMemo }</textarea>
	                   							</td>
	                   						</tr>
										</tbody>
									</table>
									
									<div style="margin-top: 30px; margin-bottom: 10px; text-align: right;">
										<c:choose>
											<c:when test="${!empty accountInfo.strCode }">
	                   							<input type="button" id="btnModify" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="수정" onclick="userSubmit('modify')"/>
	                   						</c:when>
	                   						
	                   						<c:otherwise>
	                   							<input type="button" id="btnInsert" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="입력" onclick="userSubmit('insert')"/>
	                   						</c:otherwise>
	                   					</c:choose>
	                   					<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" value="종료" onclick="location.href='${root}/option/accountinfoall.html'"/>
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