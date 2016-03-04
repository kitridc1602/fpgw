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
					<span class="fa  fa-map-marker"></span> 자산관리>>도서관리
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
			<span class="icon-book-open icons"></span> 도서관리
		</h4>
	</div>
	<div>
		<!-- start : 메뉴 디자인 구성하는 위치 -->
		<div class="col-md-12">
			<div class="col-md-12">
				<div class="panel-heading bg-white border-none">
					<div class="panel-body">
						<div class="responsive-table">
							<table id="datatables-example"
								class="table table-striped table-bordered"
								style="width: 100%; cellspacing: 0;">
								<thead>
									<tr>
										<th>NO</th>
										<th>등록시간</th>
										<th>분류</th>
										<th>도서명</th>
										<th>저자</th>
										<th>출판사</th>
										<th>구입금액</th>
										<th>등록자</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="comList" items="${list}">

										<c:if
											test="${comList.strBCode eq 750 && comList.intUse_Flag eq 1}">
											<tr>
												<td>${comList.intSort}</td>
												<td>${comList.datGet_Date}</td>
												<td>${comList.strBName}</td>
												<td>${comList.strName}</td>
												<td>${comList.strValue1}</td>
												<td>${comList.strValue2}</td>
												<td>${comList.strValue3}</td>
												<td>${comList.strGet_User_Cd}</td>
											</tr>
										</c:if>

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
</div>
<!-- end: content -->

</html>