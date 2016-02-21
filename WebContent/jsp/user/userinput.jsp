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
                   				<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px;">
                   					<h4>개인정보</h4>
                   				</div>
                   				<div class="col-md-12">
                   					<div class="col-md-12 padding-0">
	                   					<div class="col-md-6">
		                   					<div class="form-group">
		                   						<label class="col-sm-4 control-label text-right">사원번호</label>
		                              			<div class="col-sm-8" style="margin-bottom: 10px;">
		                              				<input type="text" class="form-control" value="${sssionScope.userInfo.strCode }">
	                              				</div>
		                            		</div>
		                            		<div class="form-group">
		                            			<label class="col-sm-4 control-label text-right">아이디</label>
		                              			<div class="col-sm-8" style="margin-bottom: 10px;">
		                              				<input type="text" class="form-control" value="${sssionScope.userInfo.strID }">
	                              				</div>
		                            		</div>
		                            		<div class="form-group">
		                            			<label class="col-sm-4 control-label text-right">기존 비밀번호</label>
		                              			<div class="col-sm-8" style="margin-bottom: 10px;">
		                              				<input type="password" class="form-control" value="${sssionScope.userInfo.strPWD }">
	                              				</div>
		                            		</div>
		                            		<div class="form-group">
		                            			<label class="col-sm-4 control-label text-right">새 비밀번호</label>
		                              			<div class="col-sm-8" style="margin-bottom: 10px;">
		                              				<input type="password" class="form-control" value="${sssionScope.userInfo.strPWD }">
	                              				</div>
		                            		</div>
		                            		<div class="form-group">
		                            			<label class="col-sm-4 control-label text-right">이름</label>
		                              			<div class="col-sm-8" style="margin-bottom: 10px;">
		                              				<input type="text" class="form-control" value="${sssionScope.userInfo.strName }">
	                              				</div>
		                            		</div>
		                            		<div class="form-group">
		                            			<label class="col-sm-4 control-label text-right">성별</label>
		                              			<div class="col-sm-8" style="margin-bottom: 10px;">
		                              				<input type="radio" name="gender" id="gender" checked="checked">&nbsp; 남
		                              				&nbsp; &nbsp; &nbsp; &nbsp; <input type="radio" name="gender" id="gender">&nbsp; 여
		                           				</div>
		                            		</div>
	                            		</div>
	                            		<div class="col-md-3">
	                            		<!-- <input type="image"> -->
	                            		</div>
	                            		<div class="col-md-3">
	                            			<input type="image" src="${root }${sessionScode.userImageInfo.strFace_Path }${sessionScode.userImageInfo.strFace_Name }">
	                            			<div class="col-md-6"><input type="button" class=" btn btn-3d" value="사진 추가/수정"/></div>
	                            		</div>
                            		</div>
                            		
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">생년월일</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<div class="col-sm-3">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
	                                    					<option value="${year }">${year }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>년</h6></div>
                                  			<div class="col-sm-2">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="month" begin="01" end="12" step="1">
	                                    					<c:if test="${month < 10 }">
	                                    						<c:set var="month" value="0${month }"/>
	                                    					</c:if>
	                                    					<option value="${month }">${month }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>월</h6></div>
                                  			<div class="col-sm-2">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="date" begin="01" end="31" step="1">
	                                    					<c:if test="${date < 10 }">
	                                    						<c:set var="date" value="0${date }"/>
	                                    					</c:if>
	                                    					<option value="${date }">${date }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>일</h6></div>
                                  			<div class="col-sm-2">
												<h6>(<span><input type="radio" name="calendarKind" id="calendarKind"> 음  <input type="radio" name="calendarKind" id="calendarKind" checked="checked"></span> 양)</h6>
											</div>
                                  			
                              			</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">자택 전화번호</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
                              				<div class="col-sm-1 control-label text-center"><h4>-</h4></div>
                              				<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
											<div class="col-sm-1 control-label text-center"><h4>-</h4></div>
											<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
                              			</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">핸드폰</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
                              				<div class="col-sm-1 control-label text-center"><h4>-</h4></div>
                              				<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
											<div class="col-sm-1 control-label text-center"><h4>-</h4></div>
											<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
                              			</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">자택 주소</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
                              				<div class="col-sm-1 control-label text-center"><h4>-</h4></div>
                              				<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
                              				<div class="col-md-6"><input type="button" class=" btn btn-3d" value="우편번호 검색" onclick="addrSearch()"/></div>
                              				<div class="col-sm-13"><input type="text" class="form-control" style="text-align: center; margin-bottom: 10px;"></div>
                              				<div class="col-sm-13"><input type="text" class="form-control" style="text-align: center; margin-bottom: 10px;"></div>
                       					</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">홈페이지</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;"><input type="text" class="form-control"></div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">결혼여부</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<div><input type="radio" name="weddingFlag" id="weddingFlag" checked="checked">&nbsp; 미혼 
												&nbsp; &nbsp; &nbsp; &nbsp; <input type="radio" name="weddingFlag" id="weddingFlag">&nbsp; 기혼
											</div>
										</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">결혼기념일</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<div class="col-sm-3">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
	                                    					<option value="${year }">${year }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>년</h6></div>
                                  			<div class="col-sm-2">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="month" begin="01" end="12" step="1">
	                                    					<c:if test="${month < 10 }">
	                                    						<c:set var="month" value="0${month }"/>
	                                    					</c:if>
	                                    					<option value="${month }">${month }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>월</h6></div>
                                  			<div class="col-sm-2">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="date" begin="01" end="31" step="1">
	                                    					<c:if test="${date < 10 }">
	                                    						<c:set var="date" value="0${date }"/>
	                                    					</c:if>
	                                    					<option value="${date }">${date }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>일</h6></div>
                              			</div>
                            		</div>
                            	</div>
                   				
                   				<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px; margin-top: 30px;">
                   					<h4>회사정보</h4>
                   				</div>
                   				
                   				<div class="col-md-12">
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">직통 전화번호</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;"><div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
                              				<div class="col-sm-1 control-label text-center"><h4>-</h4></div>
                              				<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
											<div class="col-sm-1 control-label text-center"><h4>-</h4></div>
											<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
											<div class="col-sm-1 control-label text-center"><h6>(내선)</h6></div>
											<div class="col-sm-2"><input type="text" class="form-control" style="text-align: center;"></div>
                              			</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">부서</label>
                              			<div class="col-sm-3" style="margin-bottom: 10px;">
                              				<select class="form-control">
                              					<option>선택</option>
                              				</select>
                           				</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">직급</label>
                              			<div class="col-sm-4" style="margin-bottom: 10px;">
                              				<select class="form-control">
                              					<c:forEach var="po" items="${position }">
                              						<c:choose>
                              							<c:when test="${po.strSCode eq '015' }">
                              								<option value="${po.strSCode }" selected="selected">${po.strName }</option>
                              							</c:when>
                              								
                              							<c:otherwise>
                              								<option value="${po.strSCode }">${po.strName }</option>	
                              							</c:otherwise>                              						
                              						</c:choose>
                              					</c:forEach>
                              				</select>
                           				</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">입사일</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<div class="col-sm-4">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
	                                    					<option value="${year }">${year }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>년</h6></div>
                                  			<div class="col-sm-2">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="month" begin="01" end="12" step="1">
	                                    					<c:if test="${month < 10 }">
	                                    						<c:set var="month" value="0${month }"/>
	                                    					</c:if>
	                                    					<option value="${month }">${month }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>월</h6></div>
                                  			<div class="col-sm-2">
	                              				<select class="form-control">
	                                    			<option>선택</option>
	                                    				<c:forEach var="date" begin="01" end="31" step="1">
	                                    					<c:if test="${date < 10 }">
	                                    						<c:set var="date" value="0${date }"/>
	                                    					</c:if>
	                                    					<option value="${date }">${date }</option>	
	                                    				</c:forEach>
	                                  			</select>
                                  			</div>
                                  			<div class="col-sm-1"><h6>일</h6></div>
                              			</div>
                            		</div>
                           		</div>
                           		
                   				<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px; margin-top: 30px;">
                   					<h4>부가정보</h4>
                   				</div>
                   				
                   				<div class="col-md-12">
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">취미</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;"><input type="text" class="form-control"></div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">약식 이력사항</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<textarea rows="7" cols="" class="form-control"></textarea>
                           				</div>
                            		</div>
                            		<div class="form-group"><label class="col-sm-2 control-label text-right">자기소개</label>
                              			<div class="col-sm-10" style="margin-bottom: 10px;">
                              				<textarea rows="10" cols="" class="form-control"></textarea>
                          				</div>
                            		</div>
                            		
                           		</div>
                   			</div>
                		</div>
					</div>
					<div class="col-md-1"></div>
				
				
				
				</div>
				
				
					
                
					
					
					<!-- end : 메뉴 디자인 구성하는 위치 -->
					
           </div>
          <!-- end: content -->

</html>