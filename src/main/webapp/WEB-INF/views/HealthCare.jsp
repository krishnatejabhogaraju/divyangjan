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
    <!-- Compiled in vendors.js -->
    <!--
         <link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
         <link href="resources/assets/css/bootstrap-switch.min.css" rel="stylesheet">
         <link href="resources/assets/css/font-awesome.min.css" rel="stylesheet">
         <link href="resources/assets/css/animate.min.css" rel="stylesheet">
         <link href="resources/assets/css/slidebars.min.css" rel="stylesheet">
         <link href="resources/assets/css/lightbox.css" rel="stylesheet">
         <link href="resources/assets/css/jquery.bxslider.css" rel="stylesheet" />
         <link href="resources/assets/css/buttons.css" rel="stylesheet">
         -->
    <link href="resources/assets/css/vendors.css" rel="stylesheet" />
    <link href="resources/assets/css/syntaxhighlighter/shCore.css" rel="stylesheet" />
    <!-- RS5.0 Stylesheet -->
    <!--<link rel="stylesheet" type="text/css" href="resources/assets/css/settings.css">
         <link rel="stylesheet" type="text/css" href="resources/assets/css/layers.css">
         <link rel="stylesheet" type="text/css" href="resources/assets/css/navigation.css">-->
    <!-- stepper -->
    <!--Import Multi Step Indicator css-->
    <link href="resources/stepper/css/gsi-step-indicator.min.css" rel="stylesheet" />
    <!--Import  Step Form Wizard css-->
    <link href="resources/stepper/css/tsf-step-form-wizard.min.css" rel="stylesheet" />
    <!--Import  demo css-->
    <link href="resources/stepper/css/demo.min.css" rel="stylesheet" />
    <!--Plugin for validation-->
    <link href="resources/stepper/plugin/parsley/css/parsley.css" rel="stylesheet" />
    <!-- stepper -->
    <link href="resources/assets/css/style-blue.css" rel="stylesheet" title="default" />
    <link href="resources/assets/css/width-full.css" rel="stylesheet" title="default" />
    <link href="resources/assets/css/custom.css" rel="stylesheet" title="default" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="resources/assets/js/html5shiv.min.js"></script>
      <script src="resources/assets/js/respond.min.js"></script>
      <![endif]-->
