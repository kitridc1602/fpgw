<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<c:set var="name" value="${name}" />
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="${root}/css/bootstrap.min.css">
<script type="text/javascript" src="${root}/js/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		//사용정보->회의실
		$('#roomName').text($('#roomSelect option:selected').attr('roomName'));		
		$('#roomSelect').change(function(){
			$('#roomName').text($('select option:selected').attr('roomName'));			
		});
		
		//사용정보->회의실사용날짜
		$('#roomDate').text($('#roomDateText').val());
		$('#roomDateText').change(function(){
			$('#roomDate').text($('#roomDateText').val());
		});
			
		//사용정보->회의실사용시간...()
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
				str += valueArr[i]+' ';
				n++;
			}
			$('#roomTime').text(str+(n === 0 ? ' ' : '('+n+' 시간)'));
		});

	});
	
	
	//사용정보->차량
	
	//사용정보->차량사용날짜
	
	//사용정보->차량사용시간
	
	//사용정보->장비
	
	//사용정보->장비사용날짜
	
	//사용정보->차량사용시간

</script>

<!-- start: content -->
<div id="content">
	<div class="panel">

		<div class="panel-body">
			<div class="col-md-6 col-sm-12">
				<h3 class="animated fadeInLeft">DC16th Team No.2 GroupWare
					Project</h3>
			</div>

			<div class="col-md-6 col-sm-12 text-right">
				<h5 id="addr" style="color: #DDDDDE;">
					<span class="fa  fa-map-marker"></span>
				</h5>
			</div>
		</div>

	</div>
	<div>
		<!-- 실제 화면 구동부분 -->
		<div class="col-md-12 top-20 padding-0">
			<div class="col-md-12">
				<div class="panel-heading">
					<h3 class="animated fadeInLeft">예약신청</h3>
					<p class="animated fadeInDown">
						자산관리 <span class="fa-angle-right fa"></span>예약신청
					</p>
				</div>
				<div class="col-md-12 tabs-area">
					<ul id="tabs-demo6" class="nav nav-tabs nav-tabs-v6" role="tablist">
						<li role="presentation" class="active"><a href="#tabs-demo7-area1" id="tabs-demo6-1" role="tab" data-toggle="tab" aria-expanded="true">회의실 예약신청</a></li>
						<li role="presentation" class=""><a href="#tabs-demo7-area2" role="tab" id="tabs-demo6-2" data-toggle="tab"
							aria-expanded="false">법인차량 예약신청</a></li>
						<li role="presentation"><a href="#tabs-demo7-area3" id="tabs-demo6-3" role="tab" data-toggle="tab"
							aria-expanded="false">공용장비 예약신청</a></li>
					</ul>
					<div id="tabsDemo6Content" class="tab-content tab-content-v6 col-md-12">
						<div role="tabpanel" class="tab-pane fade active in" id="tabs-demo7-area1" aria-labelledby="tabs-demo7-area1">
							<div class="col-md-12 well">
								<div class="col-md-4" style="margin-top: 10px;">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span> <input id="roomDateText" type="text" class="form-text date" required> <span class="bar"></span>
												<label><span class="icons icon-calendar"></span> 날짜	선택</label>
											</div>
										</div>
									</div>
								</div>						
								
								<div class="col-md-4">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span> <label><span
													class="icons icon-people"></span> 회의실 선택</label>
												<div class="col-sm-12" style="margin-top: 40px;">
													<select id="roomSelect" class="form-control" >
																<option>---------- Default Select ----------</option>
														<c:forEach var="confList" items="${list}">
															<c:if test="${confList.strBCode eq 710 && confList.intUse_Flag eq 1}">
																<option value="${confList.strSCode}" roomName="${confList.strName}">${confList.strName}</option>
															</c:if>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span>
												<label><span class="icons icon-clock"></span> 시간 선택</label>
												<div class="col-sm-12" style="margin-top: 40px;">
												<c:forEach var="timeList" items="${list}">
													<c:if test="${timeList.strBCode eq 700 && timeList.intUse_Flag eq 1}">
														<div class="col-sm-12">															
															<input id="roomTimeId" type="checkbox" value="&nbsp;${timeList.strValue1}&nbsp;-&nbsp;${timeList.strValue2}">&nbsp;${timeList.strValue1}&nbsp;-&nbsp;${timeList.strValue2}<br>
														</div>
													</c:if>
												</c:forEach>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="panel">
										<div class="panel-body">
											<div>
											${sessionScope.userInfo.strName}
											</div>											
										</div>	
									</div>
								</div>

								<div class="col-md-6">
									<div class="panel">
										<div class="panel-body">
											<div>사용정보</div>
											<div>회의실&nbsp;:&nbsp;<span id="roomName"></span></div>
											<div>사용날짜&nbsp;:&nbsp;<span id="roomDate"></span></div>
											<div>사용시간&nbsp;:&nbsp;<span id="roomTime"></span></div>
											<div>&nbsp;&nbsp;&nbsp;</div>
										</div>
									</div>
								</div>

								<div class="col-md-12">
									<div class="panel">
										<div class="panel-body">
											<span class="col-sm-1">메모</span>
											<span class="col-sm-10"><input type="text" class="form-control"  placeholder="담당자에게 한마디..."></span>
											<span class="col-sm-1"><input type="button" class=" btn btn-round btn-primary" value="등록"/></span>                     			
										</div>
									</div>
								</div>
								<div class="col-md-12">
                          			<input type="button" class=" btn btn-round btn-primary" value="신청"/>
                          			<input type="button" class="btn btn-round btn-danger" value="취소"/>
                      			</div>                      		
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area2" aria-labelledby="tabs-demo7-area2">
							<div class="col-md-12 well">
								<div class="col-md-4" style="margin-top: 10px;">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span> <input type="text" class="form-text date" required> <span class="bar"></span>
												<label><span class="icons icon-calendar"></span> 날짜	선택</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span> <label><span
													class="fa fa-car"></span> 법인차 선택</label>
												<div class="col-sm-12" style="margin-top: 40px;">
													<select id="car" class="form-control" multiple>
														<c:forEach var="carList" items="${list}">
															<c:if test="${carList.strBCode eq 720 && carList.intUse_Flag eq 1}">
																<option value="${carList.strSCode}">${carList.strName}</option>
															</c:if>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span>
												<label><span class="icons icon-clock"></span> 시간 선택</label>
												<div class="col-sm-10 padding-0">
												<c:forEach var="timeList" items="${list}">
													<c:if test="${timeList.strBCode eq 700 && timeList.intUse_Flag eq 1}">
														<div class="col-sm-12">
															<input type="checkbox" name="${timeList.strSCode}">&nbsp;${timeList.strValue1}&nbsp;${timeList.strValue2}&nbsp;-&nbsp;${timeList.strValue3}&nbsp;${timeList.strValue4}<br>
														</div>
													</c:if>
												</c:forEach>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="panel">
										<div class="panel-body">이용사항</div>
									</div>
								</div>

								<div class="col-md-6">
									<div class="panel">
										<div class="panel-body">사용정보</div>
									</div>
								</div>

								<div class="col-md-12">
									<div class="panel">
										<div class="panel-body">
											<span class="col-sm-1">메모</span>
											<span class="col-sm-10"><input type="text" class="form-control"  placeholder="담당자에게 한마디..."></span>
											<span class="col-sm-1"><input type="button" class=" btn btn-round btn-primary" value="등록"/></span>      
										</div>
									</div>
								</div>
								<div class="col-md-12">
                          			<input type="button" class=" btn btn-round btn-primary" value="신청"/>
                          			<input type="button" class="btn btn-round btn-danger" value="취소"/>
                      			</div>
							</div>
						</div>
						
						<div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area3" aria-labelledby="tabs-demo7-area3">
							<div class="col-md-12 well">
								<div class="col-md-4" style="margin-top: 10px;">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span> <input type="text" class="form-text date" required> <span class="bar"></span>
												<label><span class="icons icon-calendar"></span> 날짜	선택</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span> <label><span class="icons icon-wrench"></span> 장비 선택</label>
												<div class="col-sm-12" style="margin-top: 40px;">
													<select id="res" class="form-control" multiple>
														<c:forEach var="resList" items="${list}">
															<c:if test="${resList.strBCode eq 730 && resList.intUse_Flag eq 1}">
																<option value="${resList.strSCode}">${resList.strName}</option>
															</c:if>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="panel">
										<div class="panel-body">
											<div class="form-group form-animate-text">
												<span class="bar"></span>
												<label><span class="icons icon-clock"></span> 시간 선택</label>
												<div class="col-sm-10 padding-0">
												<c:forEach var="timeList" items="${list}">
													<c:if test="${timeList.strBCode eq 700 && timeList.intUse_Flag eq 1}">
														<div class="col-sm-12">
															<input type="checkbox" name="${timeList.strSCode}">&nbsp;${timeList.strValue1}&nbsp;${timeList.strValue2}&nbsp;-&nbsp;${timeList.strValue3}&nbsp;${timeList.strValue4}<br>
														</div>
													</c:if>
												</c:forEach>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="panel">
										<div class="panel-body">이용사항</div>
									</div>
								</div>

								<div class="col-md-6">
									<div class="panel">
										<div class="panel-body">사용정보</div>
									</div>
								</div>

								<div class="col-md-12">
									<div class="panel">
										<div class="panel-body">
											<span class="col-sm-1">메모</span>
											<span class="col-sm-10"><input type="text" class="form-control"  placeholder="담당자에게 한마디..."></span>
											<span class="col-sm-1"><input type="button" class=" btn btn-round btn-primary" value="등록"/></span>      
										</div>
									</div>
								</div>
								<div class="col-md-12">
                          			<input type="button" class=" btn btn-round btn-primary" value="신청"/>
                          			<input type="button" class="btn btn-round btn-danger" value="취소"/>
                      			</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- 실제 화면 구동부분  끝-->
	</div>
</div>
<!-- end: content -->

</html>