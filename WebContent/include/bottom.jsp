<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
          <!-- start: right menu -->
            <div id="right-menu">
              <ul class="nav nav-tabs">
                	<li class="active">
                 		<a data-toggle="tab" href="#right-menu-user">
                  			<span class="fa fa-comment-o fa-2x"></span>
                 		</a>
                	</li>
                	<li>
	                 <a data-toggle="tab" href="#right-menu-notif">
	                  <span class="fa fa-bell-o fa-2x"></span>
	                 </a>
	                </li>
	                <li>
	                  <a data-toggle="tab" href="#right-menu-config">
	                   <span class="fa fa-cog fa-2x"></span>
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
                   				<img src="${root }${userList.strFace_Path }${userList.strFace_Name }" alt="user name">
                   				<div class="name">
                 					<h5><b>${userList.strName } ${userList.strPosition_Nm }</b></h5>
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
                <!-- Chatbox -->
                <div class="col-md-12 chatbox">
                  <div class="col-md-12">
                    <a href="#" class="close-chat">X</a><h4></h4>
                  </div>
                  <div class="chat-area">
                    <div class="chat-area-content">
                      <div class="msg_container_base">
                        <div class="row msg_container send">
                          <div class="col-md-9 col-xs-9 bubble">
                            <div class="messages msg_sent">
                              <!-- <p>that mongodb thing looks good, huh?
                                tiny master db, and huge document store</p>
                                <time datetime="2009-11-13T20:00">Timothy • 51 min</time> -->
                              </div>
                            </div>
                            <div class="col-md-3 col-xs-3 avatar">
                              <img src="${root }/img/avatar.jpg" class=" img-responsive " alt="user name">
                            </div>
                          </div>

                          <div class="row msg_container receive">
                            <div class="col-md-3 col-xs-3 avatar">
                              <img src="${root }/img/avatar.jpg" class=" img-responsive " alt="user name">
                            </div>
                            <div class="col-md-9 col-xs-9 bubble">
                              <div class="messages msg_receive">
                                <!-- <p>that mongodb thing looks good, huh?
                                  tiny master db, and huge document store</p>
                                  <time datetime="2009-11-13T20:00">Timothy • 51 min</time> -->
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                     <div class="chat-input">
                       <textarea placeholder="type your message here.."></textarea>
                     </div>
                        <div class="user-list">
                          <ul>
                          
                          	<c:forEach var="userList" items="${allUser }">
              					<li class="online">
                              		<a href=""  data-toggle="tooltip" data-placement="left" title="${userList.strName } ${userList.strPosition_Nm }">
                               			<div class="user-avatar">
                               				<img src="${root }${userList.strFace_Path }${userList.strFace_Name }" alt="user name">
                               			</div>
                               			<div class="dot"></div>
                              		</a>
                            		</li>
             			
           					</c:forEach>
             					          
                          </ul>
                        </div>
                      </div>
                    </div>
                
                <!-- 화면 설정 기능 -->          
                <div id="right-menu-config" class="tab-pane fade">
                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Notification</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-info">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch1" checked>
                        <label class="onoffswitch-label" for="myonoffswitch1"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <!-- <h5>Custom Designer</h5> -->
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-danger">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch2" checked>
                        <label class="onoffswitch-label" for="myonoffswitch2"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <!-- <h5>Autologin</h5> -->
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-success">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch3" checked>
                        <label class="onoffswitch-label" for="myonoffswitch3"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <!-- <h5>Auto Hacking</h5> -->
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-warning">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch4" checked>
                        <label class="onoffswitch-label" for="myonoffswitch4"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <!-- <h5>Auto locking</h5> -->
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch5" checked>
                        <label class="onoffswitch-label" for="myonoffswitch5"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <!-- <h5>FireWall</h5> -->
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch6" checked>
                        <label class="onoffswitch-label" for="myonoffswitch6"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <!-- <h5>CSRF Max</h5> -->
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-warning">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch7" checked>
                        <label class="onoffswitch-label" for="myonoffswitch7"></label>
                      </div>
                    </div>
                  </div>


                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <!-- <h5>Man In The Middle</h5> -->
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-danger">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch8" checked>
                        <label class="onoffswitch-label" for="myonoffswitch8"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <!-- <h5>Auto Repair</h5> -->
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-success">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch9" checked>
                        <label class="onoffswitch-label" for="myonoffswitch9"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <!-- <input type="button" value="More.." class="btnmore"> -->
                  </div>

                </div>
              </div>
            </div>  
          <!-- end: right menu -->
          
      </div>

      <!-- start: Mobile -->
      <div id="mimin-mobile" class="reverse">
        <div class="mimin-mobile-menu-list">
            <div class="col-md-12 sub-mimin-mobile-menu-list animated fadeInLeft">
                <ul class="nav nav-list">
                	 <c:forEach var="firstMenu" items="${menu}">
                    
                    	<c:if test="${firstMenu.intLevel eq 1 }">
                    		<li class="active ripple">
                      			<a class="tree-toggle nav-header"><span class="fa-home fa"></span> ${firstMenu.strName } 
                        			<span class="fa-angle-right fa right-arrow text-right"></span>
                      			</a>
                      			<ul class="nav nav-list tree">
                      			
                      				<c:forEach var="secondMenu" items="${menu }">
                      				
                      					<c:if test="${secondMenu.intLevel eq 2 && firstMenu.strCode eq secondMenu.strPCode }">
                      						
                      						<li><a class="tree-toggle1 nav-header" href="${secondMenu.strPath }">${secondMenu.strName }
                      								<span class="fa-angle-right fa right-arrow text-right"></span>
                   								</a>
                							</li>
                      							
                      					</c:if>
                      					
                      				</c:forEach>
                          			
                      			</ul>
                    		</li>	
                    	</c:if>
                    
                    </c:forEach>   
                </ul>
            </div>
        </div>       
      </div>
      <button id="mimin-mobile-menu-opener" class="animated rubberBand btn btn-circle btn-danger">
        <span class="fa fa-bars"></span>
      </button>
       <!-- end: Mobile -->