</head>
<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<body>
    <div class="sb-site-container">
        <div class="boxed">
        
            
           <jsp:include page="header.jsp" />  
            

            <!-- <header class="main-header">
                <div class="container">
                    <h1 class="page-title">Services</h1>

                    <ol class="breadcrumb pull-right">

                        <li><a href="#">Services</a></li>
                        <li class="active">Health Care</li>
                    </ol>
                </div>
            </header> -->
            <header class="page-title-header-healthcare">
                <div class="container">
                    <div class="service-header-cnt">
                        <div class="service-img-icon">
                            <img src="resources/assets/img/services/banner-icon/healthcare.png" class="img-responsive" />
                        </div>
                        <div class="serive-name">Health Care</div>
                    </div>
                </div>
            </header>

            <div class="container content-container-services">
                <section class="margin-bottom">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="right-line">Health Care</h2>
                        </div>

                    </div>
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel-group services-pannel-acc" id="accordioncc">
                                <div class="panel panel-primary">
                                    <div class="panel-heading panel-plus-link">
                                        <a data-toggle="collapse" data-parent="#accordioncc" href="#cc1" aria-expanded="false" class="collapsed">
                                            
                                                How to apply for disability Certificates
                                        </a>
                                    </div>
                                    <div id="cc1" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                        <div class="panel-body">
                                            <div class="tsf-wizard tsf-wizard-1">
                                                <!-- BEGIN NAV STEP-->
                                                <div class="tsf-nav-step">
                                                    <!-- BEGIN STEP INDICATOR-->
                                                    <ul class="gsi-step-indicator triangle gsi-style-1  gsi-transition ">
                                                        <li class="current" data-target="step-1">
                                                            <a href="#0">
                                                                <span class="number">1</span>
                                                                <span class="desc">
                                                                            <label>What is it ? </label>
                                                                            <span>Account details</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li data-target="step-2">
                                                            <a href="#0">
                                                                <span class="number">2</span>
                                                                <span class="desc">
                                                                            <label>How do you get ? 
                                                                                </label>
                                                                            <span>Profile details</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li data-target="step-3">
                                                            <a href="#0">
                                                                <span class="number">
                                                                            3
                                                                        </span>
                                                                <span class="desc">
                                                                            <label>Who is the Authority ? </label>
                                                                            <span>Credit card details</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li data-target="step-4">
                                                            <a href="#0">
                                                                <span class="number">
                                                                            4
                                                                        </span>
                                                                <span class="desc">
                                                                            <label>Facilitating Agencies ? </label>
                                                                            <span>Our site policy</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <!-- END STEP INDICATOR--->
                                                </div>
                                                <!-- END NAV STEP-->
                                                <!-- BEGIN STEP CONTAINER -->
                                                <div class="tsf-container">
                                                    <!-- BEGIN CONTENT-->
                                                    <div class="tsf-content">
                                                        <!-- BEGIN STEP 1-->
                                                        <div class="tsf-step step-1 active">
                                                            <fieldset>
                                                                <h4>What is disability certificate ?</legend>
                                                                    <div class="row">
                                                                        <!-- BEGIN STEP CONTENT-->

                                                                        <div class="col-md-12">
                                                                            <p class="steper-desc">
                                                                                Disability certificate is an important document for persons with disabilities because it entitles the holder to get benefits / facilities and rights of persons with disabilities.
                                                                            </p>
                                                                        </div>

                                                                        <!-- END STEP CONTENT-->
                                                                    </div>

                                                            </fieldset>
                                                        </div>
                                                        <!-- END STEP 1-->
                                                        <!-- BEGIN STEP 2-->
                                                        <div class=" tsf-step step-2 ">
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <fieldset>
                                                                        <h4>Process
                                                                        </h4>
                                                                        <ol class="service-list list-unstyled">
                                                                            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil suscipit cupiditate expedita hic earum vero sint, recusandae itaque, rem distinctio.</li>
                                                                            <li>Totam porro sit, obcaecati quos quae iure tenetur, soluta voluptatem sapiente rerum ipsam delectus corporis voluptates voluptate, nulla mollitia pariatur.</li>
                                                                            <li>Amet dolorum ullam, rerum ratione distinctio, quia iusto rem! Asperiores et quas, ratione in dolores dolorum doloribus magni suscipit labore!</li>
                                                                            <li>Enim quas nesciunt sequi odit, ut quisquam vitae commodi animi placeat nihil saepe magnam aliquam, vero harum quae doloribus aut nostrum veniam alias!</li>
                                                                            <li>Expedita doloribus vel nam fuga iusto aperiam maxime aut amet pariatur. Libero quidem, optio itaque ducimus. Nulla laboriosam voluptas voluptates.</li>
                                                                        </ol>
                                                                    </fieldset>

                                                                </div>
                                                                <div class="col-md-4">

                                                                    <fieldset>
                                                                        <h4>Download Reated Forms </h4>

                                                                        <div>
                                                                            <a href="#" class="button button-block button-rounded button-action button-large">Click here to Download</a>
                                                                        </div>


                                                                    </fieldset>


                                                                    <fieldset>
                                                                        <h4>Provide your details</h4>
                                                                        <!-- BEGIN STEP CONTENT-->
                                                                        <form class="tsf-step-content">
                                                                            <div class="form-group">
                                                                                <label for="exampleInputEmail1">Fullname </label>
                                                                                <input type="email" class="form-control" id="example_Fullname" placeholder="Enter fullname " required>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="exampleInputPassword1">Phone Number</label>
                                                                                <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Phone Number">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="exampleInputAddress">Address</label>
                                                                                <input type="text" class="form-control" id="exampleInputAddress" placeholder="Street address">
                                                                            </div>
                                                                            <label>Gender </label>

                                                                            <div class="radio">
                                                                                <label>
                                                                                                    <input type="radio" name="optionsRadios" value="option1" checked="" required="">
                                                                                                    Male
                                                                                                </label>
                                                                            </div>
                                                                            <div class="radio">
                                                                                <label>
                                                                                                    <input type="radio" name="optionsRadios" value="option2">
                                                                                                    Female
                                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                        <!-- END STEP CONTENT-->
                                                                    </fieldset>

                                                                </div>

                                                            </div>

                                                        </div>
                                                        <!-- END STEP 2-->
                                                        <!-- BEGIN STEP 3-->
                                                        <div class=" tsf-step step-3 ">
                                                            <fieldset>
                                                                <legend>Provide your billing and credit card details</legend>
                                                                <!-- BEGIN STEP CONTENT-->
                                                                <form class="tsf-step-content">
                                                                    <div class="form-group">
                                                                        <label for="exampleInputEmail1">Card Holder Name </label>
                                                                        <input type="email" class="form-control" id="example_cardName" placeholder="Enter Card Holder Name" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="exampleInputPassword1">Card Number</label>
                                                                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Card Number">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="exampleInputAddress">CVC </label>
                                                                        <input type="text" class="form-control" id="exampleInputAddress" placeholder="CVC">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="exampleInputAddress">Expiration(MM/YYYY)</label>
                                                                        <input type="text" class="form-control" id="exampleInputAddress" placeholder="MM/YYYY">
                                                                    </div>

                                                                </form>
                                                                <!-- END STEP CONTENT-->

                                                            </fieldset>
                                                        </div>
                                                        <!-- END STEP 3-->
                                                        <!-- BEGIN STEP 4-->
                                                        <div class="tsf-step step-4">
                                                            <fieldset>
                                                                <legend>Agreement</legend>
                                                                <!-- BEGIN STEP CONTENT-->
                                                                <form class="tsf-step-content">
                                                                    <div class="row">
                                                                        <div class="col-lg-12">
                                                                            <p>
                                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has
                                                                                survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                                                                                sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                                                            </p>
                                                                        </div>
                                                                        <div class="col-lg-12">
                                                                            <div class="row">
                                                                                <div class="col-lg-6">
                                                                                    <div class="checkbox">
                                                                                        <label>
                                                                                                    <input type="checkbox"> I read agreement and i have not any objection
                                                                                                </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                                <!-- END STEP CONTENT-->
                                                            </fieldset>
                                                        </div>
                                                        <!-- END STEP 4-->

                                                    </div>
                                                    <!-- END CONTENT-->
                                                </div>
                                                <!-- END STEP CONTAINER -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading panel-plus-link">
                                        <a data-toggle="collapse" data-parent="#accordioncc" href="#cc2" class="collapsed" aria-expanded="false">
                                                Healthcare benefits available for Children with disability & adult PwDs.
                                        </a>
                                    </div>
                                    <div id="cc2" class="panel-collapse collapse" aria-expanded="false">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                            on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings
                                            occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading panel-plus-link">
                                        <a data-toggle="collapse" data-parent="#accordioncc" href="#cc3" class="collapsed" aria-expanded="false">
                                                Medical Insurance for PwDs 
                                        </a>
                                    </div>
                                    <div id="cc3" class="panel-collapse collapse" aria-expanded="false">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                            on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings
                                            occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading panel-plus-link">
                                        <a data-toggle="collapse" data-parent="#accordioncc" href="#cc4" class="collapsed" aria-expanded="false">
                                                Information of hospitals, NGO’s and government institutes which provide free surgical procedures for PwDs.
                                        </a>
                                    </div>
                                    <div id="cc4" class="panel-collapse collapse" aria-expanded="false">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                            on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings
                                            occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading panel-plus-link">
                                        <a data-toggle="collapse" data-parent="#accordioncc" href="#cc5" class="collapsed" aria-expanded="false">
                                                Assistive Aids available for all disabilities.  
                                        </a>
                                    </div>
                                    <div id="cc5" class="panel-collapse collapse" aria-expanded="false">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                            on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings
                                            occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading panel-plus-link">
                                        <a data-toggle="collapse" data-parent="#accordioncc" href="#cc6" class="collapsed" aria-expanded="false">
                                                PwD healthcare related research and
                                        </a>
                                    </div>
                                    <div id="cc6" class="panel-collapse collapse" aria-expanded="false">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                            on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings
                                            occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>


                </section>


            </div>






            <!-- footer-widgets -->
            <footer id="footer">
                <p>&copy; 2019 <a href="#">DivyangIndia</a>, All rights reserved.</p>
            </footer>

        </div>
        <!-- boxed -->
    </div>
    <div id="back-top">
        <a href="#header"><i class="fa fa-chevron-up"></i></a>
    </div>

    <!-- Scripts -->
    <!-- Compiled in vendors.js -->
    <!--
