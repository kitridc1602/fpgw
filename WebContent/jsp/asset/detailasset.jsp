<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>

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
					<h3 class="animated fadeInLeft">예약현황</h3>
					<p class="animated fadeInDown">
						자산관리 <span class="fa-angle-right fa"></span>예약현황
					</p>
				</div>
				<div class="col-md-12 tabs-area">
					<ul id="tabs-demo6" class="nav nav-tabs nav-tabs-v6" role="tablist">
						<li role="presentation" class="active"><a
							href="#tabs-demo7-area1" id="tabs-demo6-1" role="tab"
							data-toggle="tab" aria-expanded="true">회의실 예약현황</a></li>
						<li role="presentation" class=""><a href="#tabs-demo7-area2"
							role="tab" id="tabs-demo6-2" data-toggle="tab"
							aria-expanded="false">법인차량 예약현황</a></li>
						<li role="presentation"><a href="#tabs-demo7-area3"
							id="tabs-demo6-3" role="tab" data-toggle="tab"
							aria-expanded="false">공용장비 예약현황</a></li>
					</ul>
					<div id="tabsDemo6Content"
						class="tab-content tab-content-v6 col-md-12">
						<div role="tabpanel" class="tab-pane fade active in"
							id="tabs-demo7-area1" aria-labelledby="tabs-demo7-area1">
							<div class="col-md-12 top-20 padding-0">
								<div class="col-md-12">
									<div class="panel">
										<div class="panel-body">
											<div class="responsive-table">
												<table id="datatables-example1"
													class="table table-striped table-bordered"
													style="width: 100%; cellspacing: 0;">
													<thead>
														<tr>
															<th>NO</th>
															<th>예약자</th>
															<th>회의실</th>
															<th>예약날짜</th>
															<th>예약시간</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>이대리</td>
															<td>대회의실</td>
															<td>2011/04/25</td>
															<td>AM 11:30 ~ PM 13:00</td>
														</tr>
														<tr>
															<td>2</td>
															<td>박과장</td>
															<td>대회의실</td>
															<td>2011/04/25</td>
															<td>AM 11:30 ~ PM 13:00</td>
														</tr>
														<tr>
															<td>3</td>
															<td>정부장</td>
															<td>대회의실</td>
															<td>2011/04/25</td>
															<td>AM 11:30 ~ PM 13:00</td>
														</tr>
														<tr>
															<td>4</td>
															<td>최사장</td>
															<td>대회의실</td>
															<td>2011/04/25</td>
															<td>AM 11:30 ~ PM 13:00</td>
														</tr>
														<tr>
															<td>5</td>
															<td>장이사</td>
															<td>대회의실</td>
															<td>2011/04/25</td>
															<td>AM 11:30 ~ PM 13:00</td>
														</tr>
														<tr>
															<td>6</td>
															<td>최대리</td>
															<td>대회의실</td>
															<td>2011/04/25</td>
															<td>AM 11:30 ~ PM 13:00</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area2"
							aria-labelledby="tabs-demo7-area2">
							<div class="col-md-12 top-20 padding-0">
								<div class="col-md-12">
									<div class="panel">
										<div class="panel-body">
											<div class="responsive-table">
												<table id="datatables-example2"
													class="table table-striped table-bordered"
													style="width: 100%; cellspacing: 0;">
													<thead>
														<tr>
															<th>NO</th>
															<th>예약자</th>
															<th>차량</th>
															<th>예약날짜</th>
															<th>예약시간</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>김사원</td>
															<td>제네시스</td>
															<td>2011/04/25</td>
															<td>AM 11:30 ~ PM 13:00</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tabs-demo7-area3"
							aria-labelledby="tabs-demo7-area3">
							<div class="col-md-12 top-20 padding-0">
								<div class="col-md-12">
									<div class="panel">
										<div class="panel-body">
											<div class="responsive-table">
												<table id="datatables-example3"
													class="table table-striped table-bordered"
													style="width: 100%; cellspacing: 0;">
													<thead>
														<tr>
															<th>NO</th>
															<th>예약자</th>
															<th>장비</th>
															<th>예약날짜</th>
															<th>예약시간</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>김사원</td>
															<td>DSLR</td>
															<td>2011/04/25</td>
															<td>AM 11:30 ~ PM 13:00</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- 실제 화면 구동부분 끝 -->

	</div>
</div>
<!-- end: content -->

</html>