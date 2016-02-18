<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
	
		<!-- start: Javascript -->
		<script src='${root}/js/lang/ko.js'></script>
		<script src="${root }/js/main.js" ></script>
		<script type="text/javascript">
		  
		$(document).ready(function(){
		        
			$('#external-events .fc-event').each(function() {
		        // store data so the calendar knows to render an event upon drop
		        $(this).data('event', {
		          title: $.trim($(this).text()), // use the element's text as the event title
		          stick: true // maintain when user navigates (see docs on the renderEvent method)
		        });
		
		       /*  // make the event draggable using jQuery UI
		        $(this).draggable({
		          zIndex: 999,
		          revert: true,      // will cause the event to go back to its
		          revertDuration: 0  //  original position after the drag
		        }); */
		
		      });
		
		
		      $('#calendar').fullCalendar({
		    	  
		    	  lang: 'ko',
			      header: {
			        left: 'prev,next today',
			        center: 'title',
			        right: 'month,agendaWeek,agendaDay'
			      },
			      editable: true,
			      droppable: true, // this allows things to be dropped onto the calendar
			      drop: function(date, jsEvent, ui ) {
			
			        // is the "remove after drop" checkbox checked?
			        if ($('#drop-remove').is(':checked')) {
			          // if so, remove the element from the "Draggable Events" list
			          $(this).remove();
			        }
			      }
		    });
		  });
		</script>
		<!-- end: Javascript -->
		
          <!-- start: content -->
            <div id="content">
                <div class="panel">
               	
                  <div class="panel-body">
                    <div class="col-md-6 col-sm-12">
                    	<h3 class="animated fadeInLeft">DC16th Team No.2 GroupWare Project</h3>
                   	</div>
                   	
                    <div class="col-md-6 col-sm-12 text-right">
                        <h5 id="addr" style="color:#DDDDDE;"><span class="fa  fa-map-marker"></span></h5>                  
                    </div>
                  </div>                    

               </div>
              <div class="panel">
                  <div class="panel-heading"><h3></h3></div>
                  <div class="panel-body">
                    
                    <div class="col-md-12">
                      <div id='calendar'></div>
                    </div>
                    
                  </div>
                </div>
      		  </div>
          <!-- end: content -->

</html>