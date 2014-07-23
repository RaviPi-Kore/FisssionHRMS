	$(document).ready(function() {
		var empId = window.location.pathname.split("/")[4];
		
		$.get(_hermes.appContext + '/api/leaves/details/all', function(data) {
			
		});
		
		
		
		
		
		
		
//		$.get(_hermes.appContext + '/api/leave/details/all', function(data) {
//			for(var i=0;i<data.length;i++){
//				$( "#table-body" ).append( "<tr><td><a href="+_hermes.appContext+"/employee/edit/"+data[i].empId+">"+data[i].empId+"</a></td><td>"+data[i].empFname+" "+data[i].empMname+" "+data[i].empLname+"</td><td>"+data[i].empContact+"</td><td>"+data[i].empBloodGroup+"</td></tr>" );
//			}
//		});
	});
