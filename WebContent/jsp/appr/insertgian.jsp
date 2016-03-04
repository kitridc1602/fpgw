<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 


 
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>

<html lang="en">
<script type="text/javascript">

	function go(){
			var value="";
			//결재
			value = $("#apprname1").text();
			$("#apprname11").val(value);
			value = $("#apprname2").text();
			$("#apprname22").val(value);
			value = $("#apprname3").text();
			$("#apprname33").val(value);
			value = $("#apprname4").text();
			$("#apprname44").val(value);
			
			//협조
			value = $("#coopername1").text();
			$("#coopername11").val(value);		
			value = $("#coopername2").text();
			$("#coopername22").val(value);	
			value = $("#coopername3").text();
			$("#coopername33").val(value);	
			value = $("#coopername4").text();
			$("#coopername44").val(value);	
			
			//수신부서
			value = $("#receivedepartname").text();
			$("#receivedepartname1").val(value);
			
			//수신자
			value=$("#receivename").text();
			$("#receivename1").val(value);
			
			//문서번호
			//앞번호
			value=$("#docuno").text();
			$("#docuno1").val(value);
			//뒷번호
			value=$("#docuseq").text();
			$("#docuseq1").val(value);
			
			
			//문서종류
			value=$("#docukind").text();
			$("#docukind1").val(value);
			
			//공개비공개
			value=$("#disclo option:selected").text();
			$("#disclo1").val(value);
			
			//보존기한
			value=$("#record option:selected").text();
			$("#record1").val(value);
			
			//부서는보내짐
			
			//기안연일월
			value=$("#draftyear option:selected").text();
			$("#draftyear1").val(value);
			
			value=$("#draftmonth option:selected").text();
			$("#draftmonth1").val(value);
			
			value=$("#draftday option:selected").text();
			$("#draftday1").val(value);
			
			
			
		 	/* document.insertgian.target="fake";     */
			document.insertgian.action='${root}/jspc/appr/samplegian.jsp';
			document.insertgian.submit();
			
		 /* window.open("${root}/jspc/appr/samplegian.jsp","preview","width=800","height=800"); */
			 
	}
	 
	
	
	
