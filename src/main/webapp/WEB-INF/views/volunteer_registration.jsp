<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>Divyang</title>
<link rel="shortcut icon" href="resources/assets/img/favicon.png" />
<meta name="description" content="" />
<!-- CSS -->
<link href="resources/assets/css/preload.css" rel="stylesheet" />
<!-- Compiled in vendors.js -->
<!--
         <link href="assets/css/bootstrap.min.css" rel="stylesheet">
         <link href="assets/css/bootstrap-switch.min.css" rel="stylesheet">
         <link href="assets/css/font-awesome.min.css" rel="stylesheet">
         <link href="assets/css/animate.min.css" rel="stylesheet">
         <link href="assets/css/slidebars.min.css" rel="stylesheet">
         <link href="assets/css/lightbox.css" rel="stylesheet">
         <link href="assets/css/jquery.bxslider.css" rel="stylesheet" />
         <link href="assets/css/buttons.css" rel="stylesheet">
         -->
<link href="resources/assets/css/vendors.css" rel="stylesheet" />
<link href="resources/assets/css/syntaxhighlighter/shCore.css"
	rel="stylesheet" />
<!-- RS5.0 Stylesheet -->
<!--<link rel="stylesheet" type="text/css" href="assets/css/settings.css">
         <link rel="stylesheet" type="text/css" href="assets/css/layers.css">
         <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">-->
<!-- stepper -->
<!--Import Multi Step Indicator css-->
<link href="resources/stepper/css/gsi-step-indicator.min.css"
	rel="stylesheet" />
<!--Import  Step Form Wizard css-->
<link href="resources/stepper/css/tsf-step-form-wizard.min.css"
	rel="stylesheet" />
<!--Import  demo css-->
<link href="resources/stepper/css/demo.min.css" rel="stylesheet" />
<!--Plugin for validation-->
<link href="resources/stepper/plugin/parsley/css/parsley.css"
	rel="stylesheet" />
<!-- stepper -->
<link href="resources/assets/css/style-blue.css" rel="stylesheet"
	title="default" />
<link href="resources/assets/css/width-full.css" rel="stylesheet"
	title="default" />
<link href="resources/assets/css/custom.css" rel="stylesheet"
	title="default" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="assets/js/html5shiv.min.js"></script>
      <script src="assets/js/respond.min.js"></script>
      <![endif]-->
</head>
<!-- Preloader -->
<div id="preloader">
	<div id="status">&nbsp;</div>
</div>

<script type="text/javascript">
	function volunteerRegistration() {

		var firstName = $('#firstName').val();
		var lastName = $('#lastName').val();
		var phoneNumber = $('#phoneNumber').val();
		var email = $('#email').val();
		var skills = $('#skills').val();
		var occupation = $('#occupation').val();
		var age = $('#age').val();
		var bloodGroup = $('#bloodGroup').val();
		var city = $('#city').val();
		var gender = $('#gender').val();
		var volunteerPassword = $('#volunteerPassword').val();
		var confirmPassword = $('#confirmPassword').val();

		var dataString = $('form[name=volunteerRegistrationForm]').serialize();

		//console.log(dataString);

		if (firstName == "") {
			alert('Please Enter First Name');
			$("#firstName").focus();
			return false;
		}

		if (lastName == "") {
			alert('Please Enter Last Name');
			$("#lastName").focus();
			return false;
		}

		if (phoneNumber == "") {
			alert('Please Enter Phone Number');
			$("#phoneNumber").focus();
			return false;
		}

		if (email == "") {
			alert('Please Enter Email');
			$("#email").focus();
			return false;
		}

		if (skills == "") {
			alert('Please Enter Skills');
			$("#skills").focus();
			return false;
		}

		if (occupation == "") {
			alert('Please Enter Occupation');
			$("#occupation").focus();
			return false;
		}

		if (age == "") {
			alert('Please Enter Age');
			$("#age").focus();
			return false;
		}

		if (bloodGroup == "0") {
			alert('Please Select Blood Group');
			$("#bloodGroup").focus();
			return false;
		}

		if (city == "") {
			alert('Please Enter City');
			$("#city").focus();
			return false;
		}

		if (gender == "") {
			alert('Please Select Gender');
			$("#gender").focus();
			return false;
		}

		if (volunteerPassword == "") {
			alert('Please Enter Password');
			$("#volunteerPassword").focus();
			return false;
		}

		if (confirmPassword == "") {
			alert('Please Enter Confirm Password');
			$("#confirmPassword").focus();
			return false;
		}

		if (volunteerPassword != confirmPassword) {

			alert('Passwords Do not Match');
			$("#volunteerPassword").focus();
			$("#confirmPassword").focus();
			return false;

		}

		$.ajax({
			url : '/divyangjan/volunteerRegistration',
			data : dataString,
			type : 'POST',
			success : function(data) {

				if (data.trim() == "1") {
					alert("Phone Number Already Exists");

				} else if (data.trim() == "signout") {

					location.href = "/divyangjan/logout";

				} else if (data.trim() == "2") {

					alert("Email Already Exists");

				} else if (data.trim() == "3") {

					alert("Company Name Already Exists");

				} else if (data.trim() == "4") {

					alert("Data Submitted Successfully");

					location.href = "indexPage";
				} else {

					alert("Data not Submited");

				}
			}
		});

	}
