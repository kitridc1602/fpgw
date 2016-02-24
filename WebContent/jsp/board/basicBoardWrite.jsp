<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/summernote.css"/>
  <link rel="stylesheet"hidden-sm type="text/css" href="asset/css/plugins/animate.min.css"/>

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
                
                <div class="panel-heading bg-white border-none" style="margin-bottom: 20px;">
                   	<h4><span class="icon-notebook icons"></span> 글쓰기</h4>
                </div>

					<!-- start : 메뉴 디자인 구성하는 위치 -->
				<div class="panel-body" style="padding-bottom:30px;">	
					<div class="col-md-12">
                    	<div class="form-group form-animate-text" style="margin-top:40px !important;">
                          <input type="text" class="form-text" required>
                          <span class="bar"></span>
                          <label>제목 </label>
                        </div>
                    </div>	
                </div> 
                <hr>
                <div id="content">
           <div class="panel box-shadow-none content-header">
                  <div class="panel-body">
                    <div class="col-md-12">
                        <h3 class="animated fadeInLeft">Text Editor</h3>
                        <p class="animated fadeInDown">
                          Ui Element <span class="fa-angle-right fa"></span>Text Editor
                        </p>
                    </div>
                  </div>
              </div>
          <div class="col-md-12">
              <div class="panel">
                  <div class="panel-body">
                    <div id="summernote">Hello Summernote</div>
                  </div>
              </div>
          </div>
        </div>   

					<!-- end : 메뉴 디자인 구성하는 위치 -->
					
           </div>
          <!-- end: content -->
</html>