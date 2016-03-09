<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript">
function returnProd(date, sttime, edtime, prod){
	var str = '${root}/asset/returnprod.html?';
	var urlarr = ['strRDYmd=','&strRDStartTime=','&strRDEndTime=','&strRDRantProd='];
	var paramarr = [date,sttime,edtime,prod];
	
	for(i=0;i<urlarr.length;i++){
		str += urlarr[i]+paramarr[i];
	}
	
	location.href = str;
}
</script>
<!-- start: content -->
<div id="content">
	<div class="panel">
		<div class="panel-body">
			<div class="col-md-6 col-sm-12">
				<h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
				<p class="animated fadeInDown">
					<span class="fa  fa-map-marker"></span> 자산관리>>내 예약확인
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
			<span class="icon-calendar icons"></span> 내 예약확인
			<span><input type="button" class="btn btn-3d" value="전체예약일정" onclick="location.href='${root}/asset/viewAllcalendar.html'"/></span>
			<span><input type="button" class="btn btn-3d" value="내 예약일정" onclick="location.href='${root}/asset/viewMycalendar.html'"/></span>
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
									<th>담당자</th>
									<th>진행상황</th>
									<th>요청확인</th>
								</tr>
							</thead>
							<tbody>									
								<c:forEach var="myList" items="${list}" varStatus="status">
									<tr>
										<td>${status.count}</td>
										<td>${myList.strRMYmd}</td>
										<td>${myList.strRMStartTime}:00</td>
										<td>${myList.strRMEndTime}:00</td>
										<td>${myList.strCMName}</td>
										<td>${myList.strUMApprName}</td>
										<td>${myList.strCMNameRK }</td>
										<td>
											<span><input type="button" class="btn btn-3d" value="반납하기" onclick="returnProd('${myList.strRMYmd}','${myList.strRMStartTime}','${myList.strRMEndTime}','${myList.strRMRantProd}')"/></span>
										</td>
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