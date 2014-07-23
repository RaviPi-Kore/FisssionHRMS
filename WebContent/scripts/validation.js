function checkemployeeid(val) {
	$("#empidstatus").html(
			'<img align="absmiddle" src="http://localhost:8080/HRMS/resources/image/loader.GIF" style="margin-top: 4px;"/>');
	var ajax = new XMLHttpRequest();
	ajax.open("Get", "http://localhost:8080/HRMS/api/employee/checkemployeeid/"+val.value, true);
	ajax.send();
	ajax.onreadystatechange = function() {
		if (ajax.readyState == 4 && (ajax.status == 200 || ajax.status == 0)) {
			var data = ajax.responseText;
			if (data == "ok") {
				$("#empidstatus").html(
						'<img src="http://localhost:8080/HRMS/resources/image/check.gif" align="absmiddle" style="margin-top: -3px;">')
			} else {
				alert("The Employee Id already exist");
				$("#empId").val('');
				$("#empId").css('border', '2px solid Red');
				$("#empId").focus();
				$("#empidstatus")
						.html(
								'<p style="color:red";>Employee Id already exist</p>')
			}
		}
	}

}
function checkemailid(val) {
	$("#empemailstatus").html(
			'<img align="absmiddle" src="http://localhost:8080/HRMS/resources/image/loader.GIF" style="margin-top: 4px;"/>');
	var ajax = new XMLHttpRequest();
	ajax.open("Get", "http://localhost:8080/HRMS/api/employee/checkemployeemailid/"+val.value+"@fissionlabs.in", true);
	ajax.send();
	ajax.onreadystatechange = function() {
		if (ajax.readyState == 4 && (ajax.status == 200 || ajax.status == 0)) {
			var data = ajax.responseText;
			if (data == "ok") {
				$("#empemailstatus").html(
						'<img src="http://localhost:8080/HRMS/resources/image/check.gif" align="absmiddle" style="margin-top: -3px;">')
			} else {
				alert("The Email Id already exist");
				$("#email").val('');
				$("#email").css('border', '2px solid Red');
				$("#email").focus();
				$("#empemailstatus")
						.html(
								'<p style="color:red";>Email Id already exist</p>')
			}
		}
	}

}
function checkmobileno(val) {
	$("#empmobbilestatus").html(
			'<img align="absmiddle" src="http://localhost:8080/HRMS/resources/image/loader.GIF" style="margin-top: 4px;"/>');
	var ajax = new XMLHttpRequest();
	ajax.open("Get", "http://localhost:8080/HRMS/api/employee/checkemployeemobileno/"+val.value, true);
	ajax.send();
	ajax.onreadystatechange = function() {
		if (ajax.readyState == 4 && (ajax.status == 200 || ajax.status == 0)) {
			var data = ajax.responseText;
			if (data == "ok") {
				$("#empmobbilestatus").html(
						'<img src="http://localhost:8080/HRMS/resources/image/check.gif" align="absmiddle" style="margin-top: -3px;">')
			} else {
				alert("Mobile No already exist");
				$("#contact").val('');
				$("#contact").css('border', '2px solid Red');
				$("#contact").focus();
				$("#empmobbilestatus")
						.html(
								'<p style="color:red";>Mobile No already exist</p>')
			}
		}
	}

}