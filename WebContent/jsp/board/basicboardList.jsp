<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- start: content -->
<div id="content">
	<div class="panel">
		<div class="panel-body">
			<div class="col-md-6 col-sm-12">
				<h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
				<p class="animated fadeInDown">
					<span class="fa  fa-map-marker"></span> 메뉴카테고리 들어갈 자리
				</p>


			</div>
			<div class="col-md-6 col-sm-12">
				<div class="col-md-6 col-sm-6 text-right"
					style="padding-left: 10px;">
					<h5 id="addr" style="color: #DDDDDE;">
						<span class="fa  fa-map-marker"></span> 위치정보 들어가는 자리
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
			<span class="icon-notebook icons"></span> 공지사항
		</h4>
	</div>

	<!-- start : 메뉴 디자인 구성하는 위치 -->
	<div class="col-md-12">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<table id="datatables-example"
				class="table table-striped table-bordered" width="100%"
				cellspacing="0">
				  <div class="col-md-12 padding-0" style="padding-bottom:20px;">
                    <div class="col-md-6" style="padding-left:10px;">
                  
                        <select>
                            <option>검색조건</option>
                            <option>제목</option>
                            <option>작성자</option>
                            <option>내용</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                         <div class="col-lg-12">
                            <div class="input-group">
                              <input type="text" class="form-control" aria-label="...">
                              <div class="input-group-btn">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">search<span class="caret"></span></button>
                                
                              </div><!-- /btn-group -->
                            </div><!-- /input-group -->
                          </div><!-- /.col-lg-6 -->
                    </div>
                 </div>
			</table>
		</div>
		<div class="col-md-1"></div>
	</div>

	<div class="col-md-12">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="panel bg-white border-none">
				<div class="panel-body">

					<table id="datatables-example"
						class="table table-striped table-bordered" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th><input type="checkbox" class="icheck" name="checkbox1" /></th>
								<th style="text-align: center;">글번호</th>
								<th style="text-align: center;">제목</th>
								<th style="text-align: center;">작성자</th>
								<th style="text-align: center;">등록일</th>
								<th style="text-align: center;">조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input width="5%" type="checkbox" class="icheck" name="checkbox1" style="text-align: center;"/></td></td>
								<td width="10%" style="text-align: center;"><h6>1</h6></td>
								<td width="50%" style="text-align: center;"><h6>회시장소안내</h6></td>
								<td width="10%" style="text-align: center;"><h6>김미희</h6></td>
								<td width="15%" style="text-align: center;"><h6>2016.02.11</h6></td>
								<td width="10%" style="text-align: center;"><h6>3</h6></td>

							</tr>
						</tbody>
					</table>
					<div class="col-md-12" style="padding-top: 20px;">
						<span style=""> <input type="button" class="btn btn-3d" value="삭제" /> 
										<input type="button" class="btn btn-3d" value="글쓰기" />
						</span>
					</div>
					<div class="col-md-12">
						<ul class="pagination center">
							<li><a href="#" aria-label="Previous"> 
									<span aria-hidden="true">&laquo;</span></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"> 
								<span aria-hidden="true">&raquo;</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>


	<!-- end : 메뉴 디자인 구성하는 위치 -->

</div>
<!-- end: content -->

</html>