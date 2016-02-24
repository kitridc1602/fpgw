<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<<c:set var="strRMApproUser" value="${approUser}"></c:set>
<!DOCTYPE html>
<html lang="en">

<script type="text/javascript">

//탭 메뉴 클릭 시 설정된 값 초기화	
if($('#tabs-demo6-1').click || $('#tabs-demo6-2').click || $('#tabs-demo6-3').click || 
		$('#roomCnslBtn').click || $('#carCnslBtn').click || $('#equipsCnslBtn').click){
		$(document).ready(function(){
					
				$('#tabs-demo6-1').on('click', function(){
					$('#roomName').text('');
					$('#roomDate').text('');
					$('#roomTime').text('');
					$('#roomDateText').val('');
					$('#roomSelect').val('');					
					$('input[id="roomTimeId"]').attr('checked', false);
					
					$('#carName').text('');
					$('#carDate').text('');
					$('#carTime').text('');
					$('#carDateText').val('');
					$('#carSelect').val('');					
					$('input[id="carTimeId"]').attr('checked', false);
					
					$('#equipName').text('');
					$('#equipDate').text('');
					$('#equipTime').text('');
					$('#equipDateText').val('');
					$('#equipSelect').val('');					
					$('input[id="equipTimeId"]').attr('checked', false);					
				});
				
				$('#tabs-demo6-2').on('click', function(){
					$('#roomName').text('');
					$('#roomDate').text('');
					$('#roomTime').text('');
					$('#roomDateText').val('');
					$('#roomSelect').val('');					
					$('input[id="roomTimeId"]').attr('checked', false);
					
					$('#carName').text('');
					$('#carDate').text('');
					$('#carTime').text('');
					$('#carDateText').val('');
					$('#carSelect').val('');					
					$('input[id="carTimeId"]').attr('checked', false);
					
					$('#equipName').text('');
					$('#equipDate').text('');
					$('#equipTime').text('');
					$('#equipDateText').val('');
					$('#equipSelect').val('');					
					$('input[id="equipTimeId"]').attr('checked', false);					
				});
				
				$('#tabs-demo6-3').on('click', function(){
					$('#roomName').text('');
					$('#roomDate').text('');
					$('#roomTime').text('');
					$('#roomDateText').val('');
					$('#roomSelect').val('');					
					$('input[id="roomTimeId"]').attr('checked', false);
					
					$('#carName').text('');
					$('#carDate').text('');
					$('#carTime').text('');
					$('#carDateText').val('');
					$('#carSelect').val('');					
					$('input[id="carTimeId"]').attr('checked', false);
					
					$('#equipName').text('');
					$('#equipDate').text('');
					$('#equipTime').text('');
					$('#equipDateText').val('');
					$('#equipSelect').val('');					
					$('input[id="equipTimeId"]').attr('checked', false);					
				});
		});
}
	


	$(document).ready(function(){
		
		//사용정보->회의실
		$('#roomName').text($('#roomSelect option:selected').attr('roomName'));		
		$('#roomSelect').change(function(){
			$('#roomName').text($('#roomSelect option:selected').attr('roomName'));			
		});
		
		//사용정보->회의실사용날짜
		$('#roomDate').text($('#roomDateText').val());
		$('#roomDateText').change(function(){
			$('#roomDate').text($('#roomDateText').val());
		});
			
		//사용정보->회의실사용시간
		$('input[id="roomTimeId"]').on('click', function(){
			var valueArr = new Array();
			var list = $('input[id="roomTimeId"]');
			for(var i=0;i<list.length;i++){
				if(list[i].checked){
					valueArr.push(list[i].value);
				}
			}
			var str = '';
			var n = 0;
			for(var i in valueArr){
				str += ' '+valueArr[i]+':00 ~ '+ (Number(valueArr[i])+1)+':00';
				n++;
			}
			roomTime = str + (n === 0 ? ' ' : '(' + n + ' 시간)');
			$('#roomTime').text(str + (n === 0 ? ' ' : '(' + n + ' 시간)'));
			$('#roomStartTime').val(Number(valueArr[0]));
			$('#roomEndTime').val(Number(valueArr[0])+n);			
		});	
		
		//사용정보->차량
		$('#carName').text($('#carSelect option:selected').attr('carName'));		
		$('#carSelect').change(function(){
			$('#carName').text($('#carSelect option:selected').attr('carName'));			
		});
		
		//사용정보->차량사용날짜
		$('#carDate').text($('#carDateText').val());
		$('#carDateText').change(function(){
			$('#carDate').text($('#carDateText').val());
		});
		
		//사용정보->차량사용시간
		$('input[id="carTimeId"]').on('click', function(){
			var valueArr = new Array();
			var list = $('input[id="carTimeId"]');
			for(var i=0;i<list.length;i++){
				if(list[i].checked){
					valueArr.push(list[i].value);
				}
			}
			var str = '';
			var n = 0;
			for(var i in valueArr){
				str += ' '+valueArr[i]+':00 ~ '+ (Number(valueArr[i])+1)+':00';
				n++;
			}
			carTime = str + (n === 0 ? ' ' : '(' + n + ' 시간)');
			$('#carTime').text(str + (n === 0 ? ' ' : '(' + n + ' 시간)'));
			$('#carStartTime').val(Number(valueArr[0]));
			$('#carEndTime').val(Number(valueArr[0])+n);			
		});
		
		//사용정보->장비
		$('#equipName').text($('#equipSelect option:selected').attr('equipName'));		
		$('#equipSelect').change(function(){
			$('#equipName').text($('#equipSelect option:selected').attr('equipName'));			
		});
		
		//사용정보->장비사용날짜
		$('#equipDate').text($('#equipDateText').val());
		$('#equipDateText').change(function(){
			$('#equipDate').text($('#equipDateText').val());
		});
		
		//사용정보->차량사용시간
		$('input[id="equipTimeId"]').on('click', function(){
			var valueArr = new Array();
			var list = $('input[id="equipTimeId"]');
			for(var i=0;i<list.length;i++){
				if(list[i].checked){
					valueArr.push(list[i].value);
				}
			}
			var str = '';
			var n = 0;
			for(var i in valueArr){
				str += ' '+valueArr[i]+':00 ~ '+ (Number(valueArr[i])+1)+':00';
				n++;
			}
			equipTime = str + (n === 0 ? ' ' : '(' + n + ' 시간)');
			$('#equipTime').text(str + (n === 0 ? ' ' : '(' + n + ' 시간)'));
			$('#equipStartTime').val(Number(valueArr[0]));
			$('#equipEndTime').val(Number(valueArr[0])+n);			
		});
	});
	
	
	
	

	
	



