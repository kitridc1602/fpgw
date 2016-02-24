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
                        <h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
                        <p class="animated fadeInDown"><span class="fa  fa-map-marker"></span> 메뉴카테고리 들어갈 자리</p>

                        
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="col-md-6 col-sm-6 text-right" style="padding-left:10px;">
                          <h5 id="addr"  style="color:#DDDDDE;"><span class="fa  fa-map-marker"></span> 위치정보 들어가는 자리</h5>
                          <h1 style="margin-top: -10px;color: #ddd;"></h1>
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
                
                <div class="col-md-12">
                
	                <!-- start : 업무현황  -->
	                
					<div class="col-md-5">
	                	<div class="panel bg-white border-none">
	                		<div class="panel-body">
	                			<div class="panel-heading bg-white border-none">
	                            	<h4><span class="icons icon-layers"></span> 업무현황</h4>
	                            </div>
	                            
	                            <ul class="nav navbar-nav" style="text-align: right;">
	                            	<li>
	                            		<div class="com-md-1"></div>
	                            	</li>
	                            	<li>
	                            		<div class="com-md-2">
	                            			<div class="panel-heading bg-white border-none">
	                            				<h5>결재할 문서</h5>
	                            			</div>
	                            		
	                           				<h6>미결재 00 건</h6>
	                            			<h6>결재 00 건</h6>
	                            		</div>
	                            	</li>
	                            	<li>
	                            		<div class="com-md-1"></div>
	                            	</li>
	                            	<li>
	                            		<div class="com-md-2">
	                            			<div class="panel-heading bg-white border-none">
	                            				<h5>개인 문서</h5>
	                            			</div>
		                            		<h6>미결재 00 건</h6>
	    	                        		<h6>결재 00 건</h6>
	                            
	        		                    </div>	
	                            	</li>
	                            	<li>
	                            		<div class="com-md-1"></div>
	                            	</li>
	                            	<li>
	                            		<div class="com-md-2">
	                            			<div class="panel-heading bg-white border-none">
	                            				<h5>협조 문서</h5>
	                            		</div>
	                            		<h6>미결재 00 건</h6>
	                            		<h6>결재 00 건</h6>
	                            
			                            </div>	
	                            	</li>
	                            	<li>
	                            		<div class="com-md-1"></div>
	                            	</li>
	                            	<li>
	                            		<div class="com-md-2">
	                            			<div class="panel-heading bg-white border-none">
	                            				<h5>부서/참조 문서</h5>
	                            			</div>
	                            			<h6>안읽음 00 건</h6>
	                            			<h6>읽음 00 건</h6>
			                            </div>	
	                            	</li>
	                            </ul>
	                            
	                       </div>
	                	</div>
	               	</div>
	               	
	               	<!-- end : 업무현황  -->
	               	
	               	<!-- stad : 공지사항 -->
	               	
	               	<div class="col-md-7">
	                	<div class="panel bg-white border-none">
	                		<div class="panel-body">
	                			<div class="panel-heading bg-white border-none">
	                            	<h4><span class="icons icon-volume-2"></span> 공지사항</h4>
	                            </div>
	                            <table id="" class="table table-striped table-bordered" width="100%" cellspacing="0">
                      				<thead>
                        				<tr>
                          					<th width="20px" style="text-align: center;">No.</th>
                          					<th style="text-align: center;">제목</th>
                          					<th width="100px" style="text-align: center;">작성자</th>
                          					<th width="50px" style="text-align: center;">조회</th>
				                        </tr>
                      				</thead>
                      				<tbody>
                      					<tr>
                          					<td style="text-align: right;">5</td>
                          					<td>열심히 Spring 공부하고 있습니다...(^.^);;</td>
                          					<td>사원 이명훈</td>
                          					<td style="text-align: right;">1</td>
                        				</tr>
                        				<tr>
                          					<td style="text-align: right;">4</td>
                          					<td>오늘도 바쁨. 은영기획 김대리와 저녁에 회의 있음.</td>
                          					<td>대리 심응규</td>
                          					<td style="text-align: right;">12</td>
                        				</tr>
                        				<tr>
                          					<td style="text-align: right;">3</td>
                          					<td>뭐여..?(@.@) 코딩이 왜이려??</td>
                          					<td>대리 양돈의</td>
                          					<td style="text-align: right;">4</td>
                        				</tr>
                        				<tr>
                          					<td style="text-align: right;">2</td>
                          					<td>이 게시판은 내꺼임...!!!!!</td>
                          					<td>과장 김미희</td>
                          					<td style="text-align: right;">123</td>
                        				</tr>
                        				<tr>
                          					<td style="text-align: right;">1</td>
                          					<td>재미있게 코딩놀이 해보자구~~~(^_^)/</td>
                          					<td>팀장 박대성</td>
                          					<td style="text-align: right;">0</td>
                        				</tr>
                      				</tbody>
                   				</table>
	                            
	                		</div>
	                	</div>
	               	</div>
	               	
	               	<!-- end : 공지사항 -->
               	
               	</div>
               	
               	<div class="col-md-12">
               	
	               	<!-- start : 일일일정 -->
	               	
	               	<div class="col-md-3">
	                  <div class="panel">
	                    <div class="panel-body">
	                    	<div class="panel-heading bg-white border-none">
                            	<h4><span class="icons icon-paper-clip"></span> 오늘의 일정</h4>
                            </div>
	                      <ul class="mini-timeline">
	
	                        <li class="mini-timeline-highlight">
	                           <div class="mini-timeline-panel">
	                            <h5 class="time">05:00</h5>
	                            <p>Make tea</p>
	                          </div>
	                        </li>
	
	                        <li class="mini-timeline-highlight">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">06:00</h5>
	                            <p>Go to market</p>
	                          </div>
	                        </li>
	
	                        <li class="mini-timeline-highlight">
	                         <div class="mini-timeline-panel">
	                            <h5 class="time">07:00</h5>
	                            <p>Coding!!</p>
	                          </div>
	                        </li>
	
	                        <li class="mini-timeline-highlight">
	                           <div class="mini-timeline-panel">
	                            <h5 class="time">09:00</h5>
	                            <p>Playing The Games</p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight">
	                           <div class="mini-timeline-panel">
	                            <h5 class="time">12:00</h5>
	                            <p>Meeting with <a href="#">Clients</a></p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight mini-timeline-warning">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">15:00</h5>
	                            <p>Breakdown the Personal PC</p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight mini-timeline-info">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">15:00</h5>
	                            <p>Checking Server!</p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight mini-timeline-success">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">16:01</h5>
	                            <p>Hacking The public wifi</p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight mini-timeline-danger">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">21:00</h5>
	                            <p>Sleep!</p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight mini-timeline-danger">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">22:00</h5>
	                            <p>Sleep!</p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight mini-timeline-danger">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">23:00</h5>
	                            <p>Sleep!</p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight mini-timeline-danger">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">24:00</h5>
	                            <p>Sleep!</p>
	                          </div>
	                        </li>
	                        <li class="mini-timeline-highlight mini-timeline-danger">
	                          <div class="mini-timeline-panel">
	                            <h5 class="time">01:00</h5>
	                            <p>Sleep!</p>
	                          </div>
	                        </li>
	                      </ul>
	                    </div>
	                  </div>            
	                </div>
	                
	                <!-- end : 일일일정 -->
	                
	                <!-- start : 캘린더 -->
	                
	                <div class="col-md-9"> 
	                	<div class="panel box-v4">
	                    	<div class="panel-heading bg-white border-none">
	                        	<h4><span class="icons icon-calendar"></span> 일정관리</h4>
	                        </div>
	                        <div class="panel-body padding-0">
	                        	<div class="calendar"></div>
	               			</div>
	                	</div>
                 	</div>	                

	                <!-- end : 캘린더 -->

           		</div>
           </div>
          <!-- end: content -->

</html>