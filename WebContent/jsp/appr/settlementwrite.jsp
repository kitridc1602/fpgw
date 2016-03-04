<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
          <!-- start: content -->
            <div id="content">
                <div class="panel">
               	
                  <div class="panel-body">
                    <div class="col-md-6 col-sm-12">
                    	<h3 class="animated fadeInLeft">DC16th Team No.2 GroupWare Project</h3>
                   	</div>
                   	
                    <div class="col-md-6 col-sm-12 text-right">
                        <h5 id="addr" style="color:#DDDDDE;"><span class="fa  fa-map-marker"></span></h5>                  
                    </div>
                  </div>                    

               </div>
                <div>
                	<!-- 실제 화면 구동부분 -->
                	         	<p>결제 문서 작성</p>

<table border="1">
<tr>
<td colspan="2" style="width: 820px; height: 66px;" >
전자결제 문서종류<br />
<br />
기안서  &nbsp;&nbsp;&nbsp; ☞ <a href="${root }/jsp/appr/insertgian.jsp">기안서</a><br/>
휴가서   &nbsp;&nbsp;&nbsp;☞  <a href="${root }/jsp/appr/inserthyuga.jsp">정기휴가</a> <br/>
발주서   &nbsp;&nbsp;&nbsp;☞  <a href="${root }/jsp/appr/insertbalju.jsp">발주서</a><br/>
출장계   &nbsp;&nbsp;&nbsp;☞  <a href="${root }/jsp/appr/insertchuljang.jsp">출장보고서</a><br/>
</td>




</tr>
</table>

                
                </div>
      		  </div>
          <!-- end: content -->

</html>