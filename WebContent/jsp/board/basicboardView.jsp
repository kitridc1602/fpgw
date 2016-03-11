<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>

<html lang="en">

<script type="text/javascript">

	function comment(kind){
	
		var root = "${root}";
		
		switch(kind){
	
			case 'insert':
							
				var detailcomment = document.getElementById("ccstrDetailComment").value;
				var writer = document.getElementById("ccstrWriterCode").value;
				var gcode = document.getElementById("ccstrGroupCode").value;
				var g = document.getElementById("ccstrGroup").value;
				var kcode = document.getElementById("ccstrKindCode").value;
				var k = document.getElementById("ccstrKind").value;
				var pseq = document.getElementById("ccintSeq").value;
				var title = document.getElementById("ccstrTitle").value;
				var ripple = $("#ripple");
				
				$.ajax({				
					type: "POST",
					dataType: "json",
					url: root + "/board/addComment.html",
					data: {
							"ccstrDetailComment": detailcomment,
							"ccstrWriterCode": writer,
							"ccstrGroupCode": gcode,
							"ccstrGroup": g,
							"ccstrKindCode": kcode,
							"ccstrKind": k,
							"ccintSeq": pseq,
							"ccstrTitle" : title
							
							},
					success: function(data) {
						
						if(data.ok == "success"){
							var output = '';
							output += '	<div class="media" >';
							output += '		<div class="media-left">';
							output += '			<a href="#"> <img src="asset/img/avatar2.png" width="30px" />&nbsp;</a> '; 
							output += '			<span class="media-middle"> '; 
							output += '			<span>'+ writer +'&nbsp;&nbsp;&nbsp;<%= new Date() %>&nbsp;&nbsp;&nbsp;&nbsp; '; 																				
							output += '				<input type="button" class="btn btn-3d" value="수정"	onclick="location.href=\'${root }/board/modifygo.html?workkind=001&subworkkind=001&num=${list.intSeq }\'" /> ';
							output += '				<input type="button" class="btn btn-3d" value="삭제"	onclick="location.href=\'${root }/board/deletecomment.html?num=${list.intSeq}\'" /> ';
							output += '			<br> ';
							output += '			</span> '; 
							output += '			<span>'+ detailcomment +'<br></span> '; 
							output += '			</span> ';
							output += '		<hr> ';
							output += '	</div> ';
							output += '</div> ';
													
							ripple.append(output);						
														}				
					},
					error:function(request,status,error){
					    alert("code:"+request.status+"\n"+"message:"+request.responseText);
					}				
				});		
				
				break;
			
			case 'modify':
				
				var seq = document.getElementById("mmintSeq");
				var name = document.getElementById("mmstrName");
				var comm = document.getElementById("mmstrComment");
				
				$.ajax({				
					type: "POST",
					dataType: "json",
					url: root + "/board/modifycomment.html",
					data: {
							"mmintSeq": seq,
							"mmstrName": name,
							"mmstrComment": comm
													
							},
					success: function(data) {
						
						if(data.ok == "success"){
							var output = '';
						
													
							ripple.append(output);						
														}				
					},
					error:function(request,status,error){
					    alert("code:"+request.status+"\n"+"message:"+request.responseText);
					}				
				});		
								
				break;
			
			case 'delete':
			
				break;
		}	
	
}


	function modifyViewChange(workKind){
		
		//workKind : 수정, 수정취소
		
		var rippleParent = $("#rippleParent");
		var btnRippleDel = $("#btnRippleDel");
		var btnRippleEdit = $("#btnRippleEdit");
		var editText = $("#editText");
		var btnEditWrite = $("#btnEditWrite");
		var lblComment = $("#lblComment");
		
		if(workKind == '수정'){
		
			//삭제버튼 사라진다.
			btnRippleDel.css('display', 'none');
			//수정 -> 수정취소
			btnRippleEdit.val('수정취소');
			//입력박스 박스 생성
			editText.css('display','');
			//입력박스에 내용입력	
			//1. 라벨 내용 -> 텍스테 박스에 전달			
			var strText = lblComment.html();
			editText.val(strText);			
			//2. 라벨을 소멸
			lblComment.css('display','none');			
			//수정버튼 생성
			btnEditWrite.css('display','');
			//라벨 삭제
						
		} else {
			
			//원복
			btnRippleDel.css('display', '');
			btnRippleEdit.val('수정');
			editText.val('');
			lblComment.css('display','');
			editText.css('display','none');	
			btnEditWrite.css('display','none');
			
		}
		
	}	
	
	
</script>

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

	<div class="panel-heading bg-white border-none"
		style="margin-bottom: 20px;">
		<h4>
			<span class="icon-notebook icons"></span> ${subworkkind }
		</h4>
	</div>




<!-- 이전글 다음글 -->
	<div class="col-md-12">
		<input type="button" class="btn btn-3d" value="이전글" /> 
		<input type="hidden" id="intSeq" name="intSeq" value="${read.intSeq}" /> 
		<input type="button" class="btn btn-3d" value="다음글" />
	</div>




<!-- 게시글 타이틀 부분 -->
	<div class="col-md-12" style="background-color: white">

		<div>
			<hr style="color: navy" style="border:thick" />
		</div>

		<div class="col-md-12">
			<div class="col-md-9">제목 : ${read.strTitle }</div>
			<div class="col-md-3">${read.datGet_Date }</div>
		</div>

		<div>
			<hr
				style="border-style: none; border-color: inherit; border-width: thick;" 
				style="border:thick" noshade="noshade" />
		</div>

		<div class="col-md-12">
			<div class="col-md-9">${read.strName }| ID:${read.strId }</div>
			<div class="col-md-3">URL 복사</div>
		</div>

		<div>
			<hr style="color: navy" style="border:thick" />
		</div>

	</div>



