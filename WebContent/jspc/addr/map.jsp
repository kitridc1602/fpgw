<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="${root }/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${root }/css/plugins/simple-line-icons.css"/>
<link href="${root }/css/style.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KITRI</title>

<script src="${root }/js/jquery.min.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=9ec6ce4058e3bebfa9dee609084bbd13&libraries=services"></script>
<script type="text/javascript">



$(document).ready(function(){

	
	var location = "${location}";
	var venderNm = "${venderNm}";
	var lat;
	var lng;
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addr2coord(location, function(status, result) {

	    // 정상적으로 검색이 완료됐으면 
	     if (status === daum.maps.services.Status.OK) {

	    	 lat = result.addr[0].lat;
	    	 lng = result.addr[0].lng;
	        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new daum.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new daum.maps.InfoWindow({
	            content: '<div style="padding:5px;">' + venderNm + '</div>'
	        });
	        infowindow.open(map, marker);
	    } 
	});	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(lat, lng), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	
	
})



</script>


</head>
<body>
	<div id="map" style="width:500px;height:400px;"></div>
	<div style="width:500px; text-align: right;">
		<input type="button" class="btn ripple btn-round btn-3d btn-default" style="width: auto; height: auto;" id="" name="" value="종료" onclick="window.close()">
	</div>
</body>
</html>