</script>

<body>
	<div class="sb-site-container">
		<div class="boxed">

			<jsp:include page="header.jsp" />

			<div class="container content-container-services">
				<section class="margin-bottom">
					<div class="row">
						<div class="col-md-12">
							<h2 class="right-line">Volunteers Registration</h2>
						</div>

					</div>
					<!-- row -->
					<div class="row">

						<div class="col-md-12">
							<div class="panel panel-primary post">
								<div class="b_bottom" style="padding-bottom: 12px;">
									<strong>Volunteers</strong>
								</div>
								<div class="panel-body">
									<springForm:form name="volunteerRegistrationForm" method="POST"
										commandName="volunteerRegistration">
										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label for="First name">First Name</label>
													<springForm:input type="text" class="form-control"
														id="firstName" name="firstName" path="firstName"
														placeholder="First Name" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="Last name">Last Name</label>
													<springForm:input type="text" class="form-control"
														id="lastName" name="lastName" path="lastName"
														placeholder="Last Name" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="orgphone">Phone number</label>
													<springForm:input type="tel" class="form-control"
														id="phoneNumber" name="phoneNumber" path="phoneNumber"
														placeholder="Phone Number" />
												</div>
											</div>

											<div class="col-md-3">
												<div class="form-group">
													<label for="orgemail">Email</label>
													<springForm:input type="email" name="email" path="email"
														class="form-control" id="email"
														placeholder="Organization eamil" />
												</div>
											</div>



										</div>
										<div class="row">

											<div class="col-md-3">
												<div class="form-group">
													<label for="orgphone">Skills</label>
													<springForm:input type="tel" name="skills" path="skills"
														class="form-control" id="skills"
														placeholder="Typewriting,drawing,....." />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="occupation">Occupation</label>
													<springForm:input type="text" class="form-control"
														id="occupation" name="occupation" path="occupation"
														placeholder="Occupation" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="age">Age</label>
													<springForm:input type="text" name="age" path="age"
														class="form-control" id="age" placeholder="Age" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="linkedlink">Blood Group</label>
													<springForm:select class="form-control" id="bloodGroup"
														aria-required="true" name="bloodGroup" path="bloodGroup"
														aria-invalid="true">
														<option value="">Select...</option>
														<option value="A+">A+</option>
														<option value="B+">B+</option>
														<option value="O+">O+</option>
														<option value="AB+">AB+</option>
														<option value="A-">A-</option>
														<option value="O-">O-</option>
														<option value="B-">B-</option>
														<option value="AB-">AB-</option>

													</springForm:select>
												</div>
											</div>
										</div>
										<div class="row">

											<div class="col-md-3">
												<div class="form-group">
													<label for="city">City</label>
													<springForm:input type="text" name="city" path="city"
														class="form-control" id="city" placeholder="city" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Gender</label><br /> <label
														class="radio-inline"> <springForm:radiobutton
															path="gender" id="gender1" value="male" checked="true" />Male
													</label> <label class="radio-inline"> <springForm:radiobutton
															path="gender" id="gender2" value="female" />Female
													</label>


												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="city">Password</label>
													<springForm:input type="password" name="volunteerPassword"
														path="volunteerPassword" class="form-control"
														id="volunteerPassword" placeholder="Password" />
												</div>
											</div>

											<div class="col-md-3">
												<div class="form-group">
													<label for="city">Confirm Password</label> <input
														name="companyName" type="password" class="form-control"
														id="confirmPassword" name="confirmPassword"
														placeholder="Conform Password" />
												</div>
											</div>


										</div>
									</springForm:form>





									<div class="row">
										<div class="col-md-12" style="text-align: center;">
											<button type="submit" class="btn btn-ar btn-primary"
												onclick="volunteerRegistration()">Submit</button>
										</div>
									</div>


								</div>



							</div>
						</div>

					</div>
				</section>
			</div>

		</div>






		<!-- footer-widgets -->
		<footer id="footer">
			<p>
				&copy; 2019 <a href="#">DivyangIndia</a>, All rights reserved.
			</p>
		</footer>

	</div>
	<!-- boxed -->

	<div id="back-top">
		<a href="#header"><i class="fa fa-chevron-up"></i></a>
	</div>

	<!-- Scripts -->
	<!-- Compiled in vendors.js -->
	<!--
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.cookie.js"></script>
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-switch.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/slidebars.min.js"></script>
<script src="assets/js/jquery.bxslider.min.js"></script>
<script src="assets/js/holder.js"></script>
<script src="assets/js/buttons.js"></script>
<script src="assets/js/jquery.mixitup.min.js"></script>
<script src="assets/js/circles.min.js"></script>
<script src="assets/js/masonry.pkgd.min.js"></script>
<script src="assets/js/jquery.matchHeight-min.js"></script>
-->

	<script src="resources/assets/js/vendors.js"></script>

	<!--<script type="text/javascript" src="assets/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
