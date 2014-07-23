<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="taglib_includes.jsp"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
<!--
#msg {
	text-align: center;
}

-->
.photo-button {
	cursor: pointer;
	float: left;
	margin: 0px 10px 0px 0px;
	height: 30px;
	width: 150px;
	border: none;
	border-radius: 4px 4px 4px 4px;
	background-color: #608AB0;
	background-image: -webkit-linear-gradient(top, rgba(255, 255, 255, 0.2)
		0%, rgba(255, 255, 255, 0) 100%);
}
</style>
<script type="text/javascript" src="js/holder.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="scripts/createEmployee.js"></script>
<script type="text/javascript" src="scripts/common.js"></script>
<script type="text/javascript" src="scripts/validation.js"></script>
<script type="text/javascript" src="js/image.js"></script>
<body>


	<div class="container theme-showcase table-responsive">
		<div id="viewContainer">
			<br>
			<form class="form-horizontal">
				<div class="panel-group" id="accordion">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"> Basic Details </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-7">
										<br>
										<div class="form-group">
											<label for="empId" class="col-lg-3 control-label">Employee
												Id</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="empId"
													placeholder="Employee Id">
											</div>
											<br>
										</div>

										<div class="form-group">
											<label for="fname" class="col-lg-3 control-label">First
												Name</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="fname"
													placeholder="First Name">
											</div>
											<br>
										</div>

										<div class="form-group">
											<label for="mname" class="col-lg-3 control-label">Middle
												Name</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="mname"
													placeholder="Middle Name">
											</div>
											<br>
										</div>

										<div class="form-group">
											<label for="lname" class="col-lg-3 control-label">Last
												Name</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="lname"
													placeholder="Last Name">
											</div>
											<br>
										</div>
									</div>

									<div class="col-md-4">
										<div style="margin-left: 84px;">
											<img id="dynamicimg" alt="Profile Picture"
												style="width: 200px; height: 190px;"><br> <a
												style="margin-left: 40px;"
												onclick="document.getElementById('image').click();">Upload
												A Photo</a> <input style="display: none;" type="file"
												name="image" id="image" onchange="img(this)" />
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-md-12">
										<div class="form-group" style="margin-left: -45px;">
											<label for="typeOfEmployment" class="col-lg-2 control-label">Type
												Of Employment</label>
											<div class="col-lg-2">
												<select class="form-control" id="typeOfEmployment">
													<option value="fte">Full Time</option>
													<option value="intern">Intern</option>
													<option value="contractor">Contractor</option>
												</select>
											</div>

											<label class="col-lg-1 control-label"></label> <label
												for="doj" class="col-lg-3 control-label">Date Of
												Joining</label>
											<div class="col-lg-3">
												<input type="text" class="form-control" id="doj"
													placeholder="Date Of Joining"
													value="Apr 12, 2012 12:03:58 PM">
											</div>
											<br>
										</div>
										<br>

										<div class="form-group" style="margin-left: -45px;">
											<label for="contact" class="col-lg-2 control-label">Contact
												Number</label>
											<div class="col-lg-4 input-group">
												<input style="width: 200px ! important;" type="text"
													class="form-control" id="contact"
													placeholder="Contact Number" value="9999000088"
													onchange="checkmobileno(this);"><span
													id="empmobbilestatus"
													style="margin-left: 10px; margin-top: 4px;"></span>
											</div>

											<label for="email" class="col-lg-2 control-label">Email
												Id</label>
											<div class="col-lg-4 input-group">
												<input type="text" class="form-control" value="test"
													id="email" placeholder="Email-Id"
													onchange="checkemailid(this)"> <span
													class="input-group-addon"><i>@fissionlabs.in</i></span><span
													id="empemailstatus"
													style="margin-left: 10px; margin-top: 4px;"></span>
											</div>


											<br>
										</div>
										<br>
										<div class="form-group" style="margin-left: -45px;">
											<label for="gender" class="col-lg-2 control-label">Gender</label>
											<div class="col-lg-2">
												<select class="form-control" id="gender">
													<option value="M">Male</option>
													<option value="F">Female</option>
												</select>
											</div>

											<label class="col-lg-2 control-label"></label> <label
												for="bloodGroup" class="col-lg-2 control-label">Blood
												Group</label>
											<div class="col-lg-2">
												<select class="form-control" id="bloodGroup">
													<option value="A+">A+</option>
													<option value="A-">A-</option>
													<option value="B+">B+</option>
													<option value="B-">B-</option>
													<option value="AB+">AB+</option>
													<option value="AB-">AB-</option>
													<option value="O+">O+</option>
													<option value="O-">O-</option>
												</select>
											</div>
										</div>
										<br>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo"> Family Details </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">

								<div class="form-group">
									<label for="fathers" class="col-lg-2 control-label">Father</label>
									<div class="col-lg-8">
										<input type="text" class="form-control" value="test"
											id="fathersName" placeholder="Father's Name">
									</div>
								</div>
								<br>

								<div class="form-group">
									<label for="" class="col-lg-2 control-label"></label>
									<div class="col-lg-3">
										<input type="text" class="form-control" id="fathersContact"
											placeholder="Father's Contact Number" value="9999000088">
									</div>
									<div class="col-lg-3">
										<input type="text" class="form-control" value="test"
											id="fathersOccupation" placeholder="Father's Occupation">
									</div>
								</div>
								<br>

								<div class="form-group">
									<label for="mothers" class="col-lg-2 control-label">Mother</label>
									<div class="col-lg-8">
										<input type="text" class="form-control" value="test"
											id="mothersName" placeholder="Mother's Name">
									</div>
								</div>
								<br>

								<div class="form-group">
									<label for="" class="col-lg-2 control-label"></label>
									<div class="col-lg-3">
										<input type="text" class="form-control" id="mothersContact"
											placeholder="Mother's Contact Number" value="9999000088">
									</div>
									<div class="col-lg-3">
										<input type="text" class="form-control" value="test"
											id="mothersOccupation" placeholder="Mother's Occupation">
									</div>
								</div>
								<br>

								<div id="showIfMarried" style="display: none;">
									<div class="form-group">
										<label for="spouse" class="col-lg-2 control-label">Spouse</label>
										<div class="col-lg-8">
											<input type="text" class="form-control" value="test"
												id="spouseName" placeholder="Spouse's Name">
										</div>

									</div>
									<br>

									<div class="form-group">
										<label for="" class="col-lg-2 control-label"></label>
										<div class="col-lg-3">
											<input type="text" class="form-control" id="spouseContact"
												placeholder="Spouse's Contact Number">
										</div>
										<div class="col-lg-3">
											<input type="text" class="form-control" value="test"
												id="spouseOccupation" placeholder="Spouse's Occupation">
										</div>
									</div>
									<br>
								</div>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree"> Emergeny Contact Details </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="emergencyPerson1Name"
										class="col-lg-2 control-label">Name</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="emergencyPerson1Name" placeholder="Name">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="emergencyPerson1Relation"
										class="col-lg-2 control-label">Relation</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="emergencyPerson1Relation" placeholder="Relation">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="emergencyPerson1Contact"
										class="col-lg-2 control-label">Contact</label>
									<div class="col-lg-10">
										<input type="text" class="form-control"
											id="emergencyPerson1Contact" placeholder="Contact"
											value="9999000088">
									</div>
								</div>
								<br> <br> <br>
								<div class="form-group">
									<label for="emergencyPerson2Name"
										class="col-lg-2 control-label">Name</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="emergencyPerson2Name" placeholder="Name">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="emergencyPerson2Relation"
										class="col-lg-2 control-label">Relation</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="emergencyPerson2Relation" placeholder="Relation">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="emergencyPerson2Contact"
										class="col-lg-2 control-label">Contact</label>
									<div class="col-lg-10">
										<input type="text" class="form-control"
											id="emergencyPerson2Contact" placeholder="Contact"
											value="9999000088">
									</div>
								</div>
								<br>



							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour"> Address Details </a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="currentAddress" class="col-lg-2 control-label">Current
										Address</label>
									<div class="col-lg-10">
										<textarea class="form-control" value="test"
											id="currentAddress" placeholder="Current Address" rows="3"></textarea>
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="currentAddressContact"
										class="col-lg-2 control-label">Landline/Mobile</label>
									<div class="col-lg-10">
										<input type="text" class="form-control"
											id="currentAddressContact" placeholder="Landline/Mobile"
											value="9999000088">
									</div>
								</div>
								<br>

								<div class="form-group">
									<label for="permanentAddress" class="col-lg-2 control-label">Permanent
										Address</label>
									<div class="col-lg-10">
										<textarea class="form-control" value="test"
											id="permanentAddress" placeholder="Permanent Address"
											rows="3"></textarea>
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="permanentAddressContact"
										class="col-lg-2 control-label">Landline/Mobile</label>
									<div class="col-lg-10">
										<input type="text" class="form-control"
											id="permanentAddressContact" placeholder="Landline/Mobile"
											value="9999000088">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseFive"> Academic Details </a>
							</h4>
						</div>

						<div id="collapseFive" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="university" class="col-lg-2 control-label">University</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="university" placeholder="University">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="college" class="col-lg-2 control-label">College</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="college" placeholder="College">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="degree" class="col-lg-2 control-label">Degree</label>
									<div class="col-lg-2">
										<input type="text" class="form-control" value="test"
											id="degree" placeholder="Degree">
									</div>

									<label for="passoutYear" class="col-lg-2 control-label">Passout
										Year</label>
									<div class="col-lg-2">
										<input type="text" class="form-control" value="test"
											id="passoutYear" placeholder="Passout Year">
									</div>

									<label for="percentage" class="col-lg-2 control-label">Percentage/CGPA</label>
									<div class="col-lg-2">
										<input type="text" class="form-control" value="test"
											id="percentage" placeholder="Percentage">
									</div>
								</div>
								<br>
							</div>
						</div>
					</div>

					<!-- 
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion" href="#collapseSix"> Employement Details </a>
						</h4>
					</div>

					<div id="collapseSix" class="panel-collapse collapse">
						<div class="panel-body">
							<br>									
							<div class="form-group">
								<label class="col-lg-1"></label>
								<input type="checkbox" id="imfresher" class="col-lg-1 control-label">
								<label for="company" class="col-lg-4"> I am joining as a fresher.</label>
							</div>							
							<br>			
							
							<div class="form-group">
								<label for="company" class="col-lg-2 control-label"> Company Name</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="company" placeholder="Company Name">
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="employementDesignation" class="col-lg-2 control-label"> Designation</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementDesignation" placeholder="Designation">
								</div>

								<label for="employementStartDate" class="col-lg-2 control-label"> Start Date</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementStartDate" placeholder="Start Date">
								</div>

								<label for="employementReleivingDate" class="col-lg-2 control-label"> Releiving Date</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementReleivingDate" placeholder="Releiving Date">
								</div>

							</div>
							<br>
							<div class="form-group">
								<label for="employementReference1Name" class="col-lg-2 control-label"> Reference Name</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="employementReference1Name" placeholder="Reference Name">
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="employementReference1Designation" class="col-lg-2 control-label"> Designation</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementReference1Designation" placeholder="Designation">
								</div>

								<label for="employementReference1Email" class="col-lg-2 control-label"> Email</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementReference1Email" placeholder="Email">
								</div>

								<label for="employementReference1Contact" class="col-lg-2 control-label"> Contact</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementReference1Contact" placeholder="Contact">
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="employementReference2Name" class="col-lg-2 control-label"> Reference Name</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="employementReference2Name" placeholder="Reference Name">
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="employementReference2Designation" class="col-lg-2 control-label"> Designation</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementReference2Designation" placeholder="Designation">
								</div>

								<label for="employementReference2Email" class="col-lg-2 control-label"> Email</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementReference2Email" placeholder="Email">
								</div>

								<label for="employementReference2Contact" class="col-lg-2 control-label"> Contact</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" id="employementReference2Contact" placeholder="Contact">
								</div>
							</div>
							<br>
						</div>
					</div>
				</div> 
				
				
				-->


					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseSix"> Verification Details </a>
							</h4>
						</div>

						<div id="collapseSix" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="empDob" class="col-lg-2 control-label">Date
										Of Birth (As per certificate)</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" id="empDob"
											placeholder="Date Of Birth (As per certificate)"
											value="07/15/2014">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="panCardNumber" class="col-lg-2 control-label">PAN
										Card Details</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="panCardNumber" placeholder="PAN Card Details">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="passportNumber" class="col-lg-2 control-label">Passport
										Number</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="passportNumber" placeholder="Passport Number">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="typeOfVisa" class="col-lg-2 control-label">Type
										Of Visa</label>
									<div class="col-lg-2">
										<select class="form-control" id="typeOfVisa"
											onchange="ifhavevisa()">
											<option value="NONE">None</option>
											<option value="H-1B">H-1B</option>
											<option value="H-1B1">H-1B1</option>
										</select>
									</div>
									<div id="ifhavevisa" style="display: none">
										<label for="visaCountry" class="col-lg-2 control-label">Country</label>
										<div class="col-lg-2">
											<select class="form-control" id="visaCountry">
												<option value="">Country...</option>
												<option value="Afganistan">Afghanistan</option>
												<option value="Albania">Albania</option>
												<option value="Algeria">Algeria</option>
												<option value="American Samoa">American Samoa</option>
												<option value="Andorra">Andorra</option>
												<option value="Angola">Angola</option>
												<option value="Anguilla">Anguilla</option>
												<option value="Antigua &amp; Barbuda">Antigua &amp;
													Barbuda</option>
												<option value="Argentina">Argentina</option>
												<option value="Armenia">Armenia</option>
												<option value="Aruba">Aruba</option>
												<option value="Australia">Australia</option>
												<option value="Austria">Austria</option>
												<option value="Azerbaijan">Azerbaijan</option>
												<option value="Bahamas">Bahamas</option>
												<option value="Bahrain">Bahrain</option>
												<option value="Bangladesh">Bangladesh</option>
												<option value="Barbados">Barbados</option>
												<option value="Belarus">Belarus</option>
												<option value="Belgium">Belgium</option>
												<option value="Belize">Belize</option>
												<option value="Benin">Benin</option>
												<option value="Bermuda">Bermuda</option>
												<option value="Bhutan">Bhutan</option>
												<option value="Bolivia">Bolivia</option>
												<option value="Bonaire">Bonaire</option>
												<option value="Bosnia &amp; Herzegovina">Bosnia
													&amp; Herzegovina</option>
												<option value="Botswana">Botswana</option>
												<option value="Brazil">Brazil</option>
												<option value="British Indian Ocean Ter">British
													Indian Ocean Ter</option>
												<option value="Brunei">Brunei</option>
												<option value="Bulgaria">Bulgaria</option>
												<option value="Burkina Faso">Burkina Faso</option>
												<option value="Burundi">Burundi</option>
												<option value="Cambodia">Cambodia</option>
												<option value="Cameroon">Cameroon</option>
												<option value="Canada">Canada</option>
												<option value="Canary Islands">Canary Islands</option>
												<option value="Cape Verde">Cape Verde</option>
												<option value="Cayman Islands">Cayman Islands</option>
												<option value="Central African Republic">Central
													African Republic</option>
												<option value="Chad">Chad</option>
												<option value="Channel Islands">Channel Islands</option>
												<option value="Chile">Chile</option>
												<option value="China">China</option>
												<option value="Christmas Island">Christmas Island</option>
												<option value="Cocos Island">Cocos Island</option>
												<option value="Colombia">Colombia</option>
												<option value="Comoros">Comoros</option>
												<option value="Congo">Congo</option>
												<option value="Cook Islands">Cook Islands</option>
												<option value="Costa Rica">Costa Rica</option>
												<option value="Cote DIvoire">Cote D'Ivoire</option>
												<option value="Croatia">Croatia</option>
												<option value="Cuba">Cuba</option>
												<option value="Curaco">Curacao</option>
												<option value="Cyprus">Cyprus</option>
												<option value="Czech Republic">Czech Republic</option>
												<option value="Denmark">Denmark</option>
												<option value="Djibouti">Djibouti</option>
												<option value="Dominica">Dominica</option>
												<option value="Dominican Republic">Dominican
													Republic</option>
												<option value="East Timor">East Timor</option>
												<option value="Ecuador">Ecuador</option>
												<option value="Egypt">Egypt</option>
												<option value="El Salvador">El Salvador</option>
												<option value="Equatorial Guinea">Equatorial Guinea</option>
												<option value="Eritrea">Eritrea</option>
												<option value="Estonia">Estonia</option>
												<option value="Ethiopia">Ethiopia</option>
												<option value="Falkland Islands">Falkland Islands</option>
												<option value="Faroe Islands">Faroe Islands</option>
												<option value="Fiji">Fiji</option>
												<option value="Finland">Finland</option>
												<option value="France">France</option>
												<option value="French Guiana">French Guiana</option>
												<option value="French Polynesia">French Polynesia</option>
												<option value="French Southern Ter">French Southern
													Ter</option>
												<option value="Gabon">Gabon</option>
												<option value="Gambia">Gambia</option>
												<option value="Georgia">Georgia</option>
												<option value="Germany">Germany</option>
												<option value="Ghana">Ghana</option>
												<option value="Gibraltar">Gibraltar</option>
												<option value="Great Britain">Great Britain</option>
												<option value="Greece">Greece</option>
												<option value="Greenland">Greenland</option>
												<option value="Grenada">Grenada</option>
												<option value="Guadeloupe">Guadeloupe</option>
												<option value="Guam">Guam</option>
												<option value="Guatemala">Guatemala</option>
												<option value="Guinea">Guinea</option>
												<option value="Guyana">Guyana</option>
												<option value="Haiti">Haiti</option>
												<option value="Hawaii">Hawaii</option>
												<option value="Honduras">Honduras</option>
												<option value="Hong Kong">Hong Kong</option>
												<option value="Hungary">Hungary</option>
												<option value="Iceland">Iceland</option>
												<option value="India">India</option>
												<option value="Indonesia">Indonesia</option>
												<option value="Iran">Iran</option>
												<option value="Iraq">Iraq</option>
												<option value="Ireland">Ireland</option>
												<option value="Isle of Man">Isle of Man</option>
												<option value="Israel">Israel</option>
												<option value="Italy">Italy</option>
												<option value="Jamaica">Jamaica</option>
												<option value="Japan">Japan</option>
												<option value="Jordan">Jordan</option>
												<option value="Kazakhstan">Kazakhstan</option>
												<option value="Kenya">Kenya</option>
												<option value="Kiribati">Kiribati</option>
												<option value="Korea North">Korea North</option>
												<option value="Korea Sout">Korea South</option>
												<option value="Kuwait">Kuwait</option>
												<option value="Kyrgyzstan">Kyrgyzstan</option>
												<option value="Laos">Laos</option>
												<option value="Latvia">Latvia</option>
												<option value="Lebanon">Lebanon</option>
												<option value="Lesotho">Lesotho</option>
												<option value="Liberia">Liberia</option>
												<option value="Libya">Libya</option>
												<option value="Liechtenstein">Liechtenstein</option>
												<option value="Lithuania">Lithuania</option>
												<option value="Luxembourg">Luxembourg</option>
												<option value="Macau">Macau</option>
												<option value="Macedonia">Macedonia</option>
												<option value="Madagascar">Madagascar</option>
												<option value="Malaysia">Malaysia</option>
												<option value="Malawi">Malawi</option>
												<option value="Maldives">Maldives</option>
												<option value="Mali">Mali</option>
												<option value="Malta">Malta</option>
												<option value="Marshall Islands">Marshall Islands</option>
												<option value="Martinique">Martinique</option>
												<option value="Mauritania">Mauritania</option>
												<option value="Mauritius">Mauritius</option>
												<option value="Mayotte">Mayotte</option>
												<option value="Mexico">Mexico</option>
												<option value="Midway Islands">Midway Islands</option>
												<option value="Moldova">Moldova</option>
												<option value="Monaco">Monaco</option>
												<option value="Mongolia">Mongolia</option>
												<option value="Montserrat">Montserrat</option>
												<option value="Morocco">Morocco</option>
												<option value="Mozambique">Mozambique</option>
												<option value="Myanmar">Myanmar</option>
												<option value="Nambia">Nambia</option>
												<option value="Nauru">Nauru</option>
												<option value="Nepal">Nepal</option>
												<option value="Netherland Antilles">Netherland
													Antilles</option>
												<option value="Netherlands">Netherlands (Holland,
													Europe)</option>
												<option value="Nevis">Nevis</option>
												<option value="New Caledonia">New Caledonia</option>
												<option value="New Zealand">New Zealand</option>
												<option value="Nicaragua">Nicaragua</option>
												<option value="Niger">Niger</option>
												<option value="Nigeria">Nigeria</option>
												<option value="Niue">Niue</option>
												<option value="Norfolk Island">Norfolk Island</option>
												<option value="Norway">Norway</option>
												<option value="Oman">Oman</option>
												<option value="Pakistan">Pakistan</option>
												<option value="Palau Island">Palau Island</option>
												<option value="Palestine">Palestine</option>
												<option value="Panama">Panama</option>
												<option value="Papua New Guinea">Papua New Guinea</option>
												<option value="Paraguay">Paraguay</option>
												<option value="Peru">Peru</option>
												<option value="Phillipines">Philippines</option>
												<option value="Pitcairn Island">Pitcairn Island</option>
												<option value="Poland">Poland</option>
												<option value="Portugal">Portugal</option>
												<option value="Puerto Rico">Puerto Rico</option>
												<option value="Qatar">Qatar</option>
												<option value="Republic of Montenegro">Republic of
													Montenegro</option>
												<option value="Republic of Serbia">Republic of
													Serbia</option>
												<option value="Reunion">Reunion</option>
												<option value="Romania">Romania</option>
												<option value="Russia">Russia</option>
												<option value="Rwanda">Rwanda</option>
												<option value="St Barthelemy">St Barthelemy</option>
												<option value="St Eustatius">St Eustatius</option>
												<option value="St Helena">St Helena</option>
												<option value="St Kitts-Nevis">St Kitts-Nevis</option>
												<option value="St Lucia">St Lucia</option>
												<option value="St Maarten">St Maarten</option>
												<option value="St Pierre &amp; Miquelon">St Pierre
													&amp; Miquelon</option>
												<option value="St Vincent &amp; Grenadines">St
													Vincent &amp; Grenadines</option>
												<option value="Saipan">Saipan</option>
												<option value="Samoa">Samoa</option>
												<option value="Samoa American">Samoa American</option>
												<option value="San Marino">San Marino</option>
												<option value="Sao Tome &amp; Principe">Sao Tome
													&amp; Principe</option>
												<option value="Saudi Arabia">Saudi Arabia</option>
												<option value="Senegal">Senegal</option>
												<option value="Serbia">Serbia</option>
												<option value="Seychelles">Seychelles</option>
												<option value="Sierra Leone">Sierra Leone</option>
												<option value="Singapore">Singapore</option>
												<option value="Slovakia">Slovakia</option>
												<option value="Slovenia">Slovenia</option>
												<option value="Solomon Islands">Solomon Islands</option>
												<option value="Somalia">Somalia</option>
												<option value="South Africa">South Africa</option>
												<option value="Spain">Spain</option>
												<option value="Sri Lanka">Sri Lanka</option>
												<option value="Sudan">Sudan</option>
												<option value="Suriname">Suriname</option>
												<option value="Swaziland">Swaziland</option>
												<option value="Sweden">Sweden</option>
												<option value="Switzerland">Switzerland</option>
												<option value="Syria">Syria</option>
												<option value="Tahiti">Tahiti</option>
												<option value="Taiwan">Taiwan</option>
												<option value="Tajikistan">Tajikistan</option>
												<option value="Tanzania">Tanzania</option>
												<option value="Thailand">Thailand</option>
												<option value="Togo">Togo</option>
												<option value="Tokelau">Tokelau</option>
												<option value="Tonga">Tonga</option>
												<option value="Trinidad &amp; Tobago">Trinidad
													&amp; Tobago</option>
												<option value="Tunisia">Tunisia</option>
												<option value="Turkey">Turkey</option>
												<option value="Turkmenistan">Turkmenistan</option>
												<option value="Turks &amp; Caicos Is">Turks &amp;
													Caicos Is</option>
												<option value="Tuvalu">Tuvalu</option>
												<option value="Uganda">Uganda</option>
												<option value="Ukraine">Ukraine</option>
												<option value="United Arab Erimates">United Arab
													Emirates</option>
												<option value="United Kingdom">United Kingdom</option>
												<option value="USA">United States of America</option>
												<option value="Uraguay">Uruguay</option>
												<option value="Uzbekistan">Uzbekistan</option>
												<option value="Vanuatu">Vanuatu</option>
												<option value="Vatican City State">Vatican City
													State</option>
												<option value="Venezuela">Venezuela</option>
												<option value="Vietnam">Vietnam</option>
												<option value="Virgin Islands (Brit)">Virgin
													Islands (Brit)</option>
												<option value="Virgin Islands (USA)">Virgin Islands
													(USA)</option>
												<option value="Wake Island">Wake Island</option>
												<option value="Wallis &amp; Futana Is">Wallis &amp;
													Futana Is</option>
												<option value="Yemen">Yemen</option>
												<option value="Zaire">Zaire</option>
												<option value="Zambia">Zambia</option>
												<option value="Zimbabwe">Zimbabwe</option>
											</select>
										</div>
										<label for="validTill" class="col-lg-2 control-label">Valid
											Till</label>
										<div class="col-lg-2">
											<input type="text" class="form-control" value="test"
												id="visaValidTill" placeholder="Valid Till">
										</div>
									</div>
								</div>
								<br>

							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseSeven"> Project Details </a>
							</h4>
						</div>

						<div id="collapseSeven" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="skills" class="col-lg-2 control-label">Skills</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="skills" placeholder="Skills">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="practice" class="col-lg-2 control-label">Practice</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="practice" placeholder="Practice">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="projectRole" class="col-lg-2 control-label">Project
										Role</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="projectRole" placeholder="Project Role">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="projectName" class="col-lg-2 control-label">Project
										Name</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="projectName" placeholder="Project Name">
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="reportingManager" class="col-lg-2 control-label">Reporting
										Manager</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="test"
											id="reportingManager" placeholder="Reporting Manager">
									</div>
								</div>
								<br>
							</div>
						</div>


					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseEight"> Attach Resume </a>
							</h4>
						</div>
						<div id="collapseEight" class="panel-collapse collapse">
							<div class="panel-body">
								<%@include file="upload.jsp"%>
							</div>
						</div>
					</div>



				</div>
				<br>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<button type="button" class="btn btn-primary"
							onclick="createEmployee()">Create Employee</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>