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
		
		<table>
			<tr>
				<td>
					<p style="width: 239px">개인 문서함 ▶ 상신문서</p>
				</td>
		
		</table>
		<!-- <table border="2" style="width: 1006px"> -->
		<table id="datatables-example" class="table table-striped table-bordered">
			<thead>
			<tr>				
				<th style="width: 78px">기안날짜</th>
				<th style="width: 99px">문서번호</th>
				<th style="width: 108px">문서종류</th>
				<th style="width: 291px">문서명</th>
				<th style="width: 90px">상태</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="cc" items="${list}">
				<tr>					
					<td style="width: 78px">${cc.strAm_Draft_Y}/${cc.strAm_Draft_M}/${cc.strAm_Draft_D}</td>
					<td style="width: 99px">${cc.strAm_Docu_No}-${cc.strAm_Seq}</td>
					<td style="width: 108px">${cc.strDl_Name}</td>
					<td style="width: 291px"><a href="#" onclick="a()">${cc.strAm_Title}</a></td>
					<td style="width: 90px">${cc.strCm_Name}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<!-- end: content -->

</html>