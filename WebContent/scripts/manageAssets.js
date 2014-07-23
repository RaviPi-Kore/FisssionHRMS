	$(document).ready(function() {
		loadGrid();
		$("#assetIssueDate").datepicker();
		$("#surrenderDate").datepicker();
	});

	
	function loadGrid(){
		var empId = window.location.pathname.split("/")[4];
		$.get(_hermes.appContext + '/api/employee/edit/'+empId, function(data) {
			
			$("#assetHolderDetails").text(data.empFname+" "+data.empMname+" "+data.empLname+" [ "+data.empId+" ]");
			
			var assetList = data.employeeAssetInfos;
			
			for(var i=0;i<assetList.length;i++){

				var assetTagId = assetList[i].assetTagId;
				var assetType = assetList[i].assetType;
				var assetInfo = assetList[i].assetInfo;
				var assetIssueDate = assetList[i].assetIssueDate;
				var surrenderDate = assetList[i].surrenderDate;
				var assetNote = assetList[i].assetNote;
				
				
				if(typeof assetIssueDate == 'undefined'){
					assetIssueDate = "--";
				}else{
					var date = new Date(assetIssueDate);
					assetIssueDate = addZeroIfLessThan10(date.getMonth()+1) +"/"+ addZeroIfLessThan10(date.getDate()) + "/" + date.getFullYear();
				}

				
				if(typeof surrenderDate == 'undefined'){
					  surrenderDate = "<button type=\"button\" class=\"btn btn-danger btn-xs\" onclick=\"surrenderAsset('"+assetTagId+"')\">Surrender Asset</button>";
				}else{
					var date = new Date(surrenderDate);
					surrenderDate = addZeroIfLessThan10(date.getMonth()+1) +"/"+ addZeroIfLessThan10(date.getDate()) + "/" + date.getFullYear();
				}

				if(typeof assetNote == 'undefined' || assetNote == ""){
					assetNote = "--";
				}
				$( "#table-body" ).append( "<tr><td>"+assetTagId+"</td><td>"+assetType+"</td><td>"+assetInfo
						+"</td><td>"+assetIssueDate+"</td><td>"+surrenderDate
						+"</td><td>"+assetNote+"</td></tr>" );
			}
		});	
	}

	function addZeroIfLessThan10(num){
		var str;
		if(num%10 > 0 && num < 10  ){
			str = "0"+num;
		}else{
			str = num;
		}
		return str;
	}
	function manageAsset(){
		var empId = window.location.pathname.split("/")[4];
		var optype = $("#optype").val();
		
		var assetIssueDate = new Date($("#assetIssueDate").val());
		var surrenderDate = new Date($("#surrenderDate").val());
		
		var assetObj = {"assetTagId" : $("#assetTagId").val(), "assetType" : $("#assetType").val(), "assetInfo" : $("#assetInfo").val(), 
				"assetIssueDate" : assetIssueDate, "surrenderDate" : surrenderDate, "assetNote" : $("#assetNote").val()};

		
		
		if(optype == "add"){
			$.post(_hermes.appContext + '/api/asset/assign/'+empId, JSON.stringify(assetObj))
			.always(function(data) {
				console.log(data.responseText);
			});

		}else if(optype == "update"){
			$.post(_hermes.appContext + '/api/asset/update/'+empId, JSON.stringify(assetObj))
			.always(function(data) {
				console.log(data.responseText);
			});;
		}

		location.reload();
		
		return false;

	}
	
	function surrenderAsset(assetTagId){
		var empId = window.location.pathname.split("/")[4];
		$("#optype").val("update");
		
	    var response = confirm("Are you sure you want to surrender this asset ??");
	    if (response == true){
			$.get(_hermes.appContext + '/api/asset/get/'+empId+'/'+assetTagId, function(data) {
				var assetData = data;
				
				var assetTagId = assetData.assetTagId;
				var assetType = assetData.assetType;
				var assetInfo = assetData.assetInfo;
				
				
				var assetIssueDate = addZeroIfLessThan10((new Date(assetData.assetIssueDate)).getMonth()+1) +"/"+ addZeroIfLessThan10((new Date(assetData.assetIssueDate)).getDate()) + "/" + (new Date(assetData.assetIssueDate)).getFullYear();
				var assetNote = assetData.assetNote;
				
				$("#assetTagId").val(assetTagId)
				$("#assetType").val(assetType)
				$("#assetInfo").val(assetInfo)
				$("#assetIssueDate").val(assetIssueDate);
				$("#assetNote").val(assetNote);		
		    });
		}
	}
