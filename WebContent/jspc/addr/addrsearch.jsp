<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우편번호 검색</title>

<link rel="stylesheet" href="https://www.11st.co.kr/css/common/pop_template.css" type="text/css">
<link rel="stylesheet" href="https://www.11st.co.kr/css/popup/pop_zip.css" type="text/css"><!-- 우편번호 찾기 전용 신규 CSS -->
<script type="text/javascript" src="https://www.11st.co.kr/js/lib/jquery/jquery-1.5.min.js"></script>
<style type="text/css">
	.btn_st5 {border:1px solid #ee0c0c;}
	.btn_st5 input.small, .btn_st5 a.small, .btn_st5 button.small {background:url('/img/foreign/english/common/bg_btn.gif') repeat-x 0 -300px;color:#ec0000;}
</style>
</head>
<body>
<div id="popLayWrap" class="addr_law_wrap"><!-- 2013-07-08 CSS   추가 -->
	<div id="popHead">
		<div class="popHeadEnd">
			<h1>주소 찾기(Find address)</h1>
		</div>
	</div>
	<div class="popbody_con">
	<!-- 팝업 내용입력부분 ============================= -->

		<div class="menu_list">
			<ul>
				<!-- //새우편번호 지번/도로명 소스 위치 및 이름변경  변경 -->
				<li>
					<a class="selected" href="#tabView1" target="_blank" id="tab1" onclick="tabchange(1);return false;" style="display:none">도로명 주소</a>
				</li>
				<li>
					<a href="#tabView2" target="_blank" id="tab2" onclick="tabchange(2);return false;" style="display:none">지번 주소</a><!-- 선택되면 addclass "selected" -->
				</li>
				<li class="last">
					<a href="#tabView3" target="_blank" id="tab3" onclick="tabchange(3);return false;" style="display:none">English</a>
				</li>
			</ul>
		</div>
		<div class="cont_wrap">
			<!-- 도로명 주소 -->
			<div class="road_addr" id="tabView1"> <!-- //새우편번호 id 변경 (tabView2->tabView1) -->
				<h2>도로명 주소</h2>

				<div class="row_box">
					<div class="st_srp_wrap block1"><!-- 2013-09-16 : id="tab_View1" 삭제 -->
						<!-- 2013-09-16 소스 전체 수정 -->
						<div class="guid_info">
							<h3>주소명 검색방법</h3>
							<p>
								1. 동 + 건물명 입력 : 예) '<em>충무로1가</em>(동명) <em>중앙우체국</em>(건물명)'<br>
								2. 도로명 + 건물번호 입력 : 예) '<em>소공로</em>(도로명) <em>70</em>(건물번호)'<br>
								3. 건물명 입력 : 예) '<em>중앙우체국</em>(건물명)'
							</p>
						</div>
						<div class="addr_noti_info"><strong>시/도 및 시/군/구 선택 후 주소명을 입력해주세요.</strong></div>
						<div class="addr_srpwrap">
							<div>
								<span class="option1">
									<h4>시/도</h4>
									<label for="st_srp1">시/도 선택</label>
									<select class="st_select" name="sido" id="select_0"><option>선택</option></select>
								</span>
								<span class="option2">
									<h4>시/군/구</h4>
									<label for="st_srp2">시/군/구 선택</label>
									<select class="st_select" name="sigungu" id="select_1" disabled><option>선택</option></select>
								</span>
								<span class="option3">
									<h4>주소명</h4>
									<label for="st_srp3">입력</label><input type="text" id="searchData" class="text ex" value="주소명을 입력해주세요" onKeyPress="javascript:if(event.keyCode==13) { searchRoad(); return false;}" onClick="javascript:checkRoadData(); return false;" maxlength="20">
									<input type="button" value="검색" class="btn_search" onclick="checkRoadData(); searchRoad();">
								</span>
							</div>
						</div>
						<!-- // 2013-09-16 소스 전체 수정 -->
						<!-- 전체 카운트 -->
						<div class="no_result">
							<span id="roadMessage" style="text-align:left; padding-left:0px;"></span>
						</div>
						<!-- 주소검색결과table -->
						<div class="aaddr_tbl scroll" id="roadTable" style="display:none">
							<table summary="우편번호와 주소를 선택해주세요">
								<caption>우편번호와 주소</caption>
								<colgroup>
									<col class="colwid1">
									<col class="colwid2">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first">우편번호</th>
										<th scope="col">주소</th>
									</tr>
								</thead>
								<tbody id="roadList">
								</tbody>
							</table>
						</div>
						<!-- // 주소검색결과table -->
					</div>
					<!-- // 동(읍/면/리/가)+지번 -->
				</div>
			</div>
			<!-- // 도로명 주소 -->

			<!-- 지번 주소 -->
			<div class="st_addr" id="tabView2"> <!-- //새우편번호 id 변경 (tabView1->tabView2) -->
				<h2>지번 주소</h2>
				<div class="row_box">
					<div class="guid_info">
						<p>주소의 동(읍/리/면) 또는 마지막 부분을 입력하신 후 검색을 누르세요</p>
					</div>
					<div class="addr_srpwrap">
						<div class="first">
							<h4>지역명</h4>
							<!-- <input type="text"> 일 경우, 입력 전과 입력 후의 컬러값이 다릅니다.
									입력 전 예시 문구는 class="text ex", 입력되고 나면 remove class 'ex' -->
							<label for="st_srp0">입력</label><input type="text" id="region" class="text ex" value="주소명을 입력해주세요" onKeyPress="javascript:if(event.keyCode==13) { searchZipCode(); return false;}" onClick="javascript:checkZipcodeData(); return false;" maxlength="20">

							<input type="button" value="검색" class="btn_search" onclick="checkZipcodeData(); searchZipCode();">
						</div>
					</div>
					<!-- 전체 카운트 -->
					<div class="no_result">
						<span id="zipcodeMessage" style="text-align:left; padding-left:0px;"></span>
					</div>
					<!-- 주소검색결과table -->
					<div class="aaddr_tbl scroll" id="zipCodeTable" style="display:none">
						<table summary="우편번호와 주소를 선택해주세요">
							<caption>우편번호와 주소</caption>
							<colgroup>
								<col class="colwid1">
								<col class="colwid2">
							</colgroup>
							<thead>
							<tr>
								<th scope="col" class="first">우편번호</th>
								<th scope="col">주소</th>
							</tr>
							</thead>
							<tbody id="zipCodeList">
							</tbody>
						</table>
					</div>
					<!-- // 주소검색결과table -->
				</div>
			</div>
			<!-- // 지번 주소 -->

			<!-- 영문 주소 -->
			<form name="engAddrForm" method="post">

			<input type="hidden" name="method">
			<input type="hidden" name="addr" value="">
			<input type="hidden" name="mailNO" value=""><!-- 2012-12-04 영문가입, 수정에서 사용 위해   mailNO 추가 -->
			<input type="hidden" name="mailNOSeq" value="">
			<input type="hidden" name="jejuYN" value="">
			<input type="hidden" name="islandYN" value="">
			<input type="hidden" name="dong" value="">
			<input type="hidden" name="buildMngNO" value="">
			<input type="hidden" name="areaNo" value="">    <!-- //새우편번호 areaNo 추가 -->
			<div class="eng_addr" id="tabView3">
				<h2>English</h2>
				<div class="row_box">
					<ul class="sec_list">
						<!-- //새우편번호 영문11번가 도로명, 지번 위치 변경 -->
						<li class="selected"><!-- 선택되면 addclass "selected" -->
							<input type="radio" id="roadAddr" name="engAddr" value="road" checked><label for="eng_addr2">Street Name</label>
						</li>
						<li class="last">
							<input type="radio" id="zipCodeAddr" name="engAddr" value="zipCode"><label for="eng_addr1">Zip Code</label>
						</li>
					</ul>
				</div>
				<div class="row_box">
					<div class="zip_search_option">
						<p>
							<em>Select the following items and enter your pick-up address.</em>
						</p>
						<ul class="option">
							<li class="required_row">
								<label for="opt_1">
									<span>1</span>
									<select class="required" id="eng_select_0">
										<option>Select Metropolitan</option>
									</select>
								</label>
							</li>
							<li class="normal_row">
								<label for="opt_2">
									<span>2</span>
									<select id="eng_select_1" disabled>
										<option>Select City</option>
									</select>
								</label>

							</li>
							<li>
								<label for="opt_1">
									<span>3</span>
									<!--  //새우편번호 도로명 -->
									<select id="eng_select_2" disabled>
										<option>Select  Street name</option>
									</select>
								</label>

							</li>
							<li>
								<label for="opt_1">
									<span>4</span>
									<!-- //새우편번호 건물번호 -->
									<select id="eng_select_3" disabled>
										<option>Select Build NO</option>
									</select>
								</label>
							</li>
						</ul>
					</div>
					<div class="btn_wrap">
						<a href="#" class="defbtn_sm dtype4" onclick="engSubmit();return false;"><span>Confirm</span></a>
						<a href="#" class="defbtn_sm dtype6" onclick="window.close();return false;"><span>Cancel</span></a>
					</div>
				</div>
			</div>
			<!-- // 영문 주소 -->
		</div>

	<!-- //팝업 내용입력부분 ============================= -->
	</div>
