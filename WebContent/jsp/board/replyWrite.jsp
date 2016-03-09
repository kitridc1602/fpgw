<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
 
<!-- <script type="text/javascript">
function notehtml() {
	
	$(function() {
		 	 
	    $('#btnSave').on('click', function(){
	    	
	    	var strTitle = document.getElementById('title').value;
	    	var strComment = $('#summernote').eq(0).summernote('code');
	    	var strWriter = ${sessionScope.userInfo.strCode};
	    	
	    	var sForm = document.getElementById('write');
	    	sForm.attr('strTitle', strTitle);
	    	sForm.attr('strComment', strComment);
	    	sForm.attr('strWriter', strWriter);
	    	sForm.submit();	    		    	
	    });
	});
	
}

</script>
 -->

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
                
                <div class="panel-heading bg-white border-none" style="margin-bottom: 10px;">
                   	<h4><span class="icon-notebook icons"></span> 글쓰기</h4>
                </div>

					<!-- start : 메뉴 디자인 구성하는 위치 -->
			<div style="background-color: white">	
				<form action="${root }/board/rewrite.html" id="write" method="post">
						<div class="col-md-1" >
						</div>
						
						<div class="col-md-10">							
		                     <div class="form-group form-animate-text" style="margin-top:10px !important;">
		                     	 <input type="text" id="strTitle" name="strTitle" class="form-text" value ="${reply.strTitle }">
		                       		 <span class="bar"></span>
		                       		 <label>제목 </label>
		                       		 
		                       		 
		                       		<!--  히든값들 입력!! -->
		                       		 <input type="hidden" id="strWriterCode"  name="strWriterCode" value="${sessionScope.userInfo.strCode }">
		                     		 <input type="hidden" id="strGroupCode" name="strGroupCode" value="400">
		                     		 <input type="hidden" id="strGroup" name="strGroup" value="001">
		                     		 <input type="hidden" id="strKindCode" name="strKindCode" value="401">
		                     		 <input type="hidden" id="strKind" name="strKind" value="002">
		                     		 <input type="hidden" id="intSeq" name="intSeq" value="${reply.intSeq }">
		                                                
		                     </div>
		                </div>	
		                
		                <div class="col-md-1" >
						</div>
		                 
		            <div class="col-md-1" >
					</div>
		          	
		          	<div class="col-md-10">
		            	<div class="panel">
		                	<div class="panel-body">
		                    	<textarea id="strDetailComment" name="strDetailComment" rows="20" cols="" class="form-control" placeholder="내용을 작성하시오...">${strDetailComment }</textarea>
		                  	</div>
		              	</div>
		            </div>
		              
		            <div class="col-md-1" >
					</div>
					
	          		<div class="col-md-12" style="padding-top: 10px;">
						<span > 
							<input type="button" class="btn btn-3d" value="취소" /> 
							<input type="submit" id="btnSave" class="btn btn-3d" value="저장"/>
						</span>
					</div>
				</form>
					<!-- end : 메뉴 디자인 구성하는 위치 -->
					
           </div>
          </div> 
          <!-- end: content -->
</html>