<!-- 게시글보기 본문부분 -->
	<div class="col-md-12" style="padding: 20px; background-color: white">

		<div class="col-md-1"></div>

		<div class="col-md-11">${read.strDetailComment }</div>

		<br> <br>

		<div class="col-md-12 article-v1-tags">
			<h6>
				<span> <i class="fa fa-thumbs-o-up fa-2x"></i>&nbsp 댓글수
					&nbsp&nbsp <i class="fa fa-retweet fa-2x"></i>&nbsp 조회수
				</span>
			</h6>

		</div>
		<div>
			<span style="right: auto;"> 

				<c:if test="${sessionScope.userInfo.strCode eq read.strWriterCode}">
					<input type="button" class="btn btn-3d" value="수정"	onclick="location.href='${root }/board/modifygo.html?workkind=001&subworkkind=001&num=${read.intSeq }'" />
					<input type="button" class="btn btn-3d" value="삭제"	onclick="location.href='${root }/board/delete.html?num=${read.intSeq }'" />
				</c:if> 
				
				<input type="button" class="btn btn-3d" value="답글쓰기"	onclick="location.href='${root }/board/rewritego.html?num=${read.intSeq }'">
				<input type="button" class="btn btn-3d" value="글쓰기"	onclick="location.href='${root }/board/writego.html'"> 
				<input type="button" class="btn btn-3d" value="목록보기"	onclick="location.href='${root }/board/basicboardList.html'">
			</span>
		</div>
	</div>





<!-- 댓글 리스트 -->
	<div class="col-md-12" style="left: 0px; top: 0px">
		<div class="col-md-12 article-v1-comment" style="left: 0px; top: 0px" id="ripple">

			<h5>
				<b><i class="fa fa-plus-square"></i>&nbsp;&nbsp;&nbsp;댓글</b>
			</h5>

			<c:forEach var="list" items="${commentList}">
				<div class="media" >
					<div class="media-left" id="rippleParent">
						<a href="#"> <img src="asset/img/avatar2.png" width="30px" />&nbsp;</a> 
						<span class="media-middle"> 
							<span>
								<input type="hidden" id="mmintSeq" name="intSeq" value="${list.intSeq}">
								${list.strName }&nbsp;&nbsp;&nbsp;
								<input type="hidden" id="mmstrName" name="strName" value="${list.strName }">
								${list.datComment_Date }&nbsp;&nbsp;&nbsp;&nbsp; 								
								<c:if test="${sessionScope.userInfo.strCode eq list.strCommenterCode}">
																		
									<input id="btnRippleEdit" name="btnRippleEdit" type="button" class="btn btn-3d" value="수정"	onclick="modifyViewChange(this.value)" >
									<input id="btnRippleDel" name="btnRippleDel" type="button" class="btn btn-3d" value="삭제"	onclick="comment('delete')" >
									
									
									<%-- ajax 사용 안함
									<input type="button" class="btn btn-3d" value="수정"	onclick="location.href='${root }/board/modifygo.html?workkind=001&subworkkind=001&num=${list.intSeq }'" />
									<input type="button" class="btn btn-3d" value="삭제"	onclick="location.href='${root }/board/deletecomment.html?num=${list.intSeq}'" />
									 --%>
									
								</c:if> 
								<br>
							</span> 
							
							<span>
							<input type="hidden"  id="mmstrComment" name="mmstrComment" value="${list.strComment }">
							<label id="lblComment">${list.strComment }</label>
							<br></span> 
							<input type="text" id="editText" name="editText" style="display: none;" />
							<button id="btnEditWrite" name="btnEditWrite" style="display: none;" >수정</button>
						</span>
						<hr>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>

	<br> <br>


<!--  댓글 쓰기  -->
	<div class="col-md-12" style="height: auto">

		<div class="media" style="height: auto" style="min-height:100px">

			<div class="media-left" style="height: auto; min-height: 100px; float: left" style="width:10%">
				<a href="#"><img src="asset/img/avatar2.png" width="30px" />&nbsp;</a>
			</div>


			<form action="${root }/board/addComment.html" id="commentWrite" method="POST">
			<%--댓글달기 ajax 사용 안하는거 
			<form action="${root }/board/addComment.html" id="commentWrite" method="POST"> --%>

				<div style="height: auto; min-height: 100px; float: left" style="width:80%">
					<textarea style="size: 80%" id="ccstrDetailComment" name="strDetailComment" class="form-control" > ${strDetailComment } </textarea>
					<input type="hidden" id="ccstrWriterCode" name="strWriterCode" value="${sessionScope.userInfo.strCode }"> 
					<input type="hidden" id="ccstrGroupCode" name="strGroupCode" value="400">
					<input type="hidden" id="ccstrGroup" name="strGroup" value="003">
					<input type="hidden" id="ccstrKindCode" name="strKindCode" value="401"> 
					<input type="hidden" id="ccstrKind" name="strKind" value="002"> 
					<input type="hidden" id="ccintSeq" name="intSeq" value="${read.intSeq}">
					<input type="hidden" id="ccstrTitle" name="strTitle" value="">
				</div>
				<div style="height: auto; min-height: 100px; float: left; width: 80%">
					
					<!--댓글달기 ajax 사용 안하는거 
					 <input type="submit" class="btn btn-3d" value="입력"> -->
					
					<input type="button"  class="btn btn-3d" value="입력" onclick="comment('insert')">
					<!-- <button class="btn btn-3d" value="입력" onclick="commentInsert()"></button> -->
				</div>
				
			</form>
			
				
		</div>

	</div>
<!-- 댓글 끝 -->	

</div>


</html>