</div>
<script type="text/javascript">
// 탭전환
function tabchange (par){
	for(i=1;i<=3;i++){
		if(par == 1) {
			document.getElementById('tab1').className='selected';
			document.getElementById('tab1').style.display="block";
			document.getElementById('tabView1').style.display="block";
			document.getElementById('tab2').className='';
			document.getElementById('tabView2').style.display="none";
			document.getElementById('tab3').className='';
			document.getElementById('tabView3').style.display="none";
			//새우편번호 지번 도로명 처리 순서 변경 (tabDispTypeZipcode -> tabDispTypeRoad)
			if("Y" == "N") {
				document.getElementById('tab1').style.display="none";
				document.getElementById('tabView1').style.display="none";
			}
			//새우편번호 지번 도로명 처리 순서 변경 (tabDispTypeRoad -> tabDispTypeZipcode)
			if("Y" == "N") {
				document.getElementById('tab2').style.display="none";
				document.getElementById('tabView2').style.display="none";
			}
			if("N" == "N") {
				document.getElementById('tab3').style.display="none";
				document.getElementById('tabView3').style.display="none";
			}
		}
		if(par == 2) {
			document.getElementById('tab2').className='selected';
			document.getElementById('tab2').style.display="block";
			document.getElementById('tabView2').style.display="block";
			document.getElementById('tab1').className='';
			document.getElementById('tabView1').style.display="none";
			document.getElementById('tab3').className='';
			document.getElementById('tabView3').style.display="none";
			//새우편번호 지번 도로명 처리 순서 변경 (tabDispTypeZipcode -> tabDispTypeRoad)
			if("Y" == "N") {
				document.getElementById('tab1').style.display="none";
				document.getElementById('tabView1').style.display="none";
			}
			//새우편번호 지번 도로명 처리 순서 변경 (tabDispTypeRoad -> tabDispTypeZipcode)
			if("Y" == "N") {
				document.getElementById('tab2').style.display="none";
				document.getElementById('tabView2').style.display="none";
			}
			if("N" == "N") {
				document.getElementById('tab3').style.display="none";
				document.getElementById('tabView3').style.display="none";
			}
		}
		if(par == 3) {
			document.getElementById('tab3').className='selected';
			document.getElementById('tab3').style.display="block";
			document.getElementById('tabView3').style.display="block";
			document.getElementById('tab1').className='';
			document.getElementById('tabView1').style.display="none";
			document.getElementById('tab2').className='';
			document.getElementById('tabView2').style.display="none";
			//새우편번호 지번 도로명 처리 순서 변경 (tabDispTypeZipcode -> tabDispTypeRoad)
			if("Y" == "N") {
				document.getElementById('tab1').style.display="none";
				document.getElementById('tabView1').style.display="none";
			}
			//새우편번호 지번 도로명 처리 순서 변경 (tabDispTypeRoad -> tabDispTypeZipcode)
			if("Y" == "N") {
				document.getElementById('tab2').style.display="none";
				document.getElementById('tabView2').style.display="none";
			}
			if("N" == "N") {
				document.getElementById('tab3').style.display="none";
				document.getElementById('tabView3').style.display="none";
			}
		}

	}
}