<div class="modal fade" id="organization">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">조직도</h4>
			</div>
			<div class="modal-body">
				<div id="sidetreecontrol">
				<h4><a href="?#">KITRI</a></h4>
				</div>
				<ul id="organizationtree" class="nav nav-list">
                	 <c:forEach var="firstDepart" items="${DepartList}">
                    
                    	<c:if test="${firstDepart.intLevel eq 1 }">
                    		<li class="ripple">
                      			<a class="tree-toggle nav-header"><span class="icon-folder-alt"></span> ${firstDepart.strName }</a>
                      			<ul class="nav nav-list tree">
                      				<c:forEach var="secondDepart" items="${DepartList }">
                      				
                      					<c:if test="${secondDepart.intLevel eq 2 && firstDepart.strCode eq secondDepart.strPCode }">
                      						
                      						<li class="ripple"><a class="sub-tree-toggle nav-header"><span class="fa fa-folder"></span> ${secondDepart.strName }</a>
                   								<ul class="nav nav-list sub-tree">
                   									<c:forEach var="userList" items="${DepartUserList }">
                   										<c:if test="${secondDepart.strCode eq userList.strDepart_Cd }">
                   											<li id="selectuser" value="${userList.strCode }">
                   												<a class="" onclick="selectOrganization('${userList.strCode }', '${userList.strPosition_Nm }&nbsp;${userList.strName }')"><span class="icon-user"></span> ${userList.strPosition_Nm } ${userList.strName }</a>
          													</li>
                   										</c:if>
                   									</c:forEach>
                   								</ul>
                							</li>
                      							
                      					</c:if>
                      					
                      				</c:forEach>
                          			
                      			</ul>
                    		</li>	
                    	</c:if>
                    
                    </c:forEach>   
                </ul>
			</div>
			<div class="modal-footer">
				<input type="hidden" id="selectusercode" name="selectusercode">
				<label id="selectusername"></label>
				<button type="button" class="btn btn-default" data-dismiss="modal">종료</button>
				<button type="button" id="selectorganizationbutton" class="btn btn-primary" data-dismiss="modal" onclick="selectExport('selectusercode', 'selectusername')">선택</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="depart">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">부서선택</h4>
			</div>
			<div class="modal-body">
				<div id="sidetreecontrol">
				<h4><a href="?#">KITRI</a></h4>
				</div>
				<ul id="organizationtree" class="nav nav-list">
                	 <c:forEach var="firstDepart" items="${DepartList}">
                    
                    	<c:if test="${firstDepart.intLevel eq 1 }">
                    		<li class="ripple">
                      			<a class="tree-toggle nav-header"><span class="icon-folder-alt"></span> ${firstDepart.strName }</a>
                      			<ul class="nav nav-list tree">
                      				<c:forEach var="secondDepart" items="${DepartList }">
                      				
                      					<c:if test="${secondDepart.intLevel eq 2 && firstDepart.strCode eq secondDepart.strPCode }">
                      						
                      						<li id="selectdepart" value="${secondDepart.strCode }">
                      							<a onclick="selectDepart('${secondDepart.strCode }', '${secondDepart.strName }')">
                      								<span class="fa fa-folder"></span> ${secondDepart.strName }
                   								</a>
                							</li>
                      					</c:if>
                      				</c:forEach>
                      			</ul>
                    		</li>	
                    	</c:if>
                    </c:forEach>   
                </ul>
			</div>
			<div class="modal-footer">
				<input type="hidden" id="selectdepartcode" name="selectdepartcode">
				<label id="selectdepartname"></label>
				<button type="button" class="btn btn-default" data-dismiss="modal">종료</button>
				<button type="button" id="selectdepartbutton" class="btn btn-primary" data-dismiss="modal" onclick="selectExport('selectdepartcode', 'selectdepartname')">선택</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>

<!--end : organization modal -->

