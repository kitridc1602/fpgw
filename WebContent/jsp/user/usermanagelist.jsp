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
                        <p class="animated fadeInDown"><span class="fa  fa-map-marker"></span> 메뉴카테고리 들어갈 자리</p>

                        
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
							<table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
								<tbody>
									<tr>
										<td style="text-align: right;">
											<input type="button" class=" btn btn-3d" id="userview" name="userview" value="조회">
											<input type="button" class=" btn btn-3d" id="useinsert" name="userinsert" value="신규등록">			
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
	                          					<th style="text-align: center;">아이디</th>
	                          					<th style="text-align: center;">입사일</th>
	                          					<th style="text-align: center;">수정</th>
	                          					<th style="text-align: center;">삭제</th>
					                        </tr>
	                      				</thead>
	                      				<tbody>
	                      					<tr>
	                      						<td width="80px" style="text-align: center;"><h6>00001</h6></td>
	                      						<td width="90px"><h6>기초관리자</h6></td>
	                      						<td width="90px"><h6>기초관리자</h6></td>
	                      						<td width="150px"><h6>아름다운우리나라</h6></td>
	                      						<td width="150px"><h6>000-0000-0000(00000)</h6></td>
	                      						<td width="120px"><h6>000-0000-0000</h6></td>
	                      						<td><h6>kitri20</h6></td>
	                      						<td width="90px"><h6>9999.99.99</td>
	                      						<td width="90px"><input type="button" class=" btn btn-3d" id="useredit" name="useredit" value="수정"></td>
	                      						<td width="90px"><input type="button" class=" btn btn-3d" id="userdelete" name="userdelete" value="삭제"></td>
	                      					</tr>
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