<script src="resources/assets/js/jquery.min.js"></script>
<script src="resources/assets/js/jquery.cookie.js"></script>
<script src="resources/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="resources/assets/js/bootstrap.min.js"></script>
<script src="resources/assets/js/bootstrap-switch.min.js"></script>
<script src="resources/assets/js/wow.min.js"></script>
<script src="resources/assets/js/slidebars.min.js"></script>
<script src="resources/assets/js/jquery.bxslider.min.js"></script>
<script src="resources/assets/js/holder.js"></script>
<script src="resources/assets/js/buttons.js"></script>
<script src="resources/assets/js/jquery.mixitup.min.js"></script>
<script src="resources/assets/js/circles.min.js"></script>
<script src="resources/assets/js/masonry.pkgd.min.js"></script>
<script src="resources/assets/js/jquery.matchHeight-min.js"></script>
-->

    <script src="resources/assets/js/vendors.js"></script>

    <!--<script type="text/javascript" src="resources/assets/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
<script type="text/javascript" src="resources/assets/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>-->



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
                stepEffect: _stepEffect,
                stepStyle: _style,
                navPosition: 'top',
                stepTransition: _stepTransition,
                showButtons: _showButtons,
                showStepNum: _showStepNum,
                height: 'auto'
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
    <!-- <script src="resources/assets/js/holder.js"></script> -->
    <script src="resources/assets/js/index.js"></script>

</body>


</html>