<!-- 부서, 조직도 선택시 해당값 처리 Script --> 
<script type="text/javascript">

	var varObjectCode = "";
	var varObjectName = "";
	
	function selectImport(strCode, strName) {
				
		varObjectCode = strCode;
		varObjectName = strName;
	}
	
	function selectOrganization(strCode, strName){
		
		document.getElementById("selectusercode").value = strCode;
		document.getElementById("selectusername").innerHTML = strName;
	}
	
	function selectDepart(strCode, strName){
		
		document.getElementById("selectdepartcode").value = strCode;
		document.getElementById("selectdepartname").innerHTML = strName;
	}

	function selectExport(varCode, varName) {
				
		document.getElementById(varObjectCode).value = document.getElementById(varCode).value;
		document.getElementById(varObjectName).innerHTML = document.getElementById(varName).innerHTML;
	}

</script>

    <!-- start: Javascript -->
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
    <script src="${root }/js/plugins/jquery.datatables.min.js"></script>
    <script src="${root }/js/plugins/datatables.bootstrap.min.js"></script>

    <!-- custom -->
    
<!-- 주소 검색 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function addrSearch(){
		new daum.Postcode({
	        oncomplete: function(data) {
	            /* 
	        	zonecode : 우편번호(5자리) -> 13494
	            address : 기본주소 -> 경기도 성남시 분당구 판교역로 235
	            roadAddress : 도로명주소 -> 경기도 성남시 분당구 판교역로 235
	            jibunAddress : 지번주소 -> 경기도 성남시 분당구 삼평동 681
	            sido : 도/시 이름 -> 경기
	            sigungu : 시/군/구 이름
	            bname : 법정동/법정리 -> 삼평동
	            postcode : 구 우편번호 -> 463-400
	            postcode1 : 구 우편번호 앞 3자리 -> 463
	            postcode2 : 구 우편번호 뒤 3자리 -> 400
	             */
	             
             	document.getElementById("zip1").value = data.postcode1
	            document.getElementById("zip2").value = data.postcode2;
             	document.getElementById("addr1").value = data.address;
	            document.getElementById("addr2").focus();
	        }
	    }).open();
	}
    
</script>

     <script src="${root }/js/main.js"></script>
     <!-- 캘린더 한글 지원 -->
	<script src="${root }/js/lang/ko.js"></script>
     <script type="text/javascript">
      (function(jQuery){

      	 /* 위치정보 구하기  Start*/
          window.onload = function(){
         	 
         	 var latitude = '';
         	 var longitude = '';
         	 var latlng = null;

         	 navigator.geolocation.getCurrentPosition(successCallback, errorCallback)     	 
         	 
         	 function successCallback(position){
         		 
         		 latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
         		 
         		 var geocoder= new google.maps.Geocoder();
         		 
         		 geocoder.geocode({'latLng': latlng}, function(results, status){  
          			
         			 if( status == google.maps.GeocoderStatus.OK ) {
         				             				 
         				 if(results[2]){
         					 
         					 var $addr = $("#addr");
         					 $addr.html('<span class="fa  fa-map-marker"></span>' + results[2].formatted_address.replace('대한민국', ''));
         				 }
         			 } else {
         				 
         				 alert("Geocoder failed due to: " + status);
         			 }
         		 });
         		 
         	 };

         	/* 위치정보 구하기  Start*/
         	 
         	 function errorCallback(err){
         		 
         		 alert('실패(' + err.code + ')' + err.message);
         	 };
      	 };
 
        // start: Calendar =========
        	
			
         $('.dashboard .calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek'
            },
            defaultDate: '2015-02-12',
            lang: 'ko',
            businessHours: true, // display business hours
            editable: false,
            events: [
                {
                    title: 'Business Lunch',
                    start: '2015-02-03T13:00:00',
                    constraint: 'businessHours'
                },
                {
                    title: 'Meeting',
                    start: '2015-02-13T11:00:00',
                    constraint: 'availableForMeeting', // defined below
                    color: '#20C572'
                },
                {
                    title: 'Conference',
                    start: '2015-02-18',
                    end: '2015-02-20'
                },
                {
                    title: 'Party',
                    start: '2015-02-29T20:00:00'
                },

                // areas where "Meeting" must be dropped
                {
                    id: 'availableForMeeting',
                    start: '2015-02-11T10:00:00',
                    end: '2015-02-11T16:00:00',
                    rendering: 'background'
                },
                {
                    id: 'availableForMeeting',
                    start: '2015-02-13T10:00:00',
                    end: '2015-02-13T16:00:00',
                    rendering: 'background'
                },

                // red areas where no events can be dropped
                {
                    start: '2015-02-24',
                    end: '2015-02-28',
                    overlap: false,
                    rendering: 'background',
                    color: '#FF6656'
                },
                {
                    start: '2015-02-06',
                    end: '2015-02-08',
                    overlap: true,
                    rendering: 'background',
                    color: '#FF6656'
                }
            ]
        });
        // end : Calendar==========

        // end: Maps==============

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
	 
	<script>
	 
	 	/* 테이블 데이터 검색 & 페이지 조절 */
		$(document).ready(function() {
			$('#datatables-example').DataTable();
		});
		
	</script>
  <!-- end: Javascript -->
  </body>
</html>