</script>
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
                   	<h4><span class="icon-notebook icons"></span> 기안서</h4>
                   	 	<h4><font color="blue"><a href="${root }/appr/insertbalju.html">발주서</a>　<a href="${root }/appr/insertvacation.html">휴가서</a>　<a href="${root }/appr/insertchuljang.html">출장보고서</a></font></h4>
                  
                </div>

					<!-- start : 메뉴 디자인 구성하는 위치 -->
				<div class="col-md-12">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<div class="panel-heading bg-white border-none">
                   			<div class="panel-body">
                   			
                   				<form action="${root }/appr/samplegian.html" method="post" name="insertgian" enctype="application/x-www-form-urlencoded">
                   				
                   					<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px;">
	                   					<h4>결재정보</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px; width: 97%;">
	                   					<tbody>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">구 분</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">1란</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">2란</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">3란</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">4란</td>
	                   						
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">결 재</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname1"></label>
	                   								<input type="hidden" id="apprcode1" name="apprcode1">
	                   								<input type="hidden" id="apprname11" name="apprname11">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization" onclick="selectImport('apprcode1', 'apprname1')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname2"></label>
	                   								<input type="hidden" id="apprcode2" name="apprcode2">
	                   								<input type="hidden" id="apprname22" name="apprname22">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization" onclick="selectImport('apprcode2', 'apprname2')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname3"></label>
	                   								<input type="hidden" id="apprcode3" name="apprcode3">
	                   								<input type="hidden" id="apprname33" name="apprname33">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization" onclick="selectImport('apprcode3', 'apprname3')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname4"></label>
	                   								<input type="hidden" id="apprcode4" name="apprcode4">
	                   								<input type="hidden" id="apprname44" name="apprname44">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization" onclick="selectImport('apprcode4', 'apprname4')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   						
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">협 조</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername1"></label>
	                   								<input type="hidden" id="coopercode1" name="coopercode1">	                   								
	                   								<input type="hidden" id="coopername11" name="coopername11">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization" onclick="selectImport('coopercode1', 'coopername1')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername2"></label>
	                   								<input type="hidden" id="coopercode2" name="coopercode2">
	                   								<input type="hidden" id="coopername22" name="coopername22">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization" onclick="selectImport('coopercode2', 'coopername2')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername3"></label>
	                   								<input type="hidden" id="coopercode3" name="coopercode3">
	                   								<input type="hidden" id="coopername33" name="coopername33">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization" onclick="selectImport('coopercode3', 'coopername3')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername4"></label>
	                   								<input type="hidden" id="coopercode4" name="coopercode4">
	                   								<input type="hidden" id="coopername44" name="coopername44">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization" onclick="selectImport('coopercode4', 'coopername4')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   							
	                   						</tr>
	                   					<tr>
	                   							<td style="width: 12%;  text-align: center;">수신부서</td>
	                   							<td colspan="10">
	                   								
	                   								<label style="width: 95%;" id="receivedepartname"></label>
	                   								<input type="hidden" id="receivedepartcode" name="receivedepartcode">
	                   								<input type="hidden" id="receivedepartname1" name="receivedepartname1">
	                   								<a href=""  data-toggle="modal" data-target="#depart" onclick="selectImport('receivedepartcode', 'receivedepartname')">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>&nbsp;&nbsp;<i class="fa fa-refresh"></i>
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">수신자</td>
	                   							<td colspan="10">
	                   								<label style="width: 95%;" id="receivename"></label>
	                   								<input type="hidden" id="receivecode" name="receivecode">
	                   								<input type="hidden" id="receivename1" name="receivename1">
	                   								<a href=""  data-toggle="modal" data-target="#organization" onclick="selectImport('receivecode', 'receivename')">
	                   									<i class="fa fa-plus-square"></i>
                  									</a>&nbsp;&nbsp;<i class="fa fa-refresh"></i>
	                   							</td>
	                   						</tr>
	                   					</tbody>
                   					</table>
                   					
                   					<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px; margin-top: 30px;">
	                   					<h4>문서정보</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px; width: 97%;">
	                   					<tbody>
	                   						<tr>
	                   							<td style="width: 12%; text-align: center;">문서번호</td>
	                   							<td style="width: 37%; text-align: center;"><label id=docuno>1000</label><input type="hidden" id="docuno1" name="docuno1">-<label id=docuseq>XXXX</label><input type="hidden" id="docuseq1" name="docuseq1"></td>
	                   							<td style="width: 12%; text-align: center;">문서종류</td>
	                   							<td style="width: 36%; text-align: center;"><label id=docukind>기안서</label><input type="hidden" id="docukind1" name="docukind1"></td>
	                   						</tr>
	                   						<tr>
	                   						
	                   							<td style="width: 12%; text-align: center;">부서</td>
	                   							<c:forEach var="c" items="${list }">
	                   							<td style="width: 37%; text-align: center;">${c.strDe_Name }</td>
	                   								<input type="hidden" id="departmentname1" name="departmentname1" value="${c.strDe_Name }">
	                   							</c:forEach>
	                   							<td style="width: 12%; text-align: center;">기안자</td>
	                   							<c:forEach var="c" items="${list }">
	                   							<td style="width: 36%; text-align: center;">${c.strAm_Draft_User }</td>
	                   							<input type="hidden" id="draftname1" name="draftname1" value="${c.strDe_Name }">
	                   							</c:forEach>
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%; text-align: center;">공개여부</td>
	                   							<td style="width: 37%; text-align: center;">
	                   								<select id="disclo">
	                   									<c:forEach var="disclo" items="${disclosure }">
															<option value="${disclo.strSCode }">${disclo.strName }</option>
															
	                   									</c:forEach>
	                   									
	                   								</select>
	                   								<input type="hidden" id="disclo1" name="disclo1">
	                   							</td>
	                   							<td style="width: 12%; text-align: center;">보존기한</td>
	                   							<td style="width: 36%; text-align: center;">
	                   								<select id=record>
	                   									<c:forEach var="record" items="${recordKeep }">
															<option value="${record.strSCode }">${record.strName }</option>
															
	                   									</c:forEach>
	                   								
	                   								</select>
	                   									<input type="hidden" id="record1" name="record1">
	                   							</td>
	                   						</tr>
                   							<tr>
                   								<td style="width: 12%; text-align: center;">기안일</td>
	                   							<td colspan="3">
	                   								<select id="draftyear" style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
		                                    					<c:choose>
		                                    						<c:when test="${year eq sessionScope.userInfo.strHire_YYYY }">
		                                    							<option value="${year }" selected="selected">${year }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${year }">${year }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
	                                    					</c:forEach>
		                                  			</select>
		                                  			<input type="hidden" id="draftyear1" name="draftyear1">
		                                  			년
		                                  			<select id="draftmonth" style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="month" begin="1" end="12" step="1">
		                                    					<c:if test="${month < 10 }">
		                                    						<c:set var="month" value="0${month }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${month eq sessionScope.userInfo.strHire_MM }">
		                                    							<option value="${month }" selected="selected">${month }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${month }">${month }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			<input type="hidden" id="draftmonth1" name="draftmonth1">
		                                  			월
		                                  			<select id="draftday" style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="date" begin="1" end="31" step="1">
		                                    					<c:if test="${date < 10 }">
		                                    						<c:set var="date" value="0${date }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${date eq sessionScope.userInfo.strHire_DD }">
		                                    							<option value="${date }" selected="selected">${date }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${date }">${date }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			<input type="hidden" id="draftday1" name="draftday1">
		                                  			일
	                   							</td>
                   							</tr>
	                   						<tr>
	                   							<td style="width: 12%; text-align: center;">제목</td>
	                   							<td colspan="3">
	                   								<input type="text" style="width: 100%" id=strtitle" name="strtitle">
	                   							</td>
	                   						</tr>
	                   					</tbody>
                   					</table>
                   					
                   					<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px; margin-top: 30px;">
	                   					<h4>문서내용</h4>
	                   				</div>
                   					
                   					<table style="margin-left: 30px; width: 97%;">
                   						<tbody>
                   						
                   							<tr>
                   								<td style="width: 12%; text-align: center;">내용</td>
	                   							<td colspan="3">
	                   								<textarea id="strvalue" name="strvalue" rows="7" style="width: 100%" ></textarea>
	                   							
	                   							</td>
                   							</tr>
                   						
                   						</tbody>
                   					</table>
                   					
                   					<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px; margin-top: 30px;">
	                   					<h4>첨부파일</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px; width: 97%;">
                   						<tbody>
                   							<tr>
                   								<td>
                   									<input type="file" value="파일찾기">
               									</td>
                   							</tr>
              							</tbody>
           							</table>
           						<table align="center">
           						<tr>
           						<td>
           						<iframe name="fake" width="0" height="0" frameborder="0"></iframe>
           						<input type="button" id="preview" name="preview" class=" btn btn-round btn-primary" value="미리보기" onclick="go()" /></td>
	                   				    <td><input type="submit" class=" btn btn-round btn-primary" value="상신하기"/></td>
	                   				     <td><input type="reset" class=" btn btn-round btn-primary" value="다시작성"/></td>
	                   				    </tr>
	                   				    </table>
                   				</form>
               				</div>
           				</div>
       				</div>
       				<div class="col-md-1"></div>
  				</div>
  				
					<!-- end : 메뉴 디자인 구성하는 위치 -->
					
           </div>
           
         
     <!--       <script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script> -->
          <!-- end: content -->
</html>