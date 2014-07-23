function ifmarried() {
	if ($("#maritalStatus").val() == "married") {
		$("#showIfMarried").css('display', '');
	} else {
		$("#showIfMarried").css('display', 'none');
	}
}

function ifhavevisa() {
	if ($("#typeOfVisa").val() != "NONE") {
		$("#ifhavevisa").css('display', '');
	} else {
		$("#ifhavevisa").css('display', 'none');
	}
}

function createEmployee() {
	if (validate()) {
		var empObj = new Object();
		empObj.empId = formatValue($("#empId").val());
		empObj.empFname = formatValue($("#fname").val());
		empObj.empMname = formatValue($("#mname").val());
		empObj.empLname = formatValue($("#lname").val());
		empObj.empGender = $("#gender").val();
		empObj.empBloodGroup = $("#bloodGroup").val();
		empObj.empDesignation = formatValue($("#designation").val());
		empObj.empDoj = formatValue($("#doj").val());
		empObj.empEmail = formatValue($("#email").val());
		empObj.empContact = formatValue($("#contact").val());
		empObj.empDob = formatValue($("#empDob").val());

		empObj.resumeName = null;

		empObj.employmentStatus = "A";
		empObj.empProfilePic = "FLDefault.png";

		var employeeFamilies = [ {
			"empFathersName" : formatValue($("#fathersName").val()),
			"empFathersContact" : formatValue($("#fathersContact").val()),
			"empFathersOccupation" : formatValue($("#fathersOccupation").val()),
			"empMothersName" : formatValue($("#mothersName").val()),
			"empMothersContact" : formatValue($("#mothersContact").val()),
			"empMothersOccupation" : formatValue($("#mothersOccupation").val()),
			"empMaritalStatus" : formatValue($("#maritalStatus").val()),
			"empSpouseFname" : formatValue($("#spouseName").val()),
			"empSpouseontact" : formatValue($("#spouseContact").val()),
			"empSpouseOccupation" : formatValue($("#spouseOccupation").val())
		} ];
		empObj.employeeFamilies = employeeFamilies;

		var employeeEmergencyInfos = [ {
			"emergencyPerson1Name" : formatValue($("#emergencyPerson1Name")
					.val()),
			"emergencyPerson1Relation" : formatValue($(
					"#emergencyPerson1Relation").val()),
			"emergencyPerson1Contact" : formatValue($(
					"#emergencyPerson1Contact").val()),
			"emergencyPerson2Name" : formatValue($("#emergencyPerson2Name")
					.val()),
			"emergencyPerson2Relation" : formatValue($(
					"#emergencyPerson2Relation").val()),
			"emergencyPerson2Contact" : formatValue($(
					"#emergencyPerson2Contact").val())
		} ];
		empObj.employeeEmergencyInfos = employeeEmergencyInfos;

		var employeeAddresses = [
				{
					"empAddressType" : "C",
					"empAddress" : formatValue($("#currentAddress").val()),
					"empAddressContact" : formatValue($(
							"#currentAddressContact").val())
				},
				{
					"empAddressType" : "P",
					"empAddress" : formatValue($("#permanentAddress").val()),
					"empAddressContact" : formatValue($(
							"#permanentAddressContact").val())
				} ]
		empObj.employeeAddresses = employeeAddresses;

		var employeeEducationalInfos = [ {
			"empUniversity" : formatValue($("#university").val()),
			"empCollege" : formatValue($("#college").val()),
			"empDegree" : formatValue($("#degree").val()),
			"empPassoutYear" : formatValue($("#passoutYear").val()),
			"empPercentage" : formatValue($("#percentage").val())
		} ];
		empObj.employeeEducationalInfos = employeeEducationalInfos;

		var employeeVerificationInfos = [ {
			"pancardNumber" : formatValue($("#panCardNumber").val()),
			"passportNumber" : formatValue($("#passportNumber").val()),
			"drivingLicenseNumber" : ""
		} ];
		empObj.employeeVerificationInfos = employeeVerificationInfos;

		var employeeVisaInfos = [ {
			"visaType" : $("#typeOfVisa").val(),
			"visaCountry" : formatValue($("#visaCountry").val()),
			"visaValidTill" : formatValue($("#visaValidTill").val())
		} ];
		empObj.employeeVisaInfos = employeeVisaInfos;

		var employeeProjectInfos = [ {
			"skills" : formatValue($("#skills").val()),
			"practice" : formatValue($("#practice").val()),
			"employementType" : formatValue($("#typeOfEmployment").val()),
			"projectRole" : formatValue($("#projectRole").val()),
			"projectName" : formatValue($("#projectName").val()),
			"reportingManager" : formatValue($("#reportingManager").val())
		} ]
		empObj.employeeProjectInfos = employeeProjectInfos;

		console.log(JSON.stringify(empObj));
		$
				.post('http://localhost:8080/FissionHRMS/saveEmployee?empObjecct='+JSON.stringify(empObj))
				.always(
						function(data) {
							console.log(data);
							$msg = $(document.createElement("div"));
							$msg.hide();
							$msg.attr("id", "msg");

							if (data.status == "200") {
								uploadimage();
								$msg.addClass("alert alert-success fade in");
								$msg.html(data.responseText);
							} else {
								$msg.addClass("alert alert-danger fade in");
								$msg.html("Error in creating employee.");
							}

							$("#viewContainer").before($msg);
							$msg.show();
							setTimeout(
									"$('#msg').slideUp(400,function(){$('#msg').remove();});",
									5000);

							// reloading iframe
							
						});

		return false;
	}
}

