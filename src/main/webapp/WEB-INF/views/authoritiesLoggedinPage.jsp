<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Divyang</title>
    <link rel="shortcut icon" href="resources/assets/img/favicon.png" />
    <meta name="description" content="" />
    <!-- CSS -->
    <link href="resources/assets/css/preload.css" rel="stylesheet" />
   
    <link href="resources/assets/css/vendors.css" rel="stylesheet" />
    <link href="resources/assets/css/syntaxhighlighter/shCore.css" rel="stylesheet" />
   
    <link href="resources/stepper/css/gsi-step-indicator.min.css" rel="stylesheet" />
   
    <link href="resources/stepper/css/tsf-step-form-wizard.min.css" rel="stylesheet" />
   
    <link href="resources/stepper/css/demo.min.css" rel="stylesheet" />
   
    <link href="stepper/plugin/parsley/css/parsley.css" rel="stylesheet" />
   
    <link href="resources/assets/css/style-blue.css" rel="stylesheet" title="default" />
    <link href="resources/assets/css/width-full.css" rel="stylesheet" title="default" />
    <link href="resources/assets/css/custom.css" rel="stylesheet" title="default" />
   
</head>
<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<body>
    <div class="sb-site-container">
        <div class="boxed">
            <header id="header-full-top" class="hidden-xs header-full">
                <div class="container">
                    <div class="header-full-title">
                        <h1 class="animated fadeInRight">
                            <a href="index-2.html"> </a>
                        </h1>
                    </div>
                    <nav class="top-nav">
                        <ul class="top-nav-social hidden-sm">

                            <li>
                                <a href="#" class="animated fadeIn animation-delay-7 " style="border-right: solid 1px #e3e6e8;"><i class="fa ">A</i></a>
                            </li>
                            <li>
                                <a href="#" class="animated fadeIn animation-delay-6 "><i class="fa ">A+</i></a>
                            </li>
                        </ul>


                        <!-- dropdown -->
                        <!-- <div class="dropdown animated fadeInDown animation-delay-13">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-microphone"></i>
                            </a>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                                <select style="border:none">
                                       <option>English</option>
                                       <option>Hindi</option>
            
                                    </select></a>

                        </div> -->
                        <!-- dropdown -->
                        <div class="dropdown animated fadeInDown animation-delay-11">
                            <a href="/divyangjan/logout" > <i class="fa fa-sign-out"></i>Logout</a>
                            <!-- <a href="/divyangjan/logout" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-sign-out"></i>Logout</a> -->
                          <!--   <div class="dropdown-menu dropdown-menu-right dropdown-login-box animated flipCenter">
                                <form role="form">
                                    <h4>Login Form</h4>
                                    <div class="form-group">
                                        <div class="input-group login-input">
                                            <span class="input-group-addon">
                                                <i class="fa fa-user"></i></span>
                                            <input type="text" class="form-control" placeholder="Username" />
                                        </div>
                                        <br />
                                        <div class="input-group login-input">
                                            <span class="input-group-addon">
                                                <i class="fa fa-lock"></i>
                                             </span>
                                            <input type="password" class="form-control" placeholder="Password" />
                                        </div>
                                        <div class="checkbox pull-left">
                                            <input type="checkbox" id="checkbox_remember1" />
                                            <label for="checkbox_remember1">
                                                Remember me
                                             </label>
                                        </div>
                                        <button type="submit" class="btn btn-ar btn-primary pull-right">
                                             Login
                                          </button>
                                        <div class="clearfix"></div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </nav>-->
                </div> 
                <!-- container -->
            </header>
            <!-- header-full -->
            <nav class="navbar navbar-default navbar-header-full navbar-dark yamm navbar-static-top" role="navigation" id="header">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                 <span class="sr-only">Toggle navigation</span>
                                 <i class="fa fa-bars"></i>
                              </button>
                        <a id="ar-brand" class="navbar-brand hidden-lg hidden-md hidden-sm" href="index-2.html">
                            <span></span></a>
                    </div>
                    <!-- navbar-header -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <!-- <li class="dropdown">
                                <a href="index.html" class="dropdown-single-link">Home</a>
                            </li>
                            <li class="dropdown">
                                <a href="AboutUs.html" class="dropdown-single-link">About Us</a>
                            </li> -->
                            <!-- services -->
                            <li class="dropdown yamm-fw">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">Services</a>
                                <ul class="dropdown-menu dropdown-menu-left animated-2x animated fadeIn">
                                    <li>
                                        <div class="yamm-content">
                                            <div class="row p-b-15">
                                                <div class="col-md-12">
                                                    <h4 class="megamenu-block-title">Services</h4>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-6 col-megamenu">
                                                    <div class="megamenu-block">
                                                        <ul>
                                                            <li>
                                                                <a href="#" onclick="loadDataDiv()"><i class="fa fa-caret-right"></i> Job Post
                                                            </a>
                                                            </li>
                                                            <li>
                                                                <a href="Rehabilitation.html"><i class="fa fa-caret-right"></i>
                                                               Rehabilitation
                                                            </a>
                                                            </li>
                                                            <li>
                                                                <a href="Education.html"><i class="fa fa-caret-right"></i> Education
                                                            </a>
                                                            </li>
                                                            <li>
                                                                <a href="SkillTraining.html"><i class="fa fa-caret-right"></i> Skill
                                                               Training & Coaching
                                                            </a>
                                                            </li>
                                                            <li>
                                                                <a href="ELearningContent.html"><i class="fa fa-caret-right"></i>
                                                               E-Learning Content</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-6 col-megamenu">
                                                    <div class="megamenu-block">
                                                        <ul>
                                                            <li>
                                                                <a href="EmpPrivateSector.html"><i class="fa fa-caret-right"></i>
                                                               Employment in Private sector</a>
                                                            </li>
                                                            <li>
                                                                <a href="EmpPublicSector.html"><i class="fa fa-caret-right"></i>
                                                               Employment in the Public Sector</a>
                                                            </li>
                                                            <li>
                                                                <a href="SelfEmployment.html"><i class="fa fa-caret-right"></i>
                                                               Self Employment</a>
                                                            </li>
                                                            <li>
                                                                <a href="Accessibility.html"><i class="fa fa-caret-right"></i>
                                                               Accessibility</a>
                                                            </li>
                                                            <li>
                                                                <a href="PwDEntitlements.html"><i class="fa fa-caret-right"></i> PwD
                                                               Entitlements & Support</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-6 col-megamenu">
                                                    <div class="megamenu-block">
                                                        <ul>
                                                            <li>
                                                                <a href="KnowledgeBank .html"><i class="fa fa-caret-right"></i>
                                                               Knowledge
                                                               Bank</a>
                                                            </li>
                                                            <li>
                                                                <a href="MatrimonySupport.html"><i class="fa fa-caret-right"></i>
                                                               Matrimony
                                                               Support</a>
                                                            </li>
                                                            <li>
                                                                <a href="PwDEntertainment.html"><i class="fa fa-caret-right"></i> PwD
                                                               Entertainment</a>
                                                            </li>
                                                            <li>
                                                                <a href="PwDSports.html"><i class="fa fa-caret-right"></i> PwD
                                                               Sports
                                                            </a>
                                                            </li>
                                                            <li>
                                                                <a href="PwDTalentcorner.html"><i class="fa fa-caret-right"></i> PwD
                                                               Talent corner
                                                            </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- services -->
                            <!-- <li class="dropdown">
                                <a href="Schemes.html" class="dropdown-single-link">Donors</a>
                            </li>
                            <li class="dropdown">
                                <a href="ActsRules.html" class="dropdown-single-link">Contact Us</a>
                            </li> -->

                        </ul>
                    </div>
                    <!-- navbar-collapse -->
                </div>
                <!-- container -->
            </nav>

            <div class="container content-container-services"  id="dataDiv">
            
            
               
                
                
            </div>

 
 
 

        </div>


        <!-- footer-widgets -->
        <footer id="footer">
            <p>&copy; 2019 <a href="#">DivyangIndia</a>, All rights reserved.</p>
        </footer>

    </div>
    <!-- boxed -->

    <div id="back-top">
        <a href="#header"><i class="fa fa-chevron-up"></i></a>
    </div>

    <script src="resources/assets/js/vendors.js"></script>
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
                stepEffect: _stepEffect,
                stepStyle: _style,
                navPosition: 'top',
                stepTransition: _stepTransition,
                showButtons: _showButtons,
                showStepNum: _showStepNum,
                height: '300px'
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
     <script src="resources/assets/js/index.js"></script>

</body>

<script type="text/javascript">
 
$(document).ready(function()
{		
	//alert();


	loadDataDiv()
	
}); 

function loadDataDiv()
{
	var dataVal="";
 	 
 	  $.ajax({
 			type :"GET",
 			//url :"ajaxProcess.html",
 			//url :"ajaxResponseHtml.html",
 			url :"/divyangjan/laodJobpost",
 			data: dataVal,
 			cache :false,
 			success : function(data) 
 			{	
 				//alert(data);
 				
 				$("#dataDiv").html(data);
 			}
 		
 		});
 }

</script>
</html>