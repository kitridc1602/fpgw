<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=9ec6ce4058e3bebfa9dee609084bbd13&libraries=services"></script>
<script type="text/javascript">

	function venderMap(location, venderNm){
		
		window.open("${root }/additional/contactcompany.html?location="+location+"&venderNm="+venderNm, "", "menubar=no,resizable=no,scrollbars=no,starus=no,titlebar=no,width=530, height=460");
		
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
										<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="" name="" value="신규등록" onclick="location.href='${root }/option/accountinfoselect.html'">			
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
			                          <th style="text-align: center;">내선</th>
			                          <th style="text-align: center;">핸드폰</th>
			                          <th style="text-align: center;">주소</th>
			                          <th style="text-align: center;">팩스번호</th>
			                          <th style="text-align: center;">수정</th>
			                          <th style="text-align: center;">삭제</th>
			                        </tr>
	                      		</thead>
	                      		<tbody>
	                      			<c:forEach var="list" items="${accountInfo }">
				                        <tr>
				                          <td style="vertical-align: middle;">
				                          
				                          	<c:choose>
				                          		<c:when test="${list.strHomePage ne null}">
				                          			<a href="http://${list.strHomePage }" target="_blink">${list.strVender_Name}</a>
				                          		</c:when>
				                          		
				                          		<c:otherwise>
				                          			${list.strVender_Name}
				                          		</c:otherwise>
				                          		
				                          	</c:choose>
				                          </td>
				                          <td style="vertical-align: middle;">${list.strPerson_Name} ${list.strPosition_Nm }</td>
				                          <td style="vertical-align: middle;">${list.strTel1}-${list.strTel2}-${list.strTel3}</td>
				                          <td style="vertical-align: middle;">${list.strInLine}</td>
				                          <td style="vertical-align: middle;">${list.strMobile1}-${list.strMobile2}-${list.strMobile3}</td>
				                          <td style="vertical-align: middle;" id="td${list.strCode }">
					                          <c:choose>
					                          		<c:when test="${list.strAddr2 ne null}">
					                          			<p><a href="#" onclick="venderMap('${list.strAddr1} ${list.strAddr2}', '${list.strVender_Name}')"><span class="icons icon-compass"></span></a>&nbsp;&nbsp;(${list.strZip1}-${list.strZip2}) ${list.strAddr1} ${list.strAddr2}</p>
					                          		</c:when>
					                          		
					                          		<c:otherwise>
					                          			<p>(${list.strZip1}-${list.strZip2}) ${list.strAddr1} ${list.strAddr2}</p>
					                          		</c:otherwise>
					                          		
					                          	</c:choose>
					                          	
					                          	
				                          </td>
				                          <td style="vertical-align: middle;">${list.strFax1}-${list.strFax2}-${list.strFax3}</td>
				                          <td style="text-align: center;"><input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="" name="" value="수정" onclick="location.href='${root }/option/accountinfoselect.html?strCode=${list.strCode }'"></td>
				                		  <td style="text-align: center;"><input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="" name="" value="삭제" onclick="location.href='${root }/option/accountinfodelete.html?strCode=${list.strCode }'"></td>
				                        </tr>
	                        		</c:forEach>
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