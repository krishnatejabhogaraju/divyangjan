

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
	function isEmail(email) {
		var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		return regex.test(email);
	}

	function isPhoneNumber(phoneNumber) {
		var regex = /^[0-9]+$/;
		return regex.test(phoneNumber);
	}

	function isName(name) {
		var regex = /^[a-zA-Z ]*$/;
		return regex.test(name);
	}

	function candidateRegistration() {

		var name = $('#name').val();
		var phoneNumber = $('#phoneNumber').val();
		var email = $('#email').val();
		var candidatePassword = $('#candidatePassword').val();
		var confirmPassword = $('#confirmPassword').val();

		var dataString = $('form[name=candidateRegistrationForm]').serialize();

		console.log(dataString);

		if (name == "") {
			alert('Please Enter Name');
			$("#name").focus();
			return false;
		}

		if (!isName(name)) {
			alert('Name do not contains Numbers and Special Characters');
			$("#name").focus();
			return false;
		}

		if (phoneNumber == "") {
			alert('Please Enter Phone Number');
			$("#phoneNumber").focus();
			return false;
		}

		if (!isPhoneNumber(phoneNumber)) {

			alert('Please Enter Valid Phone Number');
			$("#phoneNumber").focus();
			return false;

		}

		if (email == "") {
			alert('Please Enter Email');
			$("#email").focus();
			return false;
		}

		if (!isEmail(email)) {

			alert('Please Enter Valid Email');
			$("#email").focus();
			return false;

		}

		if (candidatePassword == "") {
			alert('Please Enter Password');
			$("#candidatePassword").focus();
			return false;
		}

		if (confirmPassword == "") {
			alert('Please Enter Confirm Password');
			$("#confirmPassword").focus();
			return false;
		}

		if (candidatePassword != confirmPassword) {

			alert('Password did not match confirm password');
			return false;

		}

		$.ajax({
			url : '/divyangjan/candidateRegistration',
			data : dataString,
			type : 'POST',
			success : function(data) {

				if (data.trim() == "success") {
					alert("Data Submited Sucessfully");

					location.href = "indexPage";

				} else if (data.trim() == "signout") {

					location.href = "/divyangjan/logout";

				} else if (data.trim() == "1") {

					alert("Phone Number Already Exists");

				} else if (data.trim() == "2") {

					alert("Email Already Exists");

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
							<h2 class="right-line">Registration</h2>
						</div>

					</div>
					<!-- row -->
					<div class="row">
						<div class="">
							<div class="col-md-4 col-md-offset-4">
								<div class="panel panel-primary post">
									<div class="b_bottom" style="padding-bottom: 12px;">
										<strong>Candidate Registration</strong>
									</div>
									<div class="panel-body">
										<springForm:form name="candidateRegistrationForm"
											method="POST" commandName="candidateRegistration">
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label for="username"> Name</label>
														<springForm:input type="text" class="form-control"
															id="name" name="name" path="name"
															placeholder="Enter Name" />
													</div>
												</div>

												<div class="col-md-12">
													<div class="form-group">
														<label for="Phonenuber">Phone Number</label>
														<springForm:input type="tel" class="form-control"
															id="phoneNumber" name="phoneNumber"
															placeholder="Enter Phone Number" path="phoneNumber" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label for="Email">Email</label>
														<springForm:input type="email" name="email"
															class="form-control" id="email" path="email"
															placeholder="Enter Email" />
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label for="password">Password</label>
														<springForm:input type="password" class="form-control"
															id="candidatePassword" name="candidatePassword"
															path="candidatePassword" placeholder="Enter Password" />
													</div>
												</div>

												<div class="col-md-12">
													<div class="form-group">
														<label for="password">Password</label> <input
															type="password" class="form-control" id="confirmPassword"
															name="confirmPassword"
															placeholder="Enter Confirm Password">
													</div>
												</div>



											</div>
										</springForm:form>


										<div class="row">
											<div class="col-md-12" style="text-align: center;">
												<button type="submit" class="btn btn-ar btn-primary"
													onclick="candidateRegistration()">Submit</button>
											</div>
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