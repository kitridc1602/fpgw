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
                   	<h4><span class="icon-notebook icons"></span> 거래처 관리</h4>
                </div>

					<!-- start : 메뉴 디자인 구성하는 위치 -->
				<div class="col-md-12">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<table id="" class="table table-striped table-bordered" width="100%" cellspacing="0">
							<tbody>
								<tr>
									<td style="text-align: right;">
										<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="" name="" value="조회" onclick="location.href='${root }/option/accountinfoall.html'">
										<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="" name="" value="신규등록" onclick="location.href='${root }/option/accountinfoSelect.html'">			
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
	                  <div class="panel">
	                    <div class="panel-body">
	                      <div class="responsive-table">
	                      	<table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
	                      		<thead>
			                        <tr>
			                          <th style="text-align: center;">거래처명</th>
			                          <th style="text-align: center;">성명</th>
			                          <th style="text-align: center;">전화번호</th>
			                          <th style="text-align: center;">내선번호</th>
			                          <th style="text-align: center;">핸드폰</th>
			                          <th style="text-align: center;">주소</th>
			                          <th style="text-align: center;">팩스번호</th>
			                          <th style="text-align: center;">수정</th>
			                          <th style="text-align: center;">삭제</th>
			                        </tr>
	                      		</thead>
	                      		<tbody>
			                        <tr>
			                          <td style="vertical-align: middle;">아름다운 우리나라 만만세</td>
			                          <td style="vertical-align: middle;">홍길동 과장</td>
			                          <td style="vertical-align: middle;">070-8585-5858</td>
			                          <td style="vertical-align: middle;">85582</td>
			                          <td style="vertical-align: middle;">070-8585-5858</td>
			                          <td style="vertical-align: middle;">전라남도 광주군 동면읍 목정리 어쩌구 저쩌구</td>
			                          <td style="vertical-align: middle;">070-8585-5858</td>
			                          <td style="text-align: center;"><input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="" name="" value="수정" onclick=""></td>
			                		  <td style="text-align: center;"><input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="" name="" value="삭제" onclick=""></td>
			                        </tr>
	                        
	                      		</tbody>
	                        </table>
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