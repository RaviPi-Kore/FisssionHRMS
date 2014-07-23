	$(document).ready(function() {
		$.get(_hermes.appContext + '/api/employee', function(data) {
			for(var i=0;i<data.length;i++){
				$( "#table-body" ).append( "<tr><td><a href="+_hermes.appContext+"/employee/edit/"+data[i].empId+">"+data[i].empId+"</a></td><td>"+data[i].empFname+" "+data[i].empMname+" "+data[i].empLname+"</td><td>"+data[i].empContact+"</td><td>"+data[i].empBloodGroup+"</td></tr>" );
			}
		});
	});