</script>

<!-- start: content -->
<div id="content">
	<div class="panel">
		<div class="panel-body">
			<div class="col-md-6 col-sm-12">
				<h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
				<p class="animated fadeInDown">
					<span class="fa  fa-map-marker"></span> 자산관리>>예약하기
				</p>


			</div>
			<div class="col-md-6 col-sm-12">
				<div class="col-md-6 col-sm-6 text-right"
					style="padding-left: 10px;">
					<h5 id="addr" style="color: #DDDDDE;">
						<span class="fa  fa-map-marker"></span>
					</h5>
					<h1 style="margin-top: -10px; color: #ddd;"></h1>
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

	<div class="panel-heading bg-white border-none"
		style="margin-bottom: 20px;">
		<h4>
			<span class="icon-notebook icons"></span> 예약하기
		</h4>
	</div>

	<!-- start : 메뉴 디자인 구성하는 위치 -->
	<div class="col-md-12">
		<div class="col-md-12">
			<div class="panel-heading bg-white border-none">
				<div class="panel-body">
					<div class="col-md-12">
						<div class="col-md-12">
							<div class="col-md-12 tabs-area">							
								<ul id="tabs-demo6" class="nav nav-tabs nav-tabs-v6" role="tablist">
									<li role="presentation" class="active"><a href="#tabs-demo7-area1" id="tabs-demo6-1" role="tab" data-toggle="tab" aria-expanded="true">회의실 예약</a></li>
									<li role="presentation" class=""><a href="#tabs-demo7-area2" role="tab" id="tabs-demo6-2" data-toggle="tab" aria-expanded="false">법인차량 예약</a></li>
									<li role="presentation"><a href="#tabs-demo7-area3" id="tabs-demo6-3" role="tab" data-toggle="tab" aria-expanded="false">공용장비 예약</a></li>
								</ul>
								<div id="tabsDemo6Content" class="tab-content tab-content-v6 col-md-12">
								
														
										<div role="tabpanel" class="tab-pane fade active in" id="tabs-demo7-area1" aria-labelledby="tabs-demo7-area1">
										<form name="roomForm" action="${root}/asset/reserveasset.html" method="post">
										<input type="hidden" id="strRMReqUser" name="strRMReqUser" value="${sessionScope.userInfo.strCode}">
										<input type="hidden" id="strRMApproUser" name="strRMApproUser" value="${strRMApproUser}">			
											<div class="col-md-4">
												<div><label>날짜선택</label></div>
												<div><input id="roomDateText" name="strRMYmd" type="text" class="form-text date" required></div>	
											</div>
											
											<div class="col-md-4">												
													<div><label>예약회의실선택</label></div>
													<div class="col-sm-12 padding-0">
														<input type="hidden" id="strRMRantBcode" name="strRMRantBcode" value="710">
														<select id="roomSelect" name="strRMRantProd" class="form-control" >
																	<option value="" roomName="">--- Default Select ---</option>
															<c:forEach var="confList" items="${list}">
																<c:if test="${confList.strBCode eq 710 && confList.intUse_Flag eq 1}">
																	<option value="${confList.strSCode}" roomName="${confList.strName}">${confList.strName}</option>
																</c:if>
															</c:forEach>															
														</select>
													</div>												
											</div>
											
											<div class="col-md-4">
												<div class="col-md-4">
													<div><label>사용시간</label></div>
													<div class="col-sm-12 padding-0">
															<c:forEach var="timeList" items="${list}">
																<c:if test="${timeList.strBCode eq 700 && timeList.intUse_Flag eq 1}">																														
																	<input id="roomTimeId" type="checkbox" value="${timeList.strName}">${timeList.strValue1}&nbsp;~&nbsp;${timeList.strValue2}<br>
																</c:if>
															</c:forEach>
																	
													</div>
												</div>
											</div>
											
											<div class="col-md-6">											
												<div>이용사항</div>
												<div></div>
											</div>
											
											<div class="col-md-6">											
														<div>사용정보</div>
														<div>사용날짜&nbsp;:&nbsp;<span id="roomDate"></span></div>
														<div>예약회의실&nbsp;:&nbsp;<span id="roomName"></span></div>														
														<div>사용시간&nbsp;:&nbsp;<span id="roomTime"></span></div>
														<input id="roomStartTime" name="strRMStartTime" type="hidden" value="">
														<input id="roomEndTime" name="strRMEndTime" type="hidden" value="">
														<div>&nbsp;&nbsp;&nbsp;</div>											
											</div>
											
											<div class="col-md-12">											
														<span class="col-sm-1">요청사유</span>
														<span class="col-sm-10"><input name="strRMReqMemo" type="text" class="form-control"  placeholder="요청사유를 적어주세요..."><input name="strRMMemo" type="hidden" class="form-control" value="temp"></span>													
											</div>
											
											<div class="col-md-4">
			                          			<span><input type="submit" class="btn btn-3d" value="신청"/></span>
			                          			<span><input id="roomCnslBtn" type="reset" class="btn btn-3d" value="취소"/></span>
			                          		</div>
			                          		</form>
										</div>
									
									
									
																
										<div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area2" aria-labelledby="tabs-demo7-area2">
										<form name="carForm" action="${root}/asset/reserveasset.html" method="post">
										<input type="hidden" id="strRMReqUser" name="strRMReqUser" value="${sessionScope.userInfo.strCode}">
										<input type="hidden" id="strRMApproUser" name="strRMApproUser" value="${strRMApproUser}">	
											<div class="col-md-4">
												<div><label>날짜선택</label></div>
												<div><input id="carDateText" name="strRMYmd" type="text" class="form-text date" required></div>	
											</div>
											
											<div class="col-md-4">												
													<div><label>예약차량선택</label></div>
													<div class="col-sm-12 padding-0">
														<input type="hidden" id="strRMRantBcode" name="strRMRantBcode" value="720">
														<select id="carSelect" name="strRMRantProd" class="form-control" >
																	<option value="" carName="">--- Default Select ---</option>
															<c:forEach var="confList" items="${list}">
																<c:if test="${confList.strBCode eq 720 && confList.intUse_Flag eq 1}">
																	<option value="${confList.strSCode}" carName="${confList.strName}">${confList.strName}</option>
																</c:if>
															</c:forEach>															
														</select>
													</div>												
											</div>
											
											<div class="col-md-4">
												<div class="col-md-4">
													<div><label>사용시간</label></div>
													<div class="col-sm-12 padding-0">
															<c:forEach var="timeList" items="${list}">
																<c:if test="${timeList.strBCode eq 700 && timeList.intUse_Flag eq 1}">																														
																	<input id="carTimeId" type="checkbox" value="${timeList.strName}">${timeList.strValue1}&nbsp;~&nbsp;${timeList.strValue2}<br>
																</c:if>
															</c:forEach>
																	
													</div>
												</div>
											</div>
											
											<div class="col-md-6">											
												<div>이용사항</div>
												<div></div>
											</div>
											
											<div class="col-md-6">											
														<div>사용정보</div>
														<div>사용날짜&nbsp;:&nbsp;<span id="carDate"></span></div>
														<div>예약차량&nbsp;:&nbsp;<span id="carName"></span></div>														
														<div>사용시간&nbsp;:&nbsp;<span id="carTime"></span></div>
														<input id="carStartTime" name="strRMStartTime" type="hidden" value="">
														<input id="carEndTime" name="strRMEndTime" type="hidden" value="">
														<div>&nbsp;&nbsp;&nbsp;</div>											
											</div>
											
											<div class="col-md-12">											
														<span class="col-sm-1">요청사유</span>
														<span class="col-sm-10"><input name="strRMReqMemo" type="text" class="form-control"  placeholder="요청사유를 적어주세요..."><input name="strRMMemo" type="hidden" class="form-control" value="temp"></span>													
											</div>
											
											<div class="col-md-4">
			                          			<span><input type="submit" class="btn btn-3d" value="신청"/></span>
			                          			<span><input id="carCnslBtn" type="reset" class="btn btn-3d" value="취소"/></span>
			                          		</div>
			                          		</form>
										</div>
									
									
									
									
										<div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area3" aria-labelledby="tabs-demo7-area3">
										<form name="equipForm" action="${root}/asset/reserveasset.html" method="post">
										<input type="hidden" id="strRMReqUser" name="strRMReqUser" value="${sessionScope.userInfo.strCode}">
										<input type="hidden" id="strRMApproUser" name="strRMApproUser" value="${strRMApproUser}">								
											<div class="col-md-4">
												<div><label>날짜선택</label></div>
												<div><input id="equipDateText" name="strRMYmd" type="text" class="form-text date" required></div>	
											</div>
											
											<div class="col-md-4">												
													<div><label>예약장비선택</label></div>
													<div class="col-sm-12 padding-0">
														<input type="hidden" id="strRMRantBcode" name="strRMRantBcode" value="730">
														<select id="equipSelect" name="strRMRantProd" class="form-control" >
																	<option value="" equipName="">--- Default Select ---</option>
															<c:forEach var="confList" items="${list}">
																<c:if test="${confList.strBCode eq 730 && confList.intUse_Flag eq 1}">
																	<option value="${confList.strSCode}" equipName="${confList.strName}">${confList.strName}</option>
																</c:if>
															</c:forEach>															
														</select>
													</div>												
											</div>
											
											<div class="col-md-4">
												<div class="col-md-4">
													<div><label>사용시간</label></div>
													<div class="col-sm-12 padding-0">
															<c:forEach var="timeList" items="${list}">
																<c:if test="${timeList.strBCode eq 700 && timeList.intUse_Flag eq 1}">																														
																	<input id="equipTimeId" type="checkbox" value="${timeList.strName}">${timeList.strValue1}&nbsp;~&nbsp;${timeList.strValue2}<br>
																</c:if>
															</c:forEach>
																	
													</div>
												</div>
											</div>
											
											<div class="col-md-6">											
												<div>이용사항</div>
												<div></div>
											</div>
											
											<div class="col-md-6">											
														<div>사용정보</div>
														<div>사용날짜&nbsp;:&nbsp;<span id="equipDate"></span></div>
														<div>예약장비&nbsp;:&nbsp;<span id="equipName"></span></div>														
														<div>사용시간&nbsp;:&nbsp;<span id="equipTime"></span></div>
														<input id="equipStartTime" name="strRMStartTime" type="hidden" value="">
														<input id="equipEndTime" name="strRMEndTime" type="hidden" value="">
														<div>&nbsp;&nbsp;&nbsp;</div>											
											</div>
											
											<div class="col-md-12">											
														<span class="col-sm-1">요청사유</span>
														<span class="col-sm-10"><input name="strRMReqMemo" type="text" class="form-control"  placeholder="요청사유를 적어주세요..."><input name="strRMMemo" type="hidden" class="form-control" value="temp"></span>													
											</div>
											
											<div class="col-md-4">
			                          			<span><input type="submit" class="btn btn-3d" value="신청"/></span>
			                          			<span><input id="equipCnslBtn" type="reset" class="btn btn-3d" value="취소"/></span>
			                          		</div>
			                          		</form>
										</div>
									
									
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end : 메뉴 디자인 구성하는 위치 -->

	</div>
</div>
<!-- end: content -->

</html>