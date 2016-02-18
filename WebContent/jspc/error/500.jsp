<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <link href="${root }/css/style.css" rel="stylesheet">
  <!-- end: Css -->

  <link rel="shortcut icon" href="${root }/img/logomi.png">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body id="mimin">
   
  <div class="col-md-12">

    <!-- start: Content -->
    <center>
      <div class="page-404 animated flipInX">
        <img src="${root }/img/500.png" class="img-responsive" style="margin-bottom:40px;"/>
        <a href="${root }/main/default.html" style="color:rgb(33, 150, 243);"> <b>메인화면으로 돌아가기</b>
          </br>
          <span class="icons icon-arrow-down"></span>
        </a>
      </div>
    </center>
    <!-- end: content -->
  </div>

<!-- start: Javascript -->
<script src="${root }/js/jquery.min.js"></script>
<script src="${root }/js/jquery.ui.min.js"></script>
<script src="${root }/js/bootstrap.min.js"></script>


<!-- plugins -->
<script src="${root }/js/plugins/moment.min.js"></script>
<script src="${root }/js/plugins/jquery.nicescroll.js"></script>


<!-- custom -->
<script src="${root }/js/main.js"></script>
<script type="text/javascript">
</script>
<!-- end: Javascript -->
</body>
</html>