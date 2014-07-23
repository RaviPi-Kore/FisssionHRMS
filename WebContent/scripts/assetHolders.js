$(document).ready(function() {
	$.get(_hermes.appContext + '/api/employee/type/active', function(data) {
		for(var i=0;i<data.length;i++){
			$( "#table-body" ).append( "<tr><td>"+data[i].empId+"</td><td><a href="+_hermes.appContext+"/assets/manage/"+data[i].empId+">"+data[i].empFname+" "+data[i].empMname+" "+data[i].empLname+"</a></td><td>"+data[i].empContact+"</td><td>"+data[i].employeeAssetInfos.length+"</td></tr>" );
		}
	});
});
