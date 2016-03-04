<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<script type="text/javascript">

	function modifysubmit(kind){
		
		switch(kind){
		
		case 'modify':
			
			var modifyboard = document.getElementById("modifyboard");
			
			modifyboard.method = 'POST';
			modifyboard.action = '${root }/board/modify.html';
			modifyboard.submit();
			break;
		}
	}

</script>

<!-- 이부분 수정하믄 안됨 -->
<div id="content">
	<div class="panel">
		
		<div class="panel-body">
			<div class="col-md-6 col-sm-12">
				<h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
				<p class="animated fadeInDown">
					<span class="fa  fa-map-marker"></span> ${workKind }
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
<!-- 여기까지 손대지 말기 -->

<!-- 여기서 부터 게시판 수정 하기 파트 -->


	<!--게시판 메인머릿말  -->
	<div class="panel-heading bg-white border-none" style="margin-bottom: 20px;">
		<h4>
			<span class="icon-notebook icons"></span> ${subworkkind }
		</h4>
	</div>
	
	<!--이전글 다음글 -->
	<div class="col-md-12">
		<input type="button" class="btn btn-3d" value="이전글" /> 
		<input type="button" class="btn btn-3d" value="다음글" />
	</div>

	<form action="" id="modifyboard" name="modifyboard">	
		<div class="col-md-12" style="background-color: white">
			<div>
				<hr style="color: navy" style="border:thick" />
			</div>
	
			<div class="col-md-12">
				<div class="col-md-9">
					제목 : <input type="text" id="strTitle" name="strTitle" value="${read.strTitle }">
				</div>
				<div class="col-md-3">
					이전 저장 시간 : <input type="text" id="Get_Date" name="Get_Date"  value="${read.datGet_Date }" readonly>
				</div>
			</div>
	
			<div>
				<hr	style="border-style: none; border-color: inherit; border-width: 100%; border: thick" noshade="noshade" />
			</div>
		
			<div class="col-md-12">
				<div class="col-md-9">
					작성자 : <input type="text" id="name" name="Name" value="${read.strName }" readonly>
				</div>
				
				<div class="col-md-3">
				<!--  히든값들 입력!! -->
<!-- 					<input type="hidden" id="strGroupCode" name="strGroupCode" value="400">
					<input type="hidden" id="strGroup" name="strGroup" value="001">
					<input type="hidden" id="strKindCode" name="strKindCode" value="401">
					<input type="hidden" id="strKind" name="strKind" value="002"> -->
					<input type="hidden" id="intSeq" name="intSeq" value="${read.intSeq }">
				</div>
			</div>
	
			<div>
				<hr style="color: navy" style="border:thick" />
			</div>
		</div>

		<div class="col-md-12" style="padding: 20px; background-color: white">
			<div class="col-md-1">
			</div>
			<div class="col-md-11">
				<textarea id="strDetailComment" name="strDetailComment" cols="100%" rows="30%" style="size:100% " >
					${read.strDetailComment }
				</textarea>
			</div>
			<br>
			<br>

			<div class="col-md-12 article-v1-tags">
				<h6>
					<span> 
						<i class="fa fa-thumbs-o-up fa-2x"></i>&nbsp 댓글수 &nbsp&nbsp 
						<i class="fa fa-retweet fa-2x"></i>&nbsp 조회수 
					</span>
				</h6>

			</div>
			<div>
				<span style="right: auto;"> 
					
					<input type="button" class="btn btn-3d" value="저장" onclick="modifysubmit('modify')" />
					<input type="button" class="btn btn-3d" value="미리보기" 	onclick="location.href='${root }/board/delete.html'" />
					<input type="button" class="btn btn-3d" value="취소" onclick="location.href='${root }/board/basicboardList.html'">
				</span>
			</div>
		</div>
	</form>

	<div class="col-md-12" style="left: 0px; top: 0px">
		<div class="col-md-12 article-v1-comment" style="left: 0px; top: 0px">
			<h5>
				<b>코멘트:</b>
			</h5>
			<div class="media">
				<div class="media-left">
					<a href="#"> 
						<img src="asset/img/avatar2.png" width="30px" />&nbsp;
					</a> 
					<span class="media-middle"> 
						<span>댓글작성자<br></span> 
							<span>It was popularised in the 1960s with the release of Letraset sheets
							containing Lorem Ipsum passages, and more recently with desktop
							publishing software like Aldus PageMaker including versions of
							Lorem Ipsum.
							</span> 
							<span><br /> 등록시간 </span>
					</span>
				</div>
			</div>
		</div>
	</div>

	<br> <br>

	<div class="col-md-12" style="height: auto">
		<h5><b>댓글쓰기:</b></h5>
		<div class="media" style="height: auto" style="min-height:100px">
			<div class="media-left" style="height: auto; min-height: 100px; float: left; width:10%">
				<a href="#"> 
					<img src="asset/img/avatar2.png" width="30px" />&nbsp;
				</a>
			</div>

			<div style="height: auto; min-height: 100px; float: left; width:80%">
				<textarea style="width: 100%">
						It was popularised in the 1960s with the release 
						of Letraset sheets containing Lorem Ipsum passages, and 
						more recently with desktop publishing software like 
						Aldus PageMaker including versions of Lorem Ipsum. 
				</textarea>
			</div>

			<div style="height: auto; min-height: 100px; float: right; width: 10%">
				<input name="Button1" type="button" value="입력" />
			</div>
		</div>
	</div>

</div>


</html>