var pageNum = 1; // 페이지 넘버
var fetchSize = 50; // 가져올 페이지 갯수
var endCheck = "N"; // 스크롤 페이징 마지막인지를 체크하는 변수
var searchEnd = "N"; //스크롤 체크
var oldSearchData = ""; //전검색어
var oldSido = ""; //전에 검색한 시도값
var oldSigungu = ""; //전에 검색한 시군구값
var statePage = "N"; //페이지 상태값
var totalCnt = 0; // 전체카운트
var searchKwdLengthMin = "N";

$(document).ready(function(){
	//페이지 로딩시 기본 탭 설정
	//새우편번호 지번 도로명 처리 순서 변경 (tabDispTypeZipcode -> tabDispTypeRoad)
	if ("Y" == "Y") {
		tabchange(1);
	}
	//새우편번호 지번 도로명 처리 순서 변경 (tabDispTypeRoad -> tabDispTypeZipcode)
	if ("Y" == "Y") {
		tabchange(2);
	}
	if ("N" == "Y") {
		tabchange(3);
	}
	//초기 탭선택(도로명 주소) //새우편번호 zipcode <-> road
	if ("road" == "road") {
		tabchange(1);
	} else if ("road" == "zipcode") {
		tabchange(2);
	} else {
		tabchange(3);
		//새우편번호 select box 초기화
		initAreaRoad(1);
		initAreaRoad(2);
		initAreaRoad(3);
		initForm();
	}
	//도로명
	sidoSigunguUeupmyonDongKoNmInfo(0);
	//영문
	sidoSigunguUeupmyonDongEnNmInfo(0);

	$("#zipCodeTable").scroll(function(){
		if(searchEnd == "N" && endCheck == "N") {
			if  ($("#zipCodeTable")[0].scrollHeight - $("#zipCodeTable").scrollTop() - $("#zipCodeTable").height() == 0){
				pageNum ++;
				statePage = "Y";
				searchZipCode();
			}
		}
	});

	$("#roadTable").scroll(function(){
		if(searchEnd == "N" && endCheck == "N") {
			if  ($("#roadTable")[0].scrollHeight - $("#roadTable").scrollTop() - $("#roadTable").height() == 0){
				pageNum ++;
				statePage = "Y";
				searchRoad();
			}
		}
	});
});

function checkZipcodeData() {
	var searchAddrKwd = $.trim($("#region").val());
	if(searchAddrKwd == "주소명을 입력해주세요") {
		$("#region").val("");
	}
	pageNum = 1;
	statePage = "N";
	endCheck = "N";
	searchEnd = "N";
}

var gubun = "";

// 지번 주소 찾기
function searchZipCode() {

	var region = $.trim($("#region").val());
	//검색어에 특수문자 체크
	if(isTagHTML(region)) {
		$("#zipcodeMessage").html("특수문자는 검색하실 수 없습니다.");
		return false;
	}

	if(oldSearchData != region) {
		pageNum = 1;
		endCheck = "N";
		searchEnd = "N";
	} else if(totalCnt == fetchSize){
		searchEnd = "Y";
		endCheck = "Y";
	}

	if(searchEnd == "Y" && oldSearchData == region) {
		endCheck = "Y";
		searchEnd = "Y"
	} else {
		endCheck = "N";
	}
	if(region == "주소명을 입력해주세요" || region == "") {
		$("#zipcodeMessage").html("주소명을 입력해주세요");
		return;
	}
	lengthChkMin(region, 2, 'zipcode');
	if(searchKwdLengthMin == "Y" ) {
		searchKwdLengthMin = "N";
		return false;
	}
	var searchAddrKwd = escape(encodeURIComponent(region));
	var url = "https://www.11st.co.kr/addr/searchAddr.tmall?debug=Y&method=zipcodeAddrInfo&gubun=" + gubun + "&searchAddrKwd=" + searchAddrKwd + "&pageNum=" + pageNum + "&fetchSize=" + fetchSize;
	if(endCheck == "N") {
		oldSearchData = region;

		$.ajax({
	        url: url,
	        async: false,
	        type: "GET",
			dataType: "jsonp",
			jsonp: "callback",
			scriptCharset : 'UTF-8',
	        success: function(data) {
				var list = data.addrs;
				var totalCount = data.totalCount;
				totalCnt = data.totalCount;
				var content = "";
				if(list != undefined && list.length > 0){
					if(list.length < fetchSize) {
						endCheck = "Y";
					}
					for(var index=0; index < list.length; index++){
						var address = list[index];
						content += "<tr>";
						content += "	<td class='zip'>" +  address.mailNo + "</td>";   //새우편번호 '-' 삭제
						content += "	<td>";
						//새우편번호 param에 addrKor(기존 파리미터), areaNo 추가
						content += "		<a href='#' class='addr' onclick='$.fn_setAddr(\"zipcode\",\"N\",\"" + address.mailNo + "\",\""
								+ address.mailNoSeq + "\",\"" + address.addr + "\",\"\",\"\",\"" + address.jejuYn + "\",\"" + address.islandYn + "\", \"\", \"\");'>";
						content += "			<em>" + address.addr + "</em>";
						content += "		</a>";
						content += "	</td>";
						content += "</tr>";
					}
					if((list.length < fetchSize) && searchEnd == "N") {
						endCheck = "Y"
						searchEnd = "Y";
						if(pageNum != 1) {
							content += "<tr><td class='zip' colspan='2' style='text-align:center'>더이상 검색결과가 없습니다.</td></tr>";
						}
					}
				} else if(pageNum == 1) {
					content += "<tr><td class='zip' colspan='2' style='text-align:center'>검색결과가 없습니다.</td></tr>";
				}
				//전체 검색 카운트
				$("#zipcodeMessage").html("전체 검색 수 : " + totalCount + "건");

				if(pageNum == 1) {
					$("#zipCodeList").html(content);
				} else {
					$("#zipCodeList").append(content);
				}
				$("#zipCodeTable").css("display","block");
				if(pageNum == 1) {
					$("#zipCodeTable").scrollTop(0);
				}
	        },
			error: function(request,status,error) {
				alert("셀렉트박스 에러 : " + error);
			}
	 	});
	}
}

// 도로명 주소 찾기 영역 시작

