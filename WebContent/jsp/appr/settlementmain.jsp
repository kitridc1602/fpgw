
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>

<html lang="en">
<!-- start: content -->
<div id="content">
	<div class="panel">

		<div class="panel-body">
			<div class="col-md-6 col-sm-12">
				<h3 class="animated fadeInLeft">DC16th Team No.2 GroupWare
					Project</h3>
			</div>

			<div class="col-md-6 col-sm-12 text-right">
				<h5 id="addr" style="color: #DDDDDE;">
					<span class="fa  fa-map-marker"></span>
				</h5>
			</div>
		</div>

	</div>
	<div>
		<!-- 실제 화면 구동부분 -->
		<p>${sessionScope.userInfo.strName }님의 전자결제 메인</p>
	
		
			<table border="1">
				<tr>
					<td style="width: 550px">결제할 문서함</td>
					<td style="width: 550px">개인 문서함</td>
				</tr>
				<td>
					<table>
						<tr>
							<td style="width: 205px">미결제 문서</td>
							<td>${settlementnocnt}건</td>
						</tr>
						<tr>
							<td style="width: 205px">결제 문서</td>
							<td>${settlementokcnt }건</td>

						</tr>

					</table>
				</td>
				<td>
					<table>
						<tr>
							<td style="width: 205px">상신문서</td>
							<td>${settlementingcnt }건</td>

						</tr>

						<tr>
							<td style="width: 205px">반려문서</td>
							<td>${nosettlementcnt }건</td>
						</tr>
						<tr>
							<td style="width: 205px">결제 완료 문서</td>
							<td>${oksettlementcnt }건</td>
						</tr>





					</table>
					

				</td>

			</table>

			<table>
				<tr>
					<td colspan="2">
						<p style="width: 216px">결제할 문서함 ▶ 미결제문서</p>
					</td>
					<td><input name="Button1" type="button" value="더보기"
						onclick="parent.location.href='${root}/appr/settlementno.html'" /></td>
				</tr>
			</table>
			<table border="1">
				<tr>

					<td style="width: 152px">문서번호</td>
					<td style="width: 118px">기안날짜</td>
					<td style="width: 120px">문서종류</td>
					<td style="width: 628px">문서명</td>
				</tr>

		<c:forEach var="cc" items="${list}" begin="0" end="4" step="1" >
			 	<tr>

					<td style="width: 152px">${cc.strAm_Docu_No}-${cc.strAm_Seq}</td>
					<td style="width: 118px">${cc.strAm_Draft_Y}/${cc.strAm_Draft_M}/${cc.strAm_Draft_D}</td>
					<td style="width: 120px">${cc.strDl_Name}</td>
					<td style="width: 628px">${cc.strAm_Title}</td>
				</tr> 
				

		</c:forEach>

			</table>


			<table>
				<tr>
					<td colspan="2">
						<p style="width: 216px">개인문서함 ▶ 상신문서</p>
					</td>
					<td><input name="Button1" type="button" value="더보기"
						onclick="parent.location.href='${root}/appr/settlementing.html'" /></td>
				</tr>
			</table>
			<table border="2" style="width: 1115px">
				<tr>
					<td style="width: 213px">문서번호</td>
					<td style="width: 152px">기안날짜</td>
					<td style="width: 442px">문서종류</td>
					<td style="width: 1951px">문서명</td>
					<td style="width: 542px">상태</td>
				</tr>

			<c:forEach var="cc" items="${list2}" begin="0" end="4" step="1" >
			 	<tr>

					<td style="width: 152px">${cc.strAm_Docu_No}-${cc.strAm_Seq}</td>
					<td style="width: 118px">${cc.strAm_Draft_Y}/${cc.strAm_Draft_M}/${cc.strAm_Draft_D}</td>
					<td style="width: 120px">${cc.strDl_Name}</td>
					<td style="width: 628px">${cc.strAm_Title}</td>
					<td style="width: 628px">${cc.strCm_Name}</td>
				</tr> 
				</c:forEach>
				

			</table>

			<p>☞전자결제 문서함 설명</p>
			<table border="1">
				<tr>
					<td rowspan="2">결제할 문서함</td>
					<td>미결재 문서 | 내가 결재할 문서 중에 결재하지 않은 문서입니다.</td>
				<tr>
					<td>결재완료 문서 | 내가 결재할 문서 중 결재한 문서입니다.</td>
				</tr>

				<tr>
					<td rowspan="3">개인문서함</td>
					<td>상신문서 | 결재를 올린 문서 중 아직 진행중인 문서입니다.</td>
				</tr>
				<td>반려문서 | 상신한 문서 중에 결재자가 기각한 문서입니다.</td>
				<tr>
					<td>결재완료 | 상신한 문서 중에서 결재자가 결재/전결한 문서입니다.</td>
				</tr>



			</table>
			
	</div>
</div>
<!-- end: content -->

</html>