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
                      				
                      					<c:forEach var="board" items="${listBoard }">
                      					
                      						<tr>
	                          					<td style="text-align: right;">${board.intSeq }</td>
	                          					<td>${board.strTitle }</td>
	                          					<td>기본 사용자</td>
	                          					<td style="text-align: right;">${board.intCommentCount }</td>
                        					</tr>
                      					
                      					</c:forEach>
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

	                      	<c:forEach var="schedule" items="${ToDaySchedule }">
	                      		<c:choose>
	                      			<c:when test="${schedule.strSch_Kind_Cd eq '001' }">
	                      				<li class="mini-timeline-highlight">
	                      			</c:when>
	                      		
	                      			<c:otherwise>
	                      				<li class="mini-timeline-highlight mini-timeline-info">
	                      			</c:otherwise>
	                      		</c:choose>
	                      		
		                      		<div class="mini-timeline-panel">
		                      			<c:choose>
		                      				<c:when test="${schedule.strStart_Hour eq 00}">
		                      					<h5 class="time">일일</h5>
		                      				</c:when>
		                      				
		                      				<c:otherwise>
		                      					<h5 class="time">${schedule.strStart_Hour }:${schedule.strStart_Minute }</h5>		
		                      				</c:otherwise>
		                      			</c:choose>
		                            
		                            <p><a href="${root }/schedule/select.html?strUser=${schedule.strUser }&strYY=${schedule.strYY }&strMM=${schedule.strMM }&strDD=${schedule.strDD }&intSeq=${schedule.intSeq }">${schedule.strTitle }</a></p>
		                          </div>
		                        </li>
	                      	</c:forEach>
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