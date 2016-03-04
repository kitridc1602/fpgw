<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript">
function modelCheck(code){
	var strName = '';
	var strBCode = code;
	if(code == '740'){
		strName = $('#comName').val();
	} else if(code == '750'){
		strName = $('#bookName').val();
	} else if(code == '710'){
		strName = $('#roomName').val();
	} else if(code == '720'){
		strName = $('#carName').val();
	} else if(code == '730'){
		strName = $('#equipName').val();
	}
	
  	$.ajax({
		type : 'POST',
		dataType : 'json',
		url : '${root}/asset/modelcheck.html',
		data : {'strName' : strName, 'strBCode' : strBCode},
		success : function(data){
				modelCheckOk(data, strName, strBCode);					
		},
		error : function(e){
			alert('에러발생');			
		}
	});	
}	

function modelCheckOk(data, strName, strBCode){
	var output = '';
	
	if(data.modelCnt == 0){		
		output = '사용가능한 모델명 입니다.';
	}else{
		output = '<font color="red">이미 등록된 모델명 입니다.</font>';	
	}

	if(strBCode == '740'){
		$('#commodel').css('display', '');
		$('#commodel').empty();
		$('#commodel').append(output);
	}else if(strBCode == '750'){
		$('#bookmodel').css('display', '');
		$('#bookmodel').empty();
		$('#bookmodel').append(output);
	}else if(strBCode == '710'){
		$('#roommodel').css('display', '');
		$('#roommodel').empty();
		$('#roommodel').append(output);
	}else if(strBCode == '720'){
		$('#carmodel').css('display', '');
		$('#carmodel').empty();
		$('#carmodel').append(output);
	}else if(strBCode == '730'){
		$('#equipmodel').css('display', '');
		$('#equipmodel').empty();
		$('#equipmodel').append(output);
	}
}

