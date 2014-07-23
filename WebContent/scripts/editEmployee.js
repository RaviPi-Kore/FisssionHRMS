	$(document).ready(function() {

		$("#doj").datepicker();
		$("#empDob").datepicker();

		var empId = window.location.pathname.split("/")[4];
		$.get(_hermes.appContext + '/api/employee/edit/'+empId, function(data) {
			
			var empObj = data;
			
			$("#empId").val(empObj.empId);
			$("#fname").val(empObj.empFname);
			$("#mname").val(empObj.empMname);
			$("#lname").val(empObj.empLname);
			$("#typeOfEmployment").val(empObj.employeeProjectInfos[0].employementType);
			$("#doj").val(empObj.empDoj);
			$("#email").val(empObj.empEmail);
			$("#contact").val(empObj.empContact);
			$("#gender").val(empObj.empGender);
			$("#bloodGroup").val(empObj.empBloodGroup);

			$("#fathersFname").val(empObj.employeeFamilies[0].empFathersFname);
			$("#fathersMname").val(empObj.employeeFamilies[0].empFathersMname);
			$("#fathersLname").val(empObj.employeeFamilies[0].empFathersLname);
			$("#fathersContact").val(empObj.employeeFamilies[0].empFathersContact);
			$("#fathersOccupation").val(empObj.employeeFamilies[0].empFathersOccupation);
			
			$("#mothersFname").val(empObj.employeeFamilies[0].empMothersFname);
			$("#mothersMname").val(empObj.employeeFamilies[0].empMothersMname);
			$("#mothersLname").val(empObj.employeeFamilies[0].empMothersLname);
			$("#mothersContact").val(empObj.employeeFamilies[0].empMothersContact);
			$("#mothersOccupation").val(empObj.employeeFamilies[0].empMothersOccupation);
			
			$("#maritalStatus").val(empObj.employeeFamilies[0].empMaritalStatus);
			
			$("#spouseFname").val(empObj.empSpouseFname);
			$("#spouseMname").val(empObj.empSpouseMname);
			$("#spouseLname").val(empObj.empSpouseLname);
			$("#spouseContact").val(empObj.empSpouseContact);
			$("#spouseOccupation").val(empObj.empSpouseOccupation);

			$("#emergencyPersonName").val(empObj.employeeEmergencyInfos[0].emergencyPersonName);
			$("#emergencyPersonRelation").val(empObj.employeeEmergencyInfos[0].emergencyPersonRelation);
			$("#emergencyPersonContact").val(empObj.employeeEmergencyInfos[0].emergencyPersonContact);

			
			if(empObj.empProfilePic == "FLDefault.png"){
				$("#profilePicture").attr("src", _hermes.appContext+"/resources/image/default.png");
			}else{
				$("#profilePicture").attr("src", _hermes.appContext+"/uploads/ProfilePics/"+empObj.empProfilePic);				
			}
			
			var empAddressObj = empObj.employeeAddresses;
			
			for(var i=0; i<empAddressObj.length; i++){
				if(empAddressObj[i].empAddressType == "C"){
					$("#currentAddress").val(empAddressObj[i].empAddress);
					$("#currentAddressContact").val(empAddressObj[i].empAddressContact);
				}else if(empAddressObj[i].empAddressType == "P"){
					$("#permanentAddress").val(empAddressObj[i].empAddress);
					$("#permanentAddressContact").val(empAddressObj[i].empAddressContact);					
				}
			}

			$("#university").val(empObj.employeeEducationalInfos[0].empUniversity);
			$("#college").val(empObj.employeeEducationalInfos[0].empCollege);
			$("#passoutYear").val(empObj.employeeEducationalInfos[0].empPassoutYear);
			$("#percentage").val(empObj.employeeEducationalInfos[0].empPercentage);

			$("#empDob").val(empObj.empDob);
			$("#panCardNumber").val(empObj.employeeVerificationInfos[0].pancardNumber);
			$("#passportNumber").val(empObj.employeeVerificationInfos[0].passportNumber);

			var visaType  = "NONE";
			
			if(empObj.employeeVisaInfos > 0){
				visaType  = empObj.employeeVisaInfos[0].visaType;												
				$("#typeOfVisa").val(empObj.employeeVisaInfos[0].visaType);
				$("#visaCountry").val(empObj.employeeVisaInfos[0].visaCountry);
				$("#visaValidTill").val(empObj.employeeVisaInfos[0].visaValidTill);
			}else{
			}
			
			if(visaType != "NONE"){
				$("#ifhavevisa").css('display', '');			
			}else{
				$("#ifhavevisa").css('display', 'none');			
			}		

			

			$("#skills").val(empObj.employeeProjectInfos[0].skills);
			$("#practice").val(empObj.employeeProjectInfos[0].practice);
			$("#designation").val(empObj.employeeProjectInfos[0].designation);
			$("#projectName").val(empObj.employeeProjectInfos[0].projectName);
			$("#reportingManager").val(empObj.employeeProjectInfos[0].reportingManager);
			
			var resumeName = empObj.resumeName;
			if (typeof resumeName == "undefined") {
				$("#downloadResumeLink").prop("href", "#");
			} else {
				$("#downloadResumeLink").prop("href", _hermes.appContext + "/uploads/Resumes/" + resumeName);
			}

		});
	});
	
	function ifmarried(){
		if($("#maritalStatus").val() == "married"){
			$("#showIfMarried").css('display', '');
		}else{
			$("#showIfMarried").css('display', 'none');			
		}
	}
	
	function ifhavevisa(){
		if($("#typeOfVisa").val() != "NONE"){
			$("#ifhavevisa").css('display', '');			
		}else{
			$("#ifhavevisa").css('display', 'none');			
		}		
	}
	
	
	function deactivateEmployee(){
		
	    var response = confirm("Are you sure you want to deactivate this employee ??");
	    if (response == true) {
			var empId = window.location.pathname.split("/")[4];
			$.get(_hermes.appContext + '/api/employee/deactivate/'+empId)
			.always(function(data) {
				$msg = $(document.createElement("div"));
				$msg.hide();
				$msg.attr("id", "msg");
				$msg.addClass("alert alert-warning fade in");
				$msg.html(data.responseText);
				$("#viewContainer").before($msg);
				$msg.show();
				setTimeout("$('#msg').slideUp(400,function(){$('#msg').remove();});",5000);
			});
	    } else {
			// do nothing	    	
	    }

	}
	
	function editEmployee(){
		var empId = window.location.pathname.split("/")[4];
		
		var empObj = new Object();
		
		empObj.empId = empId;
		empObj.empFname = $("#fname").val();
		empObj.empMname = $("#mname").val();
		empObj.empLname = $("#lname").val();
		empObj.empDoj = $("#doj").val();
		empObj.empDob = $("#empDob").val();
		empObj.empEmail = $("#email").val();
		empObj.empContact = $("#contact").val();
		empObj.empGender = $("#gender").val();
		empObj.empBloodGroup = $("#bloodGroup").val();
		empObj.employmentStatus = "A";
		empObj.empProfilePic = "FLDefault.png";
		
		
		var employeeFamilies = [{"empFathersFname" : $("#fathersFname").val(),"empFathersMname" : $("#fathersMname").val(),"empFathersLname" : $("#fathersLname").val(),"empFathersContact" : $("#fathersContact").val(),"empFathersOccupation" : $("#fathersOccupation").val(),"empMothersFname" : $("#mothersFname").val(),"empMothersMname" : $("#mothersMname").val(),"empMothersLname" : $("#mothersLname").val(),"empMothersContact" : $("#mothersContact").val(),"empMothersOccupation" : $("#mothersOccupation").val(),"empMaritalStatus" : $("#maritalStatus").val(),"empSpouseFname" : $("#spouseFname").val(),"empSpouseMname" : $("#spouseMname").val(),"empSpouseLname" : $("#spouseLname").val(),"empSpouseontact" : $("#spouseContact").val(),"empSpouseOccupation" : $("#spouseOccupation").val()}];
		empObj.employeeFamilies = employeeFamilies;				
		
		var employeeEmergencyInfos = [{"emergencyPersonName" : $("#emergencyPersonName").val(), "emergencyPersonRelation" : $("#emergencyPersonRelation").val(), "emergencyPersonContact" : $("#emergencyPersonContact").val()}];
		empObj.employeeEmergencyInfos = employeeEmergencyInfos;

		var employeeAddresses = [{"empAddressType" : "C","empAddress" : $("#currentAddress").val(),"empAddressContact" : $("#currentAddressContact").val()},
		                         {"empAddressType" : "P","empAddress" : $("#permanentAddress").val(),"empAddressContact" : $("#permanentAddressContact").val()}]
		empObj.employeeAddresses = employeeAddresses;
		

		var employeeEducationalInfos = [{"empUniversity" : $("#university").val(),"empCollege" : $("#college").val(), "empPassoutYear" : $("#passoutYear").val(),"empPercentage" : $("#percentage").val()}];
		empObj.employeeEducationalInfos = employeeEducationalInfos;
		

		var employeeVerificationInfos = [{"pancardNumber" : $("#panCardNumber").val(),"passportNumber" : $("#passportNumber").val(),"drivingLicenseNumber" : ""}];
		empObj.employeeVerificationInfos = employeeVerificationInfos;

		var employeeVisaInfos = [{"visaType" : $("#typeOfVisa").val(), "visaCountry" : $("#visaCountry").val(), "visaValidTill" : $("#visaValidTill").val()}];
		empObj.employeeVisaInfos = employeeVisaInfos;
		
		
		var employeeProjectInfos = [{"skills" : $("#skills").val(), "practice" : $("#practice").val(),"employementType" : $("#typeOfEmployment").val(),"designation" : $("#designation").val(), "projectName" : $("#projectName").val(), "reportingManager" : $("#reportingManager").val()}]
		empObj.employeeProjectInfos = employeeProjectInfos;
				
		$.post(_hermes.appContext + '/api/employee/edit/'+empId, JSON.stringify(empObj))
				.always(function(data) {
					$msg = $(document.createElement("div"));
					$msg.hide();
					$msg.attr("id", "msg");
					$msg.addClass("alert alert-warning fade in");
					$msg.html(data.responseText);
					$("#viewContainer").before($msg);
					$msg.show();
					setTimeout("$('#msg').slideUp(400,function(){$('#msg').remove();});",5000);
				});

		return false;
	}

	
	function changeProfilePicture(){
		$("#changePicture").dialog({
			 height: 200,
		     width: 350
		});
	}
