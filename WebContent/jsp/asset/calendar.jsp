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
				<h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
				<p class="animated fadeInDown">
					<span class="fa  fa-map-marker"></span> 자산관리>>달력
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
			<span class="icon-diamond icons"></span> 달력
			<span><input type="button" class="btn btn-3d" value="전체예약일정" onclick="location.href='${root}/asset/viewAllcalendar.html'"/></span>
			<span><input type="button" class="btn btn-3d" value="내 예약일정" onclick="location.href='${root}/asset/viewMycalendar.html'"/></span>
		</h4>
	</div>

	<!-- start : 메뉴 디자인 구성하는 위치 -->
	<div class="col-md-12">
		<div class="panel-heading bg-white border-none">
			<div class="panel-body">
				<div class="col-md-12">
					<div id='external-events'></div>
					<div class="col-md-10">
						<div id='allcalendar'></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end : 메뉴 디자인 구성하는 위치 -->

</div>

<!-- end: content -->

<script type="text/javascript">
	var allCalendar = ${jsonvc.vclist};
	 $(document).ready(function() {
		$('#external-events .fc-event').each(function() {
			// store data so the calendar knows to render an event upon drop
			$(this).data('event', {
				title : $.trim($(this).text()), // use the element's text as the event title
				stick : true
			// maintain when user navigates (see docs on the renderEvent method)
			});

			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex : 999,
				revert : true, // will cause the event to go back to its
				revertDuration : 0
			//  original position after the drag
			});

		});

		$('#allcalendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			editable : true,
			droppable : true, // this allows things to be dropped onto the calendar
			drop : function(date, jsEvent, ui) {

				// is the "remove after drop" checkbox checked?
				if ($('#drop-remove').is(':checked')) {
					// if so, remove the element from the "Draggable Events" list
					$(this).remove();
				}
			},
			events : allCalendar
					/* [{'start' : '2016-03-07T11:00:00',
					 'end' : '2016-03-07T12:00:00',
					 'title' : '4층회의실1'}
					 ] */
		});
	}); 
function test(){
	var test = '';
	
}
</script>
</html>