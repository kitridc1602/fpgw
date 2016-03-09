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
					<span class="fa  fa-map-marker"></span> 자산관리>>거래처관리
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
			<span class="icon-diamond icons"></span> 거래처관리
		</h4>
	</div>
	<!-- end : 메뉴 디자인 구성하는 위치 -->
	<div class="col-md-12">
		<div class="col-md-12">
			<div class="panel-heading bg-white border-none">
				<div class="panel-body">
					<div id="map" style="width: 100%; height: 700px;"></div>
					<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=9ec6ce4058e3bebfa9dee609084bbd13"></script>
					<script>
						var container = document.getElementById('map');
						var options = {
							center : new daum.maps.LatLng(33.450701, 126.570667),
							level : 3
						};

						var map = new daum.maps.Map(container, options);
					</script>
				</div>
			</div>
		</div>
	</div>
	<!-- end : 메뉴 디자인 구성하는 위치 -->
</div>

<!-- end: content -->

</html>