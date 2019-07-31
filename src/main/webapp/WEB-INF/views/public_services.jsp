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
   
</head>
<!-- Preloader -->

<div id="preloader"><div id="status">&nbsp;</div></div>

<body>
    <div class="sb-site-container">
        <div class="boxed">
            
            <jsp:include page="header.jsp" />  
            
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
     
      <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="top:80px;">
                          <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Login</h4>
                              </div>
                              <div class="modal-body">
                              <springForm:form commandName="login" id="publicLongin" >
                     

                        <div class="form-group">
                            <div class="input-group login-input">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                               <!--  <input type="text" class="form-control" placeholder="Username"> -->
                               <springForm:input path="userName"  id="usenameId"  class="form-control" placeholder="Username"/>
                            </div>
                            <br>
                            <div class="input-group login-input">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                               <!--  <input type="password" class="form-control" placeholder="Password"> -->
                                <springForm:password path="password"  id="passwordId" class="form-control" placeholder="Password"/>
                                  <springForm:hidden path="jobId" id="jobId" class="form-control"/>
                            </div>
                           
                                <br>
                           <div class="input-group col-md-12 text-center">
                            <button type="button" class="btn btn-ar btn-primary" onclick="loginAuth()">Login >></button>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                     </springForm:form>
                              </div>
                             
                            </div>
                          </div>
                        </div>
						

</body>

<script type="text/javascript">
 
$(document).ready(function()
{		
	// alert();

 var repType="jobPortalPublic";
 
	 loadDataDiv(repType)
	
	
}); 




function loadDataDiv(repType)
{
	var dataVal="";
	var reptUrl="";
	
	if(repType=="jobPortalPublic")
    {

		reptUrl="/divyangjan/loadJobpostPublic";
		
	}

	$("#dataDiv").html("<div id='preloader'><div id='status'>&nbsp;</div></div>");
	
 	  $.ajax({
 			type :"GET",
 			//url :"ajaxProcess.html",
 			//url :"ajaxResponseHtml.html",
 			url :reptUrl,
 			data: dataVal,
 			cache :false,
 			success : function(data) 
 			{	
 				//alert(data);
 				
 				$("#dataDiv").html(data);
 			}
 		
 		});
 }

function loginAuth()
{

    
	

	var username=$("#usenameId").val();
	var password=$("#passwordId").val();

	if(username=="")
    {
	alert("Please Enter Username");
	return false;

	}

	if(password=="")
    {
	alert("Please Enter password");
	return false;

	}	

	
	   var url = "/divyangjan/loginAuthPublic";
	   var dataValues=$("#publicLongin").serialize();
	
		$.ajax({
		      type: "POST",
		      url: url,
		      data: dataValues, // serializes the form's elements.
		      success: function(data) 
		      {  
				    //alert(data);

				    if(data.trim()=="index")
					{
					alert("Invalid UserName/Password");	
					$("#usenameId").val("")
					$("#passwordId").val("")
					}else{

			 			//alert(data.trim())
			 			var id=data.trim();
			 			
						location.href="/divyangjan/loginAuthPublicRedirect?id="+id;
						//location.href="/divyangjan/indexPage";
						
						}    

				    
		      }
		    });

}


function assignJobId(reptType,jobId)
{

	$("#jobId").val(jobId);

}
		
</script>
</html>