function uploadimage(){
	
}

$(function() {
	$("#doj").datepicker();
	$("#empDob").datepicker();
	$("#visaValidTill").datepicker();
});

function validate() {
	if (isEmpty("empId")) {
		alert("Employee Id can not be left blank.");
		return false;
	} else if (!containsOnlyAlphanumerics("empId")) {
		alert("Employee Id can only have alphanumerics.");
		return false;
	}

	else if (isEmpty("fname")) {
		alert("Employee first name can not be left blank.");
		return false;
	} else if (!containsOnlyAlphabets("fname")) {
		alert("Employee first name can have only alphabets.");
		return false;
	}

	else if (!isEmpty("mname") && !containsOnlyAlphabets("mname")) {
		alert("Employee middle name can have only alphabets.");
		return false;
	}

	else if (isEmpty("lname")) {
		alert("Employee last name can not be left blank.");
		return false;
	} else if (!containsOnlyAlphabets("lname")) {
		alert("Employee last name can have only alphabets.");
		return false;
	}

	else if (!isEmpty("contact") && !containsOnlyNumerics("contact")) {
		alert("Employee contacts can have only numerals.");
		return false;
	}

	else if (!isEmpty("fathersName") && !containsOnlyAlphabets("fathersName")) {
		alert("Father's name can only have alphabets.");
		return false;
	} else if (!isEmpty("fathersContact")
			&& !containsOnlyNumerics("fathersContact")) {
		alert("Father's contact can have only numerals.");
		return false;
	}

	else if (!isEmpty("mothersName") && !containsOnlyAlphabets("mothersName")) {
		alert("Mother's name can only have alphabets.");
		return false;
	} else if (!isEmpty("mothersContact")
			&& !containsOnlyNumerics("mothersContact")) {
		alert("Mother's contact can have only numerals.");
		return false;
	}

	else if (!isEmpty("spouseName") && !containsOnlyAlphabets("spouseName")) {
		alert("Spouse name can only have alphabets.");
		return false;
	} else if (!isEmpty("spouseContact")
			&& !containsOnlyNumerics("spouseContact")) {
		alert("Spouse contact can have only numerals.");
		return false;
	}

	else if (!isEmpty("emergencyPersonName")
			&& !containsOnlyAlphabets("emergencyPersonName")) {
		alert("Emergency contact person name can only have alphabets.");
		return false;
	} else if (!isEmpty("emergencyPersonRelation")
			&& !containsOnlyAlphabets("emergencyPersonRelation")) {
		alert("Emergency contact person's relation field can only have alphabets.");
		return false;
	} else if (!isEmpty("emergencyPersonContact")
			&& !containsOnlyNumerics("emergencyPersonContact")) {
		alert("Emergency contact person's contact field can only have numerals.");
		return false;
	}

	else if (!isEmpty("currentAddressContact")
			&& !containsOnlyNumerics("currentAddressContact")) {
		alert("Current address contact field can only have numerals.");
		return false;
	} else if (!isEmpty("permanentAddressContact")
			&& !containsOnlyNumerics("permanentAddressContact")) {
		alert("Permanent address contact field can only have numerals.");
		return false;
	}

	else if (!isEmpty("panCardNumber")
			&& !containsOnlyAlphanumerics("panCardNumber")) {
		alert("PAN card field can only have alphenumerics.");
		return false;
	}

	return true;
}

function setFileName() {
	if (isEmpty("empId")) {
		alert("Employee Id can not be left blank.");
		return false;
	} else if (!containsOnlyAlphanumerics("empId")) {
		alert("Employee Id can only have alphanumerics.");
		return false;
	}

	return true;

}

function checkfname(val) {
	var fname = val.value;
	var regexp = /^[a-zA-Z ]*$/;
	if (regexp.test(fname)) {
		return true;
		$("#fname").css('border', '1px solid #cccccc');
	} else {
		alert("Please enter Alphabits only");
		$("#fname").css('border', '2px solid Red');
		$("#fname").val('');
		$("#fname").focus();
		return false;
	}

}

function checkphoneno(val){
	var x = val.value;
	$("#empmobbilestatus").html(
	'<img align="absmiddle" src="http://localhost:8080/HRMS/resources/image/loader.GIF" style="margin-top: 4px;"/>');
	var regx = /^((\+)?[0-9]{1,3}( |-)?)?(\(?[0-9]{3}\)?|[0-9]{3})( |-)?([0-9]{3}( |-)?[0-9]{4}|[0-9]{7})$/;
	if (!(x.match(regx))) {
		alert("Please Enter Valid Phone no ");
		$("#contact").val('');
		$("#contact").css('border', '2px solid Red');
		$("#contact").focus();
		$("#empmobbilestatus").html(
		'<img align="absmiddle" src="http://localhost:8080/HRMS/resources/image/cross.png" style="margin-top: 4px;"/>');
		return false;
	} else {
		$("#contact").css('border', '1px solid #cccccc');
		checkmobileno(val);
	}
}