</script>
<!-- start: content -->
<div id="content">
	<div class="panel">
		<div class="panel-body">
			<div class="col-md-6 col-sm-12">
				<h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
				<p class="animated fadeInDown">
					<span class="fa  fa-map-marker"></span> 자산관리>>자산등록
				</p>


			</div>
			<div class="col-md-6 col-sm-12">
				<div class="col-md-6 col-sm-6 text-right"
					style="padding-left: 10px;">
					<h5 id="addr" style="color: #DDDDDE;">
						<span class="fa  fa-map-marker"></span>
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
			<span class="icon-diamond icons"></span> 자산등록
		</h4>
	</div>

	<!-- start : 메뉴 디자인 구성하는 위치 -->
	<div class="col-md-12">
		<div class="col-md-12">
			<div class="panel-group" id="accordion" role="tablist"
				aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								<h4>컴퓨터 등록</h4>
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							<form name="addBook" action="${root}/asset/addasset.html" method="POST">
							<table style="margin-left: 30px; width: 95%;">
								<tbody>
									<tr>
										<td align="right" style="width: 300px;">분류</td>
										<td>
											<input type="text" class="form-control" name="strBName" value="컴퓨터" style="width: 300px;" readonly="readonly">
											<input type="hidden" name="strBCode" value="740">																						
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">모델명</td>
										<td>
											<input type="text" class="form-control" id="comName" name="strName" value="" style="width: 300px;" onkeyup="javascript:modelCheck('740');">
											<div id="commodel" style="display: none;"></div>												
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">주변기기(모니터)</td>
										<td>
											<input type="text" class="form-control" name="strValue1" value="" style="width: 300px;">												
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">주변기기(키보드)</td>
										<td>
											<input type="text" class="form-control" name="strValue2" value="" style="width: 300px;">
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">구입금액</td>
										<td>
											<input type="text" class="form-control" name="strValue3" value="" style="width: 300px;">
											<input type="hidden" name="strValue4" value="comCode">
											<input type="hidden" name="intUse_Flag" value="1">
										</td>
									</tr>
								</tbody>
							</table>							
							<div class="col-md-12" style="margin-top: 10px;">
								<span><input type="submit" class="btn btn-3d" value="등록"/></span>
							</div>
							</form>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">
								<h4>도서 등록</h4>
							</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
							<form name="addBook" action="${root}/asset/addasset.html" method="POST">
							<table style="margin-left: 30px; width: 95%;">
								<tbody>
									<tr>
										<td align="right" style="width: 300px;">분류</td>
										<td>
											<input type="text" class="form-control" name="strBName" value="도서" style="width: 300px;" readonly="readonly">
											<input type="hidden" name="strBCode" value="750">	
											
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">도서명</td>
										<td>
											<input type="text" class="form-control" id="bookName" name="strName" value="" style="width: 300px;" onkeyup="javascript:modelCheck('750');">											
											<div id="bookmodel" style="display: none;"></div>
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">저자</td>
										<td><input type="text" class="form-control" name="strValue1" value="" style="width: 300px;"></td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">출판사</td>
										<td><input type="text" class="form-control" name="strValue2" value="" style="width: 300px;"></td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">구입금액</td>
										<td>
											<input type="text" class="form-control" name="strValue3" value="" style="width: 300px;">
											<input type="hidden" name="strValue4" value="bookCode">
											<input type="hidden" name="intUse_Flag" value="1">
										</td>
									</tr>
								</tbody>
							</table>
							<div class="col-md-12" style="margin-top: 10px;">
								<span><input type="submit" class="btn btn-3d" value="등록" /></span>
							</div>
							</form>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree">
								<h4>회의실 등록</h4>
							</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body">
							<form name="addRoom" action="${root}/asset/addasset.html" method="POST">
							<table style="margin-left: 30px; width: 95%;">
								<tbody>
									<tr>
										<td align="right" style="width: 300px;">분류</td>
										<td>
											<input type="text" class="form-control" name="strBName" value="회의실" style="width: 300px;" readonly="readonly">
											<input type="hidden" name="strBCode" value="710">	
											
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">회의실명</td>
										<td>
											<input type="text" class="form-control" id="roomName" name="strName" value="" style="width: 300px;" onkeyup="javascript:modelCheck('710');">
											<input type="hidden" name="intUse_Flag" value="1">
											<input type="hidden" name="strValue1" value="">
											<input type="hidden" name="strValue2" value="">
											<input type="hidden" name="strValue3" value="">
											<input type="hidden" name="strValue4" value="roomCode">											
											<div id="roommodel" style="display: none"></div>
										</td>
									</tr>
								</tbody>
							</table>
							<div class="col-md-12" style="margin-top: 10px;">
								<span><input type="submit" class="btn btn-3d" value="등록" /></span>
							</div>
							</form>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour">
								<h4>법인차량 등록</h4>
							</a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFour">
						<div class="panel-body">
							<form name="addCar" action="${root}/asset/addasset.html" method="POST">
							<table style="margin-left: 30px; width: 95%;">
								<tbody>
									<tr>
										<td align="right" style="width: 300px;">분류</td>
										<td>
											<input type="text" class="form-control" name="strBName" value="법인차량" style="width: 300px;" readonly="readonly">
											<input type="hidden" name="strBCode" value="720">	
											
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">모델명</td>
										<td>
											<input type="text" class="form-control" id="carName" name="strName" value="" style="width: 300px;" onkeyup="javascript:modelCheck('720')">
											<div id="carmodel" style="display: none;"></div>
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">차량번호</td>
										<td>
											<input type="text" class="form-control" name="strValue1" value="" style="width: 300px;">
											<input type="hidden" name="strValue2" value="">
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">구입금액</td>
										<td>
											<input type="text" class="form-control" name="strValue3" value="" style="width: 300px;">
											<input type="hidden" name="strValue4" value="carCode">
											<input type="hidden" name="intUse_Flag" value="1">
										</td>
									</tr>
								</tbody>
							</table>
							<div class="col-md-12" style="margin-top: 10px;">
								<span><input type="submit" class="btn btn-3d" value="등록" /></span>
							</div>
							</form>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFive">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFive"
								aria-expanded="false" aria-controls="collapseFive">
								<h4>공용장비 등록</h4>
							</a>
						</h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFive">
						<div class="panel-body">
							<form name="addEquip" action="${root}/asset/addasset.html" method="POST">
							<table style="margin-left: 30px; width: 95%;">
								<tbody>
									<tr>
										<td align="right" style="width: 300px;">분류</td>
										<td>
											<input type="text" class="form-control" name="strBName" value="공용장비" style="width: 300px;" readonly="readonly">
											<input type="hidden" name="strBCode" value="730">	
											
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">장비명</td>
										<td>
											<input type="text" class="form-control" id="equipName" name="strName" value="" style="width: 300px;" onkeyup="javascirpt:modelCheck('730')">
											<div id="equipmodel" style="display: none;"></div>
										</td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">모델명</td>
										<td><input type="text" class="form-control" name="strValue1" value="" style="width: 300px;"></td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">제조사</td>
										<td><input type="text" class="form-control" name="strValue2" value="" style="width: 300px;"></td>
									</tr>
									<tr>
										<td align="right" style="width: 300px;">구입금액</td>
										<td>
											<input type="text" class="form-control" name="strValue3" value="" style="width: 300px;">
											<input type="hidden" name="strValue4" value="equipCode">
											<input type="hidden" name="intUse_Flag" value="1">
										</td>
									</tr>
								</tbody>
							</table>
							<div class="col-md-12" style="margin-top: 10px;">
								<span><input type="submit" class="btn btn-3d" value="등록" /></span>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end : 메뉴 디자인 구성하는 위치 -->

</div>

<!-- end: content -->

</html>