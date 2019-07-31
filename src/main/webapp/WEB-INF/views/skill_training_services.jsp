<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
   
    <style>
        /* education css*/
        
        .section-title {
            margin-top: 0px!important;
            color: #000;
            padding: 5px;
                background-color: #c3c3c0;
    border-top-left-radius: 5px;
    border-bottom-right-radius: 5px;
        }
        /* education css*/
    </style>
	
	
	 <style>
/* tabs colors for registration page */
.nav-tabs.nav-tabs-ar {
    background-color: #fff;
}

.nav-tabs.nav-tabs-ar li a:hover,
.nav-tabs.nav-tabs-ar li.active a,
.nav-tabs.nav-tabs-ar li.active a:hover,
.nav-tabs.nav-tabs-ar li.active a:focus {
    background-color: #FFFFFF;
}

.nav-tabs.nav-tabs-ar+.tab-content {
    background-color: #FFFFFF;
}


/* tabs colors for registration page */

  </style>
   
   
   <style>
        .lb_data {
            font-weight: 500
        }
        
        @media (min-width: 768px) {
            .form-horizontal .text_left {
                text-align: left;
            }
        }
        
        .post {
            background-image: url('resources/assets/img/skillandtrainingbg.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: right;
            border-left: 1px solid #9999cc;
            border-bottom: 1px solid #9999cc;
            border-bottom-left-radius: 12px;
        }
    </style>
   
</head>
<!-- Preloader -->

<div id="preloader"><div id="status">&nbsp;</div></div>

<body>
    <div class="sb-site-container">
        <div class="boxed">
            
            <jsp:include page="header.jsp" />  
            
            <div class="container content-container-services"  id="dataDiv">
            
            
            <section class="margin-bottom">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="right-line">Skills & Training</h2>
                        </div>

                    </div>
                    <!-- row -->
                    <div class="row"> 
                        
                        <div class="col-md-12">
                        	<c:forEach var="skillTrainingList" items="${skillTrainingList}"> 
                        
                           <!--  <div class="row"> -->
                            
                            

                                <div class="col-md-6">
                                    <div class="panel panel-primary post">
                                        <div class="b_bottom" style="padding-bottom:12px;"><strong>Skill &amp; Training Details</strong></div>
                                        <div class="panel-body">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <label for="Institute Name" class="col-md-5 col-sm-5 control-label text_left"><i class="fa fa-building a-color"></i>&nbsp;&nbsp;&nbsp;Institute Name</label>
                                                        <div class="col-sm-1 col-md-1" style="padding:0px;">
                                                            <label for="Institute Name" class="control-label"> : </label>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6" style="padding:0px;">
                                                            <label for="Institute Name" name="InstName" class="control-label lb_data text_left" id="instname">${skillTrainingList.instituteName}</label>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <label for="Institute Name" class="col-md-5 col-sm-5 control-label text_left"><i class="fa fa-book a-color"></i>&nbsp;&nbsp;&nbsp;Courses Offered</label>
                                                        <div class="col-md-1 col-sm-1" style="padding:0px;">
                                                            <label for="Institute Name" class="control-label"> : </label>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6" style="padding:0px;">
                                                            <label for="Institute Name" class="control-label lb_data text_left" id="courseOffered">${skillTrainingList.couresesOffered}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <label for="Location" class="col-md-5 col-sm-5 control-label text_left"><i class="fa fa-map-marker a-color"></i>&nbsp;&nbsp;&nbsp;Location</label>
                                                        <div class="col-md-1 col-sm-1" style="padding:0px;">
                                                            <label for="Location" class="control-label"> : </label>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6" style="padding:0px;">
                                                            <label for="Location" class="control-label lb_data text_left" id="Location">${skillTrainingList.location}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <label for="Duration" class="col-md-5 col-sm-5 control-label text_left"><i class="fa fa-calendar-o a-color"></i>&nbsp;&nbsp;&nbsp;Duration</label>
                                                        <div class="col-md-1 col-sm-1" style="padding:0px;">
                                                            <label for="Duration" class="control-label"> : </label>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6" style="padding:0px;">
                                                            <label for="Duration" class="control-label lb_data text_left" id="Duration">${skillTrainingList.duration}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <label for="startDate" class="col-md-5 col-sm-5 control-label text_left"><i class="fa fa-calendar a-color"></i>&nbsp;&nbsp;&nbsp;Start Date</label>
                                                        <div class="col-md-1 col-sm-1" style="padding:0px;">
                                                            <label for="startDate" class="control-label"> : </label>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6" style="padding:0px;">
                                                            <label for="startDate" class="control-label lb_data text_left" id="startDate">${skillTrainingList.startDate}</label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <div class="row">
                                                        <label for="endDate" class="col-md-5 col-sm-5 control-label text_left"><i class="fa fa-calendar a-color"></i>&nbsp;&nbsp;&nbsp;End Date</label>
                                                        <div class="col-md-1 col-sm-1" style="padding:0px;">
                                                            <label for="endDate" class="control-label"> : </label>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6" style="padding:0px;">
                                                            <label for="endDate" class="control-label lb_data text_left" id="endDate">${skillTrainingList.endDate}</label>
                                                        </div>
                                                    </div>
                                                </div>


                                            </form>

                                        </div>



                                    </div>
                                </div>
                                
                                

                            <!--  </div> --> 
							
                            </c:forEach>

                        </div></div>
                </section>
            
            
                            
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


</html>