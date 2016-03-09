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
                        <p class="animated fadeInDown"><span class="fa  fa-map-marker"></span> 관리자업무 >> 사용자관리</p>

                        
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
                   	<h4><span class="icon-notebook icons"></span> 사용자 조회</h4>
                </div>

					<!-- start : 메뉴 디자인 구성하는 위치 -->
					<div class="col-md-12">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<table id="" class="table table-striped table-bordered" width="100%" cellspacing="0">
								<tbody>
									<tr>
										<td style="text-align: right;">
											<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="userview" name="userview" value="조회" onclick="location.href='${root}/user/selectall.html'">
											<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="useinsert" name="userinsert" value="신규등록" onclick="location.href='${root}/user/select.html'">			
										</td>
									</tr>
							
								</tbody>
							</table>
						</div>
						<div class="col-md-1"></div>
					</div>
					
					<div class="col-md-12">
						<div class="col-md-1"></div>
						<div class="col-md-10">
		                	<div class="panel bg-white border-none">
		                		<div class="panel-body">
		                		
		                			<table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
	                      				<thead>
	                        				<tr>
	                          					<th style="text-align: center;">사원번호</th>
	                          					<th style="text-align: center;">이름</th>
	                          					<th style="text-align: center;">직책</th>
	                          					<th style="text-align: center;">부서</th>
	                          					<th style="text-align: center;">직통 전화</th>
	                          					<th style="text-align: center;">핸드폰</th>
	                          					<th style="text-align: center;">ID</th>
	                          					<th style="text-align: center;">입사일</th>
	                          					<th style="text-align: center;">수정</th>
	                          					<th style="text-align: center;">삭제</th>
					                        </tr>
	                      				</thead>
	                      				<tbody>
	                      					<c:forEach var="user" items="${userDto }">
		                      					<tr>
		                      						<td style="text-align: center;"><h6>${user.strCode }</h6></td>
		                      						<td><h6>${user.strName }</h6></td>
		                      						<td><h6>${user.strPosition_Nm }</h6></td>
		                      						<td><h6>${user.strDepart_Nm }</h6></td>
		                      						<td><h6>${user.strCo_Tel1 }-${user.strCo_Tel2 }-${user.strCo_Tel3 }(${user.strCo_Tel_InLine })</h6></td>
		                      						<td><h6>${user.strMobile1 }-${user.strMobile2 }-${user.strMobile3 }</h6></td>
		                      						<td><h6>${user.strID }</h6></td>
		                      						<td><h6>${user.strHire_YYYY }.${user.strHire_MM }.${user.strHire_DD }</h6></td>
		                      						<td style="text-align: center;"><input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="useredit" name="useredit" value="수정" onclick="location.href='${root }/user/select.html?strCode=${user.strCode }'"></td>
		                      						<td style="text-align: center;"><input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="userdelete" name="userdelete" value="삭제" onclick="location.href='${root }/user/delete.html?strCode=${user.strCode }'"></td>
		                      					</tr>
	                      					</c:forEach>
	                      				</tbody>
	                   				</table>
		                		</div>
	                		</div>
                		</div>
                		<div class="col-md-1"></div>
               		</div>
					
					
					<!-- end : 메뉴 디자인 구성하는 위치 -->
					
           </div>
          <!-- end: content -->

</html>