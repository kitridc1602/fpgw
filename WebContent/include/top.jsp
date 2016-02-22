<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="utf-8">
	<meta name="description" content="GroupWare System of KITRI DC16th Education Team No.2 Final Project">
	<meta name="author" content="${sessionScope.coInfo[0].strName }">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${sessionScope.coInfo[0].strName }</title>
 
    <!-- start: Css -->
    <link rel="stylesheet" type="text/css" href="${root }/css/bootstrap.min.css">

      <!-- plugins -->
      <link rel="stylesheet" type="text/css" href="${root }/css/plugins/font-awesome.min.css"/>
      <link rel="stylesheet" type="text/css" href="${root }/css/plugins/simple-line-icons.css"/>
      <link rel="stylesheet" type="text/css" href="${root }/css/plugins/animate.min.css"/>
      <link rel="stylesheet" type="text/css" href="${root }/css/plugins/fullcalendar.min.css"/>
      
      <!-- plugins date-time-picker css -->
	  <link rel="stylesheet" type="text/css" href="${root }/css/plugins/bootstrap-material-datetimepicker.css" />
	  
	  <!-- plugins data tables css -->
	  <link rel="stylesheet" type="text/css" href="${root }/css/plugins/datatables.bootstrap.min.css" />
	  
	<link href="${root }/css/style.css" rel="stylesheet">
	<!-- end: Css -->

	<link rel="shortcut icon" href="${root }/img/logo.png">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="${root }/js/jquery.min.js"></script>
    <script src="${root }/js/jquery.ui.min.js"></script>
    <script src="${root }/js/bootstrap.min.js"></script>
 	<script src="${root }/js/plugins/moment.min.js"></script>
	<script src="${root }/js/plugins/fullcalendar.min.js"></script>
	<script src="${root }/js/plugins/jquery.nicescroll.js"></script>
	<!-- 구글 위치정보 서비스 API -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	
	
  </head>

 <body id="mimin" class="dashboard">
      <!-- start: Header -->
        <nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
              <div class="opener-left-menu is-open">
              		<!-- 메뉴 펼치는 아이콘 --> 
                <span class="top"></span>
                <span class="middle"></span>
                <span class="bottom"></span>
              </div>
                <!-- 상단 회사명 -->
                <a href="${root }/main/default.html" class="navbar-brand"> 
                 <b>${sessionScope.coInfo[0].strName }</b>
                </a>
              
              <ul class="nav navbar-nav navbar-right user-nav">
                <c:choose>
              		<c:when test="${sessionScope.success == 'ok' }">
              		
              			<li class="user-name"><span>${sessionScope.userInfo.strName } ${sessionScope.userInfo.strPosition_Nm }</span></li>
              				
              		</c:when>
             	
             		<c:otherwise>
             		
             			<li class="user-name"><span>로그인</span></li>
             			
             		</c:otherwise>
              	</c:choose>
              	
              	<!-- 사용자 아이콘 내부의 기능 -->
              		
                  <li class="dropdown avatar-dropdown">
                   <c:choose>
	              		<c:when test="${sessionScope.success == 'ok' }">
	              		
	              			<img src="${root }${sessionScope.userImageInfo.strFace_Path }${sessionScope.userImageInfo.strFace_Name }" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
	              				
	              		</c:when>
	             	
	             		<c:otherwise>
	             		
	             			<img src="${root }/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
	             			
	             		</c:otherwise>
	              	</c:choose>
                   <ul class="dropdown-menu user-dropdown">
                     <c:if test="${sessionScope.success == 'ok' }">
                   				<li><a href="${root }/user/privateselect.html"><span class="fa fa-user"></span> 내 정보 수정</a></li>
                   				<li><a href="${root }/main/logout.html"><span class="fa fa-user"></span> 로그아웃</a></li>
                   			</c:if>
                     <!-- <li role="separator" class="divider"></li>
                     <li class="more">
                      <ul>
                        <li><a href=""><span class="fa fa-cogs"></span></a></li>
                        <li><a href=""><span class="fa fa-lock"></span></a></li>
                        <li><a href=""><span class="fa fa-power-off "></span></a></li>
                      </ul>
                    </li> -->
                  </ul>
                </li>
                <li ><a href="#" class="opener-right-menu"><span class="fa fa-coffee"></span></a></li>
              </ul>
            </div>
          </div>
        </nav>
      <!-- end: Header -->

      <div class="container-fluid mimin-wrapper">
  
          <!-- start:Left Menu -->
            <div id="left-menu">
              <div class="sub-left-menu scroll">
                <ul class="nav nav-list">
                    <li><div class="left-bg"></div></li>
                    <li class="time">
                      <h1 class="animated fadeInLeft">00:00</h1>
                      <p class="animated fadeInRight">Day</p>
                    </li>
                    <c:forEach var="firstMenu" items="${menu}">
                    
                    	<c:if test="${firstMenu.intLevel eq 1 }">
                    		<li class="active ripple">
                      			<a class="tree-toggle nav-header"><span class="fa-home fa"></span> ${firstMenu.strName } 
                        			<span class="fa-angle-right fa right-arrow text-right"></span>
                      			</a>
                      			<ul class="nav nav-list tree">
                      			
                      				<c:forEach var="secondMenu" items="${menu }">
                      				
                      					<c:if test="${secondMenu.intLevel eq 2 && firstMenu.strCode eq secondMenu.strPCode }">
                      						
                      						<li><a class="tree-toggle1 nav-header" href="${root }${secondMenu.strPath }">${secondMenu.strName }
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
          <!-- end: Left Menu -->
</div>
</html>