	function selectMultipleCheckboxes(itemGroup){
		if(itemGroup == "all"){
		    $(":checkbox").prop("checked", true);					
		}else{
			$("#"+itemGroup+"Div :checkbox").prop("checked", true);					
		}
	}

	function unselectMultipleCheckboxes(itemGroup){
		if(itemGroup == "all"){
		    $(":checkbox").prop("checked", false);					
		}else{
			$("#"+itemGroup+"Div :checkbox").prop("checked", false);					
		}
	}
	
	function selectGroup(groupDiv){
		$('#selectAll').removeClass("active");
		$('#selectNone').removeClass("active");
	
		if($("#"+groupDiv).prop("checked")){
			selectMultipleCheckboxes(groupDiv);			
		}else if(!$("#"+groupDiv).prop("checked")){
			unselectMultipleCheckboxes(groupDiv);			
		}
	}
	
	
	function exportData(){
		var reportFor = window.location.href.split("/")[window.location.href.split("/").length-1];

		var checkedValues = $('input:checked').map(function(){
													return $(this).val();
												}).get();
		
		var selectedDataFields = $.grep(checkedValues, function( n, i ) {
		    												return n == "on";
														}, true );
	
		$.post(_hermes.appContext + '/api/report/'+reportFor, JSON.stringify(selectedDataFields))
		.always(function(data){
			var fileName = data.responseText;
			var fileUrl = window.location.origin+_hermes.appContext+"/download/"+fileName;
			
			var w = window.open("","","width=225,height=150");
			$(w.document.body).html("<iframe src='"+fileUrl+"' width='200' height='200' frameborder='0' hidden></iframe><span>Please close this window.</span>").css("background-color", '#E0ECFF');
			$(w).unload(function() {
				$.get(_hermes.appContext + '/api/report/delete/'+fileName);
			});
		});
	
	}