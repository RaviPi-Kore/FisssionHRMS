	$(document).ready(function() {
		getEmployeeData("active");
	});
	
	function getEmployeeData(type){
		var requesteUrl = _hermes.appContext + '/api/employee/type/'+type;

		$("#table-body").empty();
		$.get(requesteUrl , function(data) {
			for(var i=0;i < data.length;i++){
				$( "#table-body" ).append( "<tr><td>"+data[i].empId+"</td><td><a href="+_hermes.appContext+"/employee/edit/"+data[i].empId+">"+data[i].empFname+" "+data[i].empMname+" "+data[i].empLname+"</a></td><td>"+data[i].empContact+"</td><td>"+data[i].employeeProjectInfos[0].reportingManager+"</td><td>"+data[i].employeeProjectInfos[0].projectName+"</td></tr>" );
			}
		});
	}