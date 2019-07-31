
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
	function organizationRegistration() {

		var companyName = $('#companyName').val();
		var location = $('#location').val();
		var phoneNumber = $('#phoneNumber').val();
		var personName = $('#personName').val();
		var email = $('#email').val();
		var landLinenumber = $('#landLinenumber').val();
		var industryType = $('#industryType').val();
		var companyWebsiteLink = $('#companyWebsiteLink').val();
		var registeredCity = $('#registeredCity').val();
		var orgPassword = $('#orgPassword').val();
		var confirmPassword = $('#confirmPassword').val();

		var dataString = $('form[name=organizationRegistrationForm]')
				.serialize();

		//console.log(dataString);

		if (companyName == "") {
			alert('Please Enter Company Name');
			$("#companyName").focus();
			return false;
		}

		if (location == "") {
			alert('Please Enter Location');
			$("#location").focus();
			return false;
		}

		if (phoneNumber == "") {
			alert('Please Enter Phone Number');
			$("#phoneNumber").focus();
			return false;
		}

		if (personName == "") {
			alert('Please Enter Person Name');
			$("#personName").focus();
			return false;
		}

		if (email == "") {
			alert('Please Enter Email');
			$("#email").focus();
			return false;
		}

		if (landLinenumber == "") {
			alert('Please Enter Land Line Number');
			$("#landLinenumber").focus();
			return false;
		}

		if (industryType == "0") {
			alert('Please Select  Industry Type');
			$("#industryType").focus();
			return false;
		}

		if (companyWebsiteLink == "") {
			alert('Please Enter Company Website Link');
			$("#companyWebsiteLink").focus();
			return false;
		}

		if (registeredCity == "") {
			alert('Please Enter Registered City');
			$("#registeredCity").focus();
			return false;
		}

		if (orgPassword == "") {
			alert('Please Enter Password');
			$("#orgPassword").focus();
			return false;
		}

		if (confirmPassword == "") {
			alert('Please Enter Confirm Password');
			$("#confirmPassword").focus();
			return false;
		}

		if (orgPassword != confirmPassword) {

			alert('Passwords Do not Match');
			$("#confirmPassword").focus();
			return false;

		}

		$.ajax({
			url : '/divyangjan/organizationRegistration',
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
							<h2 class="right-line">Organization Registration</h2>
						</div>

					</div>
					<!-- row -->
					<div class="row">

						<div class="col-md-12">
							<div class="panel panel-primary post">
								<div class="b_bottom" style="padding-bottom: 12px;">
									<strong>Organization Registration</strong>
								</div>
								<div class="panel-body">
									<springForm:form name="organizationRegistrationForm"
										method="POST" commandName="organizationRegistration">
										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label for="First name">Company Name</label>
													<springForm:input type="text" class="form-control"
														id="companyName" name="companyName" path="companyName"
														placeholder="Company Name" />
												</div>
											</div>



											<div class="col-md-3">
												<div class="form-group">
													<label for="Location">Location</label>
													<springForm:input type="text" class="form-control"
														id="location" name="location" path="location"
														placeholder="Location" />
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
													<label for="personname">Person name</label>
													<springForm:input type="text" class="form-control"
														id="personName" name="personName" path="personName"
														placeholder="Person Name" />
												</div>
											</div>



										</div>
										<div class="row">

											<div class="col-md-3">
												<div class="form-group">
													<label for="orgemail">Email</label>
													<springForm:input type="email" class="form-control"
														id="email" name="email" path="email"
														placeholder="Company Email" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="landlinenumber">Landline Number</label>
													<springForm:input type="text" class="form-control"
														id="landLinenumber" name="landLinenumber"
														path="landLinenumber" placeholder="Landline Number" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="industrytype">Industry Type</label>
													<springForm:select name="industryType" path="industryType"
														class="form-control" id="industryType">
														<option value="0">Select...</option>
														<springForm:options items="${industryList}" />

													</springForm:select>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="companywebsite">Company Website</label>
													<springForm:input type="text" class="form-control"
														id="companyWebsiteLink" name="companyWebsiteLink"
														path="companyWebsiteLink" placeholder="Company Website" />
												</div>
											</div>
										</div>
										<div class="row">

											<div class="col-md-3">
												<div class="form-group">
													<label for="city">Registered City</label>
													<springForm:input type="text" class="form-control"
														id="registeredCity" name="registeredCity"
														path="registeredCity" placeholder="Registered City" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="city">Password</label>
													<springForm:input type="password" name="orgPassword"
														path="orgPassword" class="form-control" id="orgPassword"
														placeholder="Password" />
												</div>
											</div>
									</springForm:form>
									<div class="col-md-3">
										<div class="form-group">
											<label for="city">Confirm Password</label> <input
												name="confirmPassword" type="password" class="form-control"
												id="confirmPassword" placeholder="Conform Password" />
										</div>
									</div>

								</div>

								<div class="row">
									<div class="col-md-12" style="text-align: center;">
										<button type="submit" class="btn btn-ar btn-primary"
											onclick="organizationRegistration()">Submit</button>
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


	<script src="resources/assets/js/styleswitcher.js"></script>

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