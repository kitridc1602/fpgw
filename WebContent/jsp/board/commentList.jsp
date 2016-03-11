<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>

<html lang="en">

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
</html>