<script type="text/javascript" src="assets/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>-->



	<!-- stepper -->

	<script src="resources/stepper/js/demo.js"></script>

	<!--Plugin for validation-->
	<script src="resources/stepper/plugin/parsley/js/parsley.min.js"></script>
	<script src="resources/stepper/js/tsf-wizard-plugin.js"></script>

	<script>
		$(function() {
			pageLoadScript();
		});

		function pageLoadScript() {

			_stepEffect = $('#stepEffect').val();
			_style = 'style1';
			_stepTransition = $('#stepTransition').is(':checked');
			_showButtons = $('#showButtons').is(':checked');
			_showStepNum = $('#showStepNum').is(':checked');

			$('.tsf-wizard-1').tsfWizard({
				stepEffect : _stepEffect,
				stepStyle : _style,
				navPosition : 'top',
				stepTransition : _stepTransition,
				showButtons : _showButtons,
				showStepNum : _showStepNum,
				height : '300px'
			});

		}
	</script>
	<!-- stepper -->


	<script src="assets/js/styleswitcher.js"></script>

	<!-- Syntaxhighlighter -->
	<script src="resources/assets/js/syntaxhighlighter/shCore.js"></script>
	<script src="resources/assets/js/syntaxhighlighter/shBrushXml.js"></script>
	<script src="resources/assets/js/syntaxhighlighter/shBrushJScript.js"></script>

	<script src="resources/assets/js/DropdownHover.js"></script>
	<script src="resources/assets/js/app.js"></script>
	<!-- <script src="assets/js/holder.js"></script> -->
	<script src="resources/assets/js/index.js"></script>

</body>


</html>