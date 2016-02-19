<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">


    
          <!-- start: right menu <include>-->
            <div id="right-menu">
			
              	<ul class="nav nav-tabs">
                	<li class="active">
                 		<a data-toggle="tab" href="#right-menu-user">
                  			<span class="fa fa-comment-o fa-2x"></span>
                 		</a>
                	</li>
              	</ul>

             <div class="tab-content">
           		<div id="right-menu-user" class="tab-pane fade in active">
               		<div class="search col-md-12">
                    	<input type="text" placeholder="search.."/>
                  	</div>
                  	<div class="user col-md-12">
                   		<ul class="nav nav-list">
                   		
							<c:forEach var="userList" items="${allUser }">
	                   	
	                   			<li class="online">
	                      			<img src="${root }/img/avatar.jpg" alt="user name">
	                      			<div class="name">
	                        			<h5><b>${userList.strName }</b></h5>
	                        			<p>${userList.strDepart_Nm }</p>
	                      			</div>
	                      			<div class="gadget">
	                        			<span class="fa  fa-mobile-phone fa-2x"></span> 
	                      			</div>
	                      			<div class="dot"></div>
	                    		</li>
	                   	
	                   		</c:forEach>
                  			
                  		</ul>
               		</div>
                </div>
              </div>
            </div>  
          <!-- end: right menu <include>-->

      <!-- start: Mobile <include>-->
      <div id="mimin-mobile" class="reverse">

        <div class="mimin-mobile-menu-list">
            <div class="col-md-12 sub-mimin-mobile-menu-list animated fadeInLeft">
                <ul class="nav nav-list">
                    <li class="active ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-home fa"></span>Dashboard 
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                          <li><a href="dashboard-v1.html">Dashboard v.1</a></li>
                          <li><a href="dashboard-v2.html">Dashboard v.2</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-diamond fa"></span>Layout
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="topnav.html">Top Navigation</a></li>
                        <li><a href="boxed.html">Boxed</a></li>
                      </ul>
                    </li>
                  </ul>
            </div>

			       
      </div>
      <button id="mimin-mobile-menu-opener" class="animated rubberBand btn btn-circle btn-danger">
        <span class="fa fa-bars"></span>
      </button>
      </div>
       <!-- end: Mobile -->

  <!-- start: Javascript <include>-->

   
    
    <!-- plugins -->
    <script src="${root }/js/plugins/moment.min.js"></script>
    <script src="${root }/js/plugins/fullcalendar.min.js"></script>
    <script src="${root }/js/plugins/jquery.nicescroll.js"></script>
    <script src="${root }/js/plugins/jquery.vmap.min.js"></script>
    <script src="${root }/js/plugins/maps/jquery.vmap.world.js"></script>
    <script src="${root }/js/plugins/jquery.vmap.sampledata.js"></script>
    <script src="${root }/js/plugins/chart.min.js"></script>


	<!-- plugins date-time-picker js -->
	<script src="${root }/js/plugins/bootstrap-material-datetimepicker.js"></script>
    
    <!-- plugins data tables js -->
    <%-- <script src="${root }/js/plugins/jquery.datatables.min.js"></script>
    <script src="${root }/js/plugins/datatables.bootstrap.min.js"></script> --%>

    <!-- custom -->
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3"></script>
     <script src="${root }/js/main.js"></script>
     <script type="text/javascript">
      (function(jQuery){

         window.onload = function(){
        	 
        	 var latitude = '';
        	 var longitude = '';
        	 var latlng = null;
        	 /* 위치정보 구하기 */
        	 navigator.geolocation.getCurrentPosition(successCallback, errorCallback)     	 
        	 
        	 function successCallback(position){
        		 
        		 latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
        		 
        		 var geocoder= new google.maps.Geocoder();
        		 
        		 geocoder.geocode({'latLng': latlng}, function(results, status){  
         			
        			 if( status == google.maps.GeocoderStatus.OK ) {
        				 
        				 if(results[6]){
        					 
        					 var $addr = $("#addr");
        					 $addr.html('<span class="fa  fa-map-marker"></span>' + results[6].formatted_address.replace('대한민국', ''));
        				 }
        			 } else {
        				 
        				 alert("Geocoder failed due to: " + status);
        			 }
        		 });
        		 
        	 };

        	 
        	 function errorCallback(err){
        		 
        		 alert('실패(' + err.code + ')' + err.message);
        	 };

         };

      })(jQuery);
     </script>
     
     <script type="text/javascript">
  	 
  	 	/* 날짜 위젯 */
		$(document).ready(function() {
			$('.date').bootstrapMaterialDatePicker({
				weekStart : 0,
				time : false
			});
		});
  	 	
	 </script>
	 
	<!-- <script>
	 
	 	/* 테이블 데이터 검색 & 페이지 조절 */
		$(document).ready(function() {
			$('#datatables-example').DataTable();
		});
		
	</script> -->
  
  <!-- end: Javascript -->       

  </body>
</html>