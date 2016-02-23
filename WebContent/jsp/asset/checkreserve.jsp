<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<!-- start: content -->
<div id="content">
	<div class="panel">
		<div class="panel-body">
			<div class="col-md-6 col-sm-12">
				<h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
				<p class="animated fadeInDown">
					<span class="fa  fa-map-marker"></span> 자산관리>>예약현황
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
			<span class="icon-notebook icons"></span> 예약현황
		</h4>
	</div>

	<!-- start : 메뉴 디자인 구성하는 위치 -->
	<div class="col-md-12">
		<div class="col-md-12">
			<div class="panel-heading bg-white border-none">
				<div class="panel-body">
					<div class="responsive-table">
						<table id="datatables-example" class="table table-striped table-bordered" style="width: 100%; cellspacing: 0;">
							<thead>
								<tr>
									<th>NO</th>
									<th>예약날짜</th>
									<th>시작시간</th>
									<th>종료시간</th>
									<th>예약품목</th>
									<th>신청자</th>
									<th>진행상황</th>
									<th>비고</th>
								</tr>
							</thead>
							<tbody>									
								<c:forEach var="checkList" items="${list}">	
										<tr>	
											<td></td>
											<td>${checkList.strRMYmd}</td>
											<td>${checkList.strRMStartTime}:00</td>
											<td>${checkList.strRMEndTime}:00</td>
											<td>${checkList.strCMName}</td>
											<td>${checkList.strRMReqUserNM}&nbsp;${checkList.strUMPositionNM}</td>
											<td></td>
											<td></td>
										</tr>
																	
								</c:forEach>									
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- end : 메뉴 디자인 구성하는 위치 -->

	
</div>
<!-- end: content -->

</html>