//도로명 시도, 시군구 SelectBox
function sidoSigunguUeupmyonDongKoNmInfo(tabIndex){

	if(tabIndex == undefined || tabIndex > 1){
		return;
	}

	var url = "";
	var content = "<option>선택</option>";

	var sidoNM = $("#select_0").val();
	if(sidoNM == "선택"){
		sidoNM = "";
	}
	var encodingSidoNM = escape(encodeURIComponent(sidoNM));
	if(tabIndex == 0){
		url = "https://www.11st.co.kr/addr/searchAddr.tmall?method=sidoSigunguUeupmyonDongNmInfo&langType=KO&selectBoxIdx=" + tabIndex;
	}else if(tabIndex == 1){
		url = "https://www.11st.co.kr/addr/searchAddr.tmall?method=sidoSigunguUeupmyonDongNmInfo&langType=KO&selectBoxIdx=" + tabIndex + "&sidoNm=" + encodingSidoNM;
	}
	$.ajax({
        url: url,
        async: false,
        type: "GET",
		dataType: "jsonp",
		jsonp: "callback",
		scriptCharset : 'UTF-8',
        success: function(data) {
			var list = data.sidoSigunguUeupmyondongs;
			var content = "";
			if(list != undefined && list.length > 0){

				for(var index=0; index < list.length; index++){
					var address = list[index];
					if(tabIndex == 1 && address.sidoSigunguUeupmyondongNm == " ") {
						content += "<option value=''>시/군/구 없음</option>";
					} else {
						if(index == 0) {
							content += "<option value=''>선택</option>";
						}
						content += "<option value='"+ address.sidoSigunguUeupmyondongNm +"'>" + address.sidoSigunguUeupmyondongNm + "</option>";
					}
				}
			} else {
				if(tabIndex == 1) {
					content += "<option value=''>시/군/구 없음</option>";
				} else {
					content += "<option value=''>선택</option>";
				}
			}
			$("#select_" + tabIndex).parents("li").css("display","block");
			$("#select_" + tabIndex).html(content);
			$("#select_" + tabIndex).attr("disabled",false);
        },
		error: function(request,status,error) {
			alert("sidoSigunguUeupmyonDongKoNmInfo 셀렉트박스 에러 : " + error);
		}
 	});
}

$("#select_0").bind({
	change : function(event){
		if($("#select_0").val() !=  ""){
			sidoSigunguUeupmyonDongKoNmInfo(1);
		} else {
			roadSelectBox(1);
		}
	}
});

function roadSelectBox(tabIndex){
	var content = "<option selected>선택</option>";

	if($.trim($("#select_" + tabIndex).html()) != content){
		$("#select_" + tabIndex).html(content);
	}
	$("#select_" + tabIndex).attr("disabled",true);
	$("#select_" + tabIndex).parents("li").css("display","block");
}

function checkRoadData() {
	var searchAddrKwd = $.trim($("#searchData").val());
	if(searchAddrKwd == "주소명을 입력해주세요") {
		$("#searchData").val("");
	}
	pageNum = 1;
	statePage = "N";
	endCheck = "N";
	searchEnd = "N";
}

// 도로명 주소 메인 검색
function searchRoad() {

	var searchAddrKwd = $.trim($("#searchData").val());
	var searchSido = $("#select_0").val();
	var searchSigungu = $("#select_1").val();

	//검색어에 특수문자 체크
	if(isTagHTML(searchAddrKwd)) {
		$("#roadMessage").html("특수문자는 검색하실 수 없습니다.");
		return false;
	}
	if( ((oldSearchData != searchAddrKwd) || (oldSido != searchSido) || (oldSigungu != searchSigungu))) {
		pageNum = 1;
		endCheck = "N";
		searchEnd = "N";
	} else if((oldSearchData == searchAddrKwd && oldSido == searchSido && oldSigungu == searchSigungu) && statePage == "N") {
		pageNum = 1;
		endCheck = "N";
		searchEnd = "N";
	} else if(totalCnt == fetchSize){
		searchEnd = "Y";
		endCheck = "Y";
	}

	if(searchEnd == "Y" && oldSearchData == searchAddrKwd) {
		endCheck = "Y";
		searchEnd = "Y"
	} else {
		endCheck = "N";
	}

	var sido = $("#select_0 option:selected").text();
	var sigunguNm = $("#select_1 option:selected").text();
	var sigungu = $("#select_1 option:selected").val();
	var encodingSearchAddrKwd = escape(encodeURIComponent(searchAddrKwd));
	var encodingSido = escape(encodeURIComponent(sido));
	var encodingSigungu = escape(encodeURIComponent(sigungu));

	if(sido == "선택") {
		$("#roadMessage").html("시/도를 선택해주세요");
		$("#select_0").focus();
		return false;
	}
	else if(sigunguNm == "선택") {
		$("#roadMessage").html("시/군/구를 선택해주세요");
		$("#select_1").focus();
		return false;
	}
	else if(searchAddrKwd == "주소명을 입력해주세요" || searchAddrKwd == "") {
		$("#roadMessage").html("주소명을 입력해주세요");
		return false;
	}
	lengthChkMin(searchAddrKwd, 2, 'road');
	if(searchKwdLengthMin == "Y" ) {
		searchKwdLengthMin = "N";
		return false;
	}
	var url = "https://www.11st.co.kr/addr/searchAddr.tmall?langType=KO&method=roadAddrInfo&gubun=" + gubun + "&searchAddrKwd=" + encodingSearchAddrKwd + "&sido=" + encodingSido + "&sigungu=" + encodingSigungu + "&pageNum=" + pageNum + "&fetchSize=" + fetchSize;
	if(endCheck == "N") {
		oldSearchData = searchAddrKwd;
		oldSido 		= searchSido;
		oldSigungu 		= searchSigungu;

		$.ajax({
	        url: url,
	        type: "GET",
	        async: false,
			dataType: "jsonp",
			jsonp: "callback",
			scriptCharset : 'UTF-8',
	        success: function(data) {
				var list = data.addrs;
				var totalCount = data.totalCount;
				totalCnt = data.totalCount;
				var content = "";
				if(list != undefined && list.length > 0){
					for(var index=0; index < list.length; index++){
						var address = list[index];
						// 새우편번호 areaNo 적용
						var areaNo = valChk(address.areaNo);
						var mailNo = valChk(address.mailNo);
						var viewMailNo = changeMailNo(mailNo, areaNo);  //새우편번호 택배사 우편번호 대응(8월1일까지)

						content += "<tr>";
						content += "	<td class='zip'>" + viewMailNo + "</td>";	//새우편번호 택배사 우편번호 적용 시기 문제로 도로명일때도 mailNo를 사용(없을 경우 지역번호)
						content += "	<td>";
						//새우편번호 param에 addrKor(기존 파리미터), areaNo 추가
						content += "		<a href=\"#\" class=\"addr\" onclick=\"$.fn_setAddr('road','N','" + mailNo + "','"
								+ address.mailNoSeq + "','','" + address.buildMngNo + "','" + address.sidoNm +" "+ address.sigunguNm +" "+ escape(address.roadAddr) + "','"
								+ address.jejuYn + "','" + address.islandYn + "', '', '" + areaNo + "');\">";
						content += "			<em>"+ address.sidoNm +" "+ address.sigunguNm +" "+ address.roadAddr + "</em>";
						content += "		</a>";
						content += "		<span class='addr'>"+ address.mailAddr +"</span>";
						content += "	</td>";
						content += "</tr>";
					}
					if((list.length < fetchSize) && searchEnd == "N") {
						endCheck = "Y"
						searchEnd = "Y";
						if(pageNum != 1) {
							content += "<tr><td class='zip' colspan='2' style='text-align:center'>더이상 검색결과가 없습니다</td></tr>";
						}
					}
				} else if(pageNum == 1) {
					content += "<tr><td class='zip' colspan='2' style='text-align:center'>검색결과가 없습니다</td></tr>";
				}
				//전체 검색 카운트
				$("#roadMessage").html("전체 검색 수 : " + totalCount + "건");

				if(pageNum == 1) {
					$("#roadList").html(content);
				} else {
					$("#roadList").append(content);
				}
				$("#roadTable").css("display","block");
				if(pageNum == 1) {
					$("#roadTable").scrollTop(0);
				}

	        },
			error: function(request,status,error) {
				alert("도로명 주소 검색 에러 : " + error);
			}
	 	});
	}
}

// 영문 주소 찾기
var zipCodeTextArr = new Array("-- Select Metropolitan --","-- Select City --","-- Select Dong --","-- Select Details --");
var roadTextArr = new Array("-- Select Metropolitan --","-- Select City --","-- Select Street name --","-- Select Build NO --");

$("#zipCodeAddr").bind({
	click : function(event){
		if($("#eng_select_0").val() !=  zipCodeTextArr[0]){
			sidoSigunguUeupmyonDongEnNmInfo(0);
		}
		initAreaZipCode(1);
		initAreaZipCode(2);
		initAreaZipCode(3);
		initForm();
	}
});

$("#roadAddr").bind({
	click : function(event){
		if($("#eng_select_0").val() !=  roadTextArr[0]){		//새우편번호 도로명 안내 텍스트로 변경
			sidoSigunguUeupmyonDongEnNmInfo(0);
		}
		initAreaRoad(1);
		initAreaRoad(2);
		initAreaRoad(3);
		initForm();
	}
});
$("#eng_select_0").bind({
	change : function(event){
		if($("#eng_select_0").val() !=  zipCodeTextArr[0]){
			sidoSigunguUeupmyonDongEnNmInfo(1);
		}
		var searchAddrGubun = $('input[name="engAddr"]:checked').val();
		if(searchAddrGubun == "zipCode"){
			initAreaZipCode(1);
			initAreaZipCode(2);
			initAreaZipCode(3);
		} else{
			initAreaRoad(1);
			initAreaRoad(2);
			initAreaRoad(3);
		}
		initForm();
	}
});

$("#eng_select_1").bind({
	change : function(event){

		var searchAddrGubun = $('input[name="engAddr"]:checked').val();
		if(searchAddrGubun == "zipCode"){
			if($("#eng_select_1").val() !=  roadTextArr[1]){		//새우편번호 도로명 안내 텍스트로 변경
				sidoSigunguUeupmyonDongEnNmInfo(2);
			}
			initAreaZipCode(2);
			initAreaZipCode(3);
		} else{
			if($("#eng_select_1").val() !=  zipCodeTextArr[1]){
				roadNmInfo(2);
			}
			initAreaRoad(3);
		}
		initForm();
	}
});

$("#eng_select_2").bind({
	change : function(event){
		var searchAddrGubun = $('input[name="engAddr"]:checked').val();
		if(searchAddrGubun == "zipCode"){
			if($("#eng_select_2").val() !=  zipCodeTextArr[2]){
				zipCodeDetailAddress(3);
			}
			initAreaZipCode(3);
		} else{
			roadNmInfo(3);
		}
		initForm();
	}
});

$("#eng_select_3").bind({
	change : function(event){
		var index = jQuery("#eng_select_3 option").index($("#eng_select_3 option:selected")) - 1;
		setFormData(index);
	}
});

function sidoSigunguUeupmyonDongEnNmInfo(tabIndex){
	if(tabIndex == undefined){
		return;
	}

	var url = "";
	var content = "<option>" + zipCodeTextArr[tabIndex] + "</option>";

	var sidoNMEng = $("#eng_select_0").val();
	if(sidoNMEng == zipCodeTextArr[0]){
		sidoNMEng = "";
	}

	var sigunguNMEng = $("#eng_select_1").val();
	if(sigunguNMEng == zipCodeTextArr[1]){
		sigunguNMEng = "";
	}

	if(tabIndex == 0){
		url = "https://www.11st.co.kr/addr/searchAddr.tmall?method=sidoSigunguUeupmyonDongNmInfo&langType=EN&selectBoxIdx=" + tabIndex;
	}else if(tabIndex == 1){
		url = "https://www.11st.co.kr/addr/searchAddr.tmall?method=sidoSigunguUeupmyonDongNmInfo&langType=EN&selectBoxIdx=" + tabIndex + "&sidoNm=" + sidoNMEng;
	}else if(tabIndex == 2){
		url = "https://www.11st.co.kr/addr/searchAddr.tmall?method=sidoSigunguUeupmyonDongNmInfo&langType=EN&selectBoxIdx=" + tabIndex + "&sidoNm=" + sidoNMEng + "&sigunguNm=" + sigunguNMEng;
	}
	$.ajax({
        url: url,
        type: "GET",
		dataType: "jsonp",
		jsonp: "callback",
		scriptCharset : 'UTF-8',
        success: function(data) {
			var list = data.sidoSigunguUeupmyondongs;

			if(list != undefined && list.length > 0){
				for(var index=0; index < list.length; index++){
					var address = list[index];
					content += "<option value='"+ address.sidoSigunguUeupmyondongNm +"'>" + address.sidoSigunguUeupmyondongNm + "</option>";
				}
				$("#eng_select_" + tabIndex).parents("li").css("display","block");
				$("#eng_select_" + tabIndex).html(content);
				$("#eng_select_" + tabIndex).attr("disabled",false);
				$("#eng_select_" + tabIndex).removeClass("required");
				$("#eng_select_" + tabIndex).addClass("required");
			}else{
				$("#eng_select_" + tabIndex).parents("li").css("display","none");
				var searchAddrGubun = $('input[name="engAddr"]:checked').val();
				if(searchAddrGubun == "zipCode"){

					sidoSigunguUeupmyonDongEnNmInfo(tabIndex+1);
					$("#eng_select_" + tabIndex).attr("disabled",true);
				} else{
					roadNmInfo(tabIndex+1);
				}

			}
        },
		error: function(request,status,error) {
			alert("셀렉트박스 에러 : " + error);
		}
 	});
}

var resultData = "";
function zipCodeDetailAddress(tabIndex){

	var sidoNMEng = $("#eng_select_0").val();
	if(sidoNMEng == zipCodeTextArr[0]){
		sidoNMEng = "";
	}
	var sigunguNMEng = "";
	if(sidoNMEng == "Sejong") {
		sigunguNMEng = "";
		if(sigunguNMEng == zipCodeTextArr[1]){
			sigunguNMEng = "";
		}
	} else {
		sigunguNMEng = $("#eng_select_1").val();
	if(sigunguNMEng == zipCodeTextArr[1]){
		sigunguNMEng = "";
	}
	}
	var ueupmyonNMEng = $("#eng_select_2").val();
	if(ueupmyonNMEng == zipCodeTextArr[2]){
		ueupmyonNMEng = "";
	}

	var url = "https://www.11st.co.kr/addr/searchAddr.tmall?method=zipCodeDetailAddress&sidoNm=" + sidoNMEng + "&sigunguNm=" + sigunguNMEng + "&ueupmyondongNm=" + ueupmyonNMEng;

	$.ajax({
        url: url,
        type: "GET",
		dataType: "jsonp",
		jsonp: "callback",
		scriptCharset : 'UTF-8',
        success: function(data) {
		var list = data.detailAddress;
		var content = "<option>" + zipCodeTextArr[3] + "</option>";
		resultData = list;
		if(list != undefined && list.length > 0){

			for(var index=0; index < list.length; index++){
				var address = list[index];
				content += "<option value='"+ address +"'>" + address.displayAddr + "</option>";

			}
		}

		$("#eng_select_" + tabIndex).html(content);
		$("#eng_select_" + tabIndex).attr("disabled",false);
		$("#eng_select_" + tabIndex).removeClass("required");
		$("#eng_select_" + tabIndex).addClass("required");
        },
		error: function(request,status,error) {
			alert("영문주소 셀렉트박스 에러 : " + error);
		}
 	});
}

function roadNmInfo(tabIndex){
	if(tabIndex == undefined){
		return;
	}

	var url = "";
	var content = "<option>" + roadTextArr[tabIndex] + "</option>";

	var sidoNMEng = $("#eng_select_0").val();
	if(sidoNMEng == roadTextArr[0]){
		sidoNMEng = "";
	}
	var sigunguNMEng = "";
	if(sidoNMEng == "Sejong") {
		sigunguNMEng = "";
		if(sigunguNMEng == roadTextArr[1]){
			sigunguNMEng = "";
		}
	} else {
		sigunguNMEng = $("#eng_select_1").val();
	if(sigunguNMEng == roadTextArr[1]){
		sigunguNMEng = "";
	}
	}

	var roadNMEng = $("#eng_select_2").val();
	if(roadNMEng == roadTextArr[2]){
		roadNMEng = "";
	}

	if(tabIndex == 2){
		url = "https://www.11st.co.kr/addr/searchAddr.tmall?method=roadNmInfo&selectBoxIdx=" + tabIndex + "&sidoNm=" + sidoNMEng + "&sigunguNm=" + sigunguNMEng;

		$.ajax({
	        url: url,
	        type: "GET",
			dataType: "jsonp",
			jsonp: "callback",
			scriptCharset : 'UTF-8',
	        success: function(data) {
				var list = data.roads;
				if(list != undefined && list.length > 0){

					for(var index=0; index < list.length; index++){
						var address = list[index];
						content += "<option value='"+ address.roadNm +"'>" + address.roadNm + "</option>";
					}

					$("#eng_select_" + tabIndex).parents("li").css("display","block");
					$("#eng_select_" + tabIndex).html(content);
					$("#eng_select_" + tabIndex).attr("disabled",false);
					$("#eng_select_" + tabIndex).removeClass("required");
					$("#eng_select_" + tabIndex).addClass("required");
				}
	        },
			error: function(request,status,error) {
				alert("도로명 셀렉트박스 에러 : " + error);
			}
	 	});
	}else if(tabIndex == 3){
		url = "https://www.11st.co.kr/addr/searchAddr.tmall?method=buildNoInfo&selectBoxIdx=" + tabIndex + "&sidoNm=" + sidoNMEng + "&sigunguNm=" + sigunguNMEng + "&roadNm=" + roadNMEng;
		$.ajax({
	        url: url,
	        type: "GET",
			dataType: "jsonp",
			jsonp: "callback",
			scriptCharset : 'UTF-8',
	        success: function(data) {
				var list = data.builds;
				resultData = list;
				if(list != undefined && list.length > 0){

					for(var index=0; index < list.length; index++){
						var address = list[index];
						if(address.buildSubNO == "0") {
							content += "<option value='"+ address.buildMainNO +"'>" + address.buildMainNO + "</option>";
						} else {
							content += "<option value='"+ address.buildMainNO +"-"+ address.buildSubNO +"'>" + address.buildMainNO + "-" + address.buildSubNO + "</option>";
						}
					}

					$("#eng_select_" + tabIndex).parents("li").css("display","block");
					$("#eng_select_" + tabIndex).html(content);
					$("#eng_select_" + tabIndex).attr("disabled",false);
					$("#eng_select_" + tabIndex).removeClass("required");
					$("#eng_select_" + tabIndex).addClass("required");
				}
	        },
			error: function(request,status,error) {
				alert("도로명 셀렉트박스 에러 : " + error);
			}
	 	});
	}
}

//fnCallback 호출
/*
roadZipType 도로명/지번 구분값
engTypeYn 영문 구분여부
mailNo 지번 우편번호 mailNo
mailNoSeq 지번 우편번호 Seq
zipAddrNm 지번 주소명
buildMngNo 도로명 건물관리번호
roadAddrNm 도로 주소명
sparam1 예비파라미터
*/
//새우편번호 파라미터 areaNo 추가
$.fn_setAddr = function(roadZipType, engTypeYn, mailNo, mailNoSeq, zipAddrNm, buildMngNo, roadAddrNm, jejuYn, islandYn, addrKor, areaNo) {

	var fnCallback = "fnCallback";
	var sparam = "dlv";
	var param = "";

	//새우편번호 파라미터 areaNo 추가
	param = "\""+roadZipType+"\",\""+engTypeYn+"\",\""+mailNo+"\",\""+mailNoSeq+"\",\""+zipAddrNm+"\",\""+buildMngNo+"\",\""+unescape(roadAddrNm)
			+"\",\""+sparam.replace(/\"/, "'").replace(/\"/, "'")+"\",\""+jejuYn+"\",\""+islandYn+"\",\""+addrKor+"\", \"" + areaNo + "\"";
	
 	$(opener.location).attr("href", "javascript:"+fnCallback+"("+param+");");
 	
	self.close();

};

function setAddr(mailNO1, mailNO2, addr, mailNO, mailNOSeq) {

	var formObj = opener.document.form1;

	
	formObj.mailNO1.value = mailNO1;
	formObj.mailNO2.value = mailNO2;
	formObj.baseAddr.value = addr;
	formObj.mailNO.value = mailNO;
	formObj.mailNOSeq.value = mailNOSeq;
	

	self.close();
}

function setAddrEng(mailNO1, mailNO2, addr, detailAddr, mailNO, mailNOSeq) {

	var formObj = opener.document.form1;

	
	formObj.mailNO1.value = mailNO1;
	formObj.mailNO2.value = mailNO2;
	formObj.baseAddr.value = addr;
	formObj.dtlsAddr.value = detailAddr;
	formObj.mailNO.value = mailNO;
	formObj.mailNOSeq.value = mailNOSeq;
	

	self.close();
}

function initAreaZipCode(tabIndex){
	var content = "<OPTION selected>" + zipCodeTextArr[tabIndex] + "</OPTION>";

	if($.trim($("#eng_select_" + tabIndex).html()) != content){
		$("#eng_select_" + tabIndex).html(content);
	}
	$("#eng_select_" + tabIndex).attr("disabled",true);
	$("#eng_select_" + tabIndex).removeClass("required");
	$("#eng_select_" + tabIndex).parents("li").css("display","block");
	$("#eng_select_" + tabIndex).width("458");
}

function initAreaRoad(tabIndex){
	var content = "<OPTION selected>" + roadTextArr[tabIndex] + "</OPTION>";

	if($.trim($("#eng_select_" + tabIndex).html()) != content){
		$("#eng_select_" + tabIndex).html(content);
	}
	$("#eng_select_" + tabIndex).attr("disabled",true);
	$("#eng_select_" + tabIndex).removeClass("required");
	$("#eng_select_" + tabIndex).parents("li").css("display","block");
	$("#eng_select_" + tabIndex).width("458");
}

function initForm(){
	var formObj = document.engAddrForm;
	formObj.addr.value = "";
	formObj.mailNO.value = ""; // 2012-12-04 영문가입, 수정에서 사용 위해   mailNO 추가
	formObj.mailNOSeq.value = "";
	formObj.jejuYN.value = "";
	formObj.islandYN.value = "";
	formObj.dong.value = "";
	formObj.areaNo.value = "";	//새우편번호 지역번호 초기화 추가
}

function setFormData(index){
	var zipCode = resultData[index];
	var formObj = document.engAddrForm;
	if(zipCode != null) {
		//새우편번호 areaNo로 인해 지번, 도로명 분기
		var searchAddrGubun = $('input[name="engAddr"]:checked').val();

		//새우편번호 값 체크
		var mailNo = valChk(zipCode.mailNO);
		var areaNo = valChk(zipCode.areaNo);

		if (searchAddrGubun == "zipCode") {
			formObj.areaNo.value = "";
		} else {
			formObj.areaNo.value = areaNo;
		}

		formObj.mailNO.value = mailNo;
		formObj.addr.value = zipCode.addr;
		formObj.mailNO.value = zipCode.mailNO;
		formObj.mailNOSeq.value = zipCode.mailNOSeq;
		formObj.buildMngNO.value = zipCode.buildMngNO;
		formObj.jejuYN.value = zipCode.jejuYN;
		formObj.islandYN.value = zipCode.islandYN;
		formObj.dong.value = zipCode.dong;
	}
}

function engSubmit(){
	var formObj = document.engAddrForm;
	var searchAddrGubun = $('input[name="engAddr"]:checked').val();
	if($("#eng_select_0").val() == "Sejong") {
		document.getElementById("eng_select_1").value = '';
		//$("#eng_select_1").val('');
		//alert($("#eng_select_1").val());
	}

	if($("#eng_select_0").val() == "-- Select Metropolitan --") {
		alert("Select Metropolitan");
		$("#eng_select_0").focus();
		return false;
	} else if($("#eng_select_1").val() == "-- Select City --") {
		alert("Select City");
		$("#eng_select_1").focus();
		return false;
	} else if($("#eng_select_2").val() == "-- Select Dong --" || $("#eng_select_2").val() == "-- Select Street name --") {
		if (searchAddrGubun == "zipCode") {
			alert("Select  Dong");
			$("#eng_select_2").focus();
			return false;
		} else {
			alert("Select Street name");
			$("#eng_select_2").focus();
			return false;
		}
	} else if($("#eng_select_3").val() == "-- Select Details --" || $("#eng_select_3").val() == "-- Select Build NO --") {
		if (searchAddrGubun == "zipCode") {
			alert("Select Details");
			$("#eng_select_3").focus();
			return false;
		} else {
			alert("Select Build NO");
			$("#eng_select_3").focus();
			return false;
		}
	}

	if (searchAddrGubun == "zipCode") {
		//새우편번호 파라미터 areaNo 추가
		return $.fn_setAddr("zipcode","Y", formObj.mailNO.value, formObj.mailNOSeq.value, formObj.addr.value, "", "", formObj.jejuYN.value, formObj.islandYN.value, formObj.dong.value, formObj.areaNo.value);
	} else {
		var addr = "";
		if( $("#eng_select_1").val() == '' || $("#eng_select_1").val() == undefined || $("#eng_select_1").val() == null || $("#eng_select_1").val() == 'null' ) {
			addr = $("#eng_select_0").val() + " " + $("#eng_select_2").val() + " " + $("#eng_select_3").val();
	} else {
			addr = $("#eng_select_0").val() + " " + $("#eng_select_1").val() + " " + $("#eng_select_2").val() + " " + $("#eng_select_3").val();
		}
		//새우편번호 파라미터 areaNo 추가
		return $.fn_setAddr("road","Y", formObj.mailNO.value, formObj.mailNOSeq.value, "", formObj.buildMngNO.value, addr, formObj.jejuYN.value, formObj.islandYN.value, formObj.dong.value, formObj.areaNo.value);
	}
}
function lengthChk(el, limitLength, gubun) {

    var ls_str     = el.value; // 이벤트가 일어난 컨트롤의 value 값
    var li_str_len = ls_str.length;  // 전체길이

    // 변수초기화
    var li_max      = limitLength; // 제한할 글자수 크기
    var i           = 0;  // for문에 사용
    var li_byte     = 0;  // 한글일경우는 2 그밗에는 1을 더함
    var li_len      = 0;  // substring하기 위해서 사용
    var ls_one_char = ""; // 한글자씩 검사한다
    var ls_str2     = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.

    for(i=0; i< li_str_len; i++) {
        // 한글자추출
        ls_one_char = ls_str.charAt(i);

        if (escape(ls_one_char).length > 4) { // 한글이면 2를 더한다.
            li_byte = li_byte+2;
        } else {
            li_byte++;
        }

        // 전체 크기가 li_max를 넘지않으면
        if(li_byte <= li_max) {
            li_len = i + 1;
        }
    }
	// max byte를 초과하면
    if(li_byte > li_max) {
        if(gubun == "zipcode") {
			$("#zipcodeMessage").html(li_max + " Byte를 초과하여 입력하실 수 없습니다.");
        } else {
			$("#roadMessage").html(li_max + " Byte를 초과하여 입력하실 수 없습니다.");
        }
        ls_str2 = ls_str.substr(0, li_len);
        el.value = ls_str2;
    }
    el.focus();
}

function lengthChkMin(val, limitLength, gubun) {

	var ls_str = val;
	var ls_str_len = ls_str.length;
	var li_min      = limitLength;  // 제한할 글자수 크기
    var i           = 0;  // for문에 사용
    var li_byte     = 0;  // 한글일경우는 2 그밗에는 1을 더함
    var li_len      = 0;  // substring하기 위해서 사용
    var ls_one_char = ""; // 한글자씩 검사한다
    var ls_str2     = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.
	for(i=0; i< ls_str_len; i++) {
        // 한글자추출
        ls_one_char = ls_str.charAt(i);

        if (escape(ls_one_char).length > 4) { // 한글이면 2를 더한다.
            li_byte = li_byte+2;
        } else {
            li_byte++;
        }

        // 전체 크기가 li_min를 넘지않으면
        if(li_byte <= li_min) {
            li_len = i + 1;
        }
    }
	// mai byte보다 작으면
    if(li_byte <= li_min) {
        //alert( "최소" + li_min + " Byte를 초과하여 입력하셔야 합니다.");
        if(gubun == "zipcode") {
			$("#zipcodeMessage").html("최소 두 글자 이상을 입력하셔야 합니다.");
			 searchKwdLengthMin = "Y";
        } else {
			$("#roadMessage").html("최소 두 글자 이상을 입력하셔야 합니다.");
			searchKwdLengthMin = "Y";
        }
        ls_str2 = ls_str.substr(0, li_len);

    }
}

function disableNum(obj, value) {

    var regExp = /[0-9]+/g;

    if(regExp.test(value)) {

        alert("'숫자' 입력 불가능합니다.");

        var returnStr = "";

        for(i = 0; i < value.length; i++) {
            if(!(value.charAt(i) >= '0' && value.charAt(i) <= '9')) {
                returnStr += value.charAt(i);
            }
        }

        obj.value = returnStr;
        obj.focus();
    }
}

function isTagHTML(repStr) {
	var objStrip = new RegExp();
	objStrip =  /[<>\"\'\!\@\#$\%\^\&\*\(\)\)\{\}\[\]\?\=\_\+\;\:\/\`\~]/gi
	repStr2 = repStr.replace(objStrip, "");

	if (repStr != repStr2) return true;
	else return false;
}

function test(val) {
	val = val.replace("/'/","\'");
	return val;
}

//새우편번호 값 체크하여 없을 경우 "" 리턴
function valChk(val) {
	if (val == null || 'null' == val) {
		val = "";
	}
	return val;
}

//새우편번호 택배사 우편번호 처리 (기본은 mailNo를 보여주고 없을 경우 areaNo)
function changeMailNo(mailNo, areaNo) {
	if (valChk(mailNo) == "") {
		return areaNo;
	} else {
		return mailNo;
	}
}
</script>

<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	ga('create', 'UA-68494772-1', 'auto');

</script>

<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P3PMQD" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>
	(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','GA_dataLayer','GTM-P3PMQD');
</script>
<!-- End Google Tag Manager -->

</body>
</html>