<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from stepform.cidcode.net/timon-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 02 Jun 2019 06:22:28 GMT -->
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="UTF-8">

    <title>Timon - Step Form Wizard</title>

    <!--Import Google Icon Font-->
    <link href='http://fonts.googleapis.com/css?family=Lato&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>

    <!--Import Multi Step Indicator css-->
    <link href="resources/assets/css/gsi-step-indicator.min.css" rel="stylesheet" />

    <!--Import  Step Form Wizard css-->
    <link href="resources/assets/css/tsf-step-form-wizard.min.css" rel="stylesheet" />
    <!--Import  demo css-->
    <link href="resources/assets/css/demo.min.css" rel="stylesheet" />


    <!--Font Awesome-->
    <link rel="stylesheet" href="../maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="../maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!--Plugin for validation-->
    <link href="resources/assets/plugin/parsley/css/parsley.css" rel="stylesheet" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

    <div class="demo-settings" data-open="true">
        <div class="settings-icon">
            <a href="#" class="btn-setting"><i class="fa fa-2x fa-cogs"></i></a>
            <a href="#" class="btn-remove"><i class="fa fa-2x fa-times"></i></a>
        </div>
        <div class="settings-main">
            <label>Step effect</label>
            <select class="form-control" id="stepEffect">
                <option value="basic" selected="selected">basic</option>
                <option value="bounce">bounce</option>
                <option value="slideRightLeft">slideRightLeft</option>
                <option value="slideLeftRight">slideLeftRight</option>

                <option value="flip">flip</option>
                <option value="transformation">transformation</option>
                <option value="slideDownUp">slideDownUp</option>
                <option value="slideUpDown">slideUpDown</option>
            </select>
            <br />
            <label for="stepTransition">
                Step transition <input type="checkbox" id="stepTransition" name="stepTransition" value="11" checked />
            </label>
            <br />
            <label for="showButtons">
                Show buttons <input type="checkbox" id="showButtons" name="showButtons" value="111" checked />
            </label>
            <br />
            <label for="showStepNum">
                Show stepNum <input type="checkbox" id="showStepNum" name="showStepNum" value="123" checked />
            </label>
        </div>
    </div>

    <div class="container">
        <div class="row"> <h1>Style 1 examples</h1></div>
        <div class="row">
            <h3>Example 1</h3>
            <!-- BEGIN STEP FORM WIZARD -->
            <div class="tsf-wizard tsf-wizard-1">
                <!-- BEGIN NAV STEP-->
                <div class="tsf-nav-step">
                    <!-- BEGIN STEP INDICATOR-->
                    <ul class="gsi-step-indicator triangle gsi-style-1  gsi-transition ">
                        <li class="current" data-target="step-1">
                            <a href="#0">
                                <span class="number">1</span>
                                <span class="desc">
                                    <label>Account setup</label>
                                    <span>Account details</span>
                                </span>
                            </a>
                        </li>
                        <li data-target="step-2">
                            <a href="#0">
                                <span class="number">2</span>
                                <span class="desc">
                                    <label>Profile setup</label>
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
                                    <label>Billing setup</label>
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
                                    <label>Agreement</label>
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
                                <legend>Provide your account details</legend>
                                <div class="row">
                                    <!-- BEGIN STEP CONTENT-->
                                    <form class="tsf-step-content">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <input type="email" class="form-control" id="example_username" placeholder="Enter username" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password again</label>
                                                <input type="password" class="form-control" id="exampleInputPasswordAgain1" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                        </div>
                                    </form>
                                    <!-- END STEP CONTENT-->
                                </div>

                            </fieldset>
                        </div>
                        <!-- END STEP 1-->
                        <!-- BEGIN STEP 2-->
                        <div class=" tsf-step step-2 ">
                            <fieldset>
                                <legend>Provide your profile details</legend>
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
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
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
                    <!-- BEGIN CONTROLS-->
                    <div class="tsf-controls ">
                        <!-- BEGIN PREV BUTTTON-->
                        <button type="button" data-type="prev" class="btn btn-left tsf-wizard-btn">
                            <i class="fa fa-chevron-left"></i> PREV
                        </button>
                        <!-- END PREV BUTTTON-->
                        <!-- BEGIN NEXT BUTTTON-->
                        <button type="button" data-type="next" class="btn btn-right tsf-wizard-btn">
                            NEXT <i class="fa fa-chevron-right"></i>
                        </button>
                        <!-- END NEXT BUTTTON-->
                        <!-- BEGIN FINISH BUTTTON-->
                        <button type="button" data-type="finish" class="btn btn-right tsf-wizard-btn">
                            FINISH
                        </button>
                        <!-- END FINISH BUTTTON-->
                    </div>
                    <!-- END CONTROLS-->
                </div>
                <!-- END STEP CONTAINER -->


            </div>
            <!-- END STEP FORM WIZARD -->
            <div class="clearfix"></div>
            <div class="code-example">
                <pre><code>$('.tsf-wizard-1').tsfWizard({
                stepEffect: 'basic',
                stepStyle: 'style1',
                navPosition: 'top',
                stepTransition: true,
                showButtons: true,
                showStepNum: true,
                height: '300px'          
});</code></pre>
            </div>
        </div>
        <br /><hr><br />
        <div class="row">
            <h3>Example 2</h3>
            <!-- BEGIN STEP FORM WIZARD -->
            <div class="tsf-wizard tsf-wizard-2">
                <!-- BEGIN NAV STEP-->
                <div class="tsf-nav-step">
                    <!-- BEGIN STEP INDICATOR-->
                    <ul class="gsi-step-indicator triangle gsi-style-1  gsi-transition ">
                        <li class="current" data-target="step-1">
                            <a href="#0">
                                <span class="number">1</span>
                                <span class="desc">
                                    <label>Account setup</label>
                                    <span>Account details</span>
                                </span>
                            </a>
                        </li>
                        <li data-target="step-2">
                            <a href="#0">
                                <span class="number">2</span>
                                <span class="desc">
                                    <label>Profile setup</label>
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
                                    <label>Billing setup</label>
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
                                    <label>Agreement</label>
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
                                <legend>Provide your account details</legend>

                                <div class="row">
                                    <!-- BEGIN STEP CONTENT-->
                                    <form class="tsf-step-content">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <input type="email" class="form-control" id="example_username" placeholder="Enter username" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password again</label>
                                                <input type="password" class="form-control" id="exampleInputPasswordAgain1" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                        </div>
                                    </form>
                                    <!-- END STEP CONTENT-->
                                </div>

                            </fieldset>
                        </div>
                        <!-- END STEP 1-->
                        <!-- BEGIN STEP 2-->
                        <div class=" tsf-step step-2 ">
                            <fieldset>
                                <legend>Provide your profile details</legend>
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
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
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
                    <!-- BEGIN CONTROLS-->
                    <div class="tsf-controls ">
                        <!-- BEGIN PREV BUTTTON-->
                        <button type="button" data-type="prev" class="btn btn-left tsf-wizard-btn">
                            <i class="fa fa-chevron-left"></i> PREV
                        </button>
                        <!-- END PREV BUTTTON-->
                        <!-- BEGIN NEXT BUTTTON-->
                        <button type="button" data-type="next" class="btn btn-right tsf-wizard-btn">
                            NEXT <i class="fa fa-chevron-right"></i>
                        </button>
                        <!-- END NEXT BUTTTON-->
                        <!-- BEGIN FINISH BUTTTON-->
                        <button type="button" data-type="finish" class="btn btn-right tsf-wizard-btn">
                            FINISH
                        </button>
                        <!-- END FINISH BUTTTON-->
                    </div>
                    <!-- END CONTROLS-->
                </div>
                <!-- END STEP CONTAINER -->


            </div>
            <!-- END STEP FORM WIZARD -->
            <div class="clearfix"></div>
            <div class="code-example">
                <pre><code>$('.tsf-wizard-2').tsfWizard({
                stepEffect: 'basic',
                stepStyle: 'style1',
                navPosition: 'right',
                stepTransition: true,
                showButtons: true,
                showStepNum: true,
                height: '300px'          
});</code></pre>
            </div>
        </div>
        <br /><hr><br />
        <div class="row">
            <h3>Example 3</h3>
            <!-- BEGIN STEP FORM WIZARD -->
            <div class="tsf-wizard tsf-wizard-3">
                <!-- BEGIN NAV STEP-->
                <div class="tsf-nav-step">
                    <!-- BEGIN STEP INDICATOR-->
                    <ul class="gsi-step-indicator triangle gsi-style-1  gsi-transition ">
                        <li class="current" data-target="step-1">
                            <a href="#0">
                                <span class="number">1</span>
                                <span class="desc">
                                    <label>Account setup</label>
                                    <span>Account details</span>
                                </span>
                            </a>
                        </li>
                        <li data-target="step-2">
                            <a href="#0">
                                <span class="number">2</span>
                                <span class="desc">
                                    <label>Profile setup</label>
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
                                    <label>Billing setup</label>
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
                                    <label>Agreement</label>
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
                                <legend>Provide your account details</legend>

                                <div class="row">
                                    <!-- BEGIN STEP CONTENT-->
                                    <form class="tsf-step-content">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <input type="email" class="form-control" id="example_username" placeholder="Enter username" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password again</label>
                                                <input type="password" class="form-control" id="exampleInputPasswordAgain1" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                        </div>
                                    </form>
                                    <!-- END STEP CONTENT-->
                                </div>

                            </fieldset>
                        </div>
                        <!-- END STEP 1-->
                        <!-- BEGIN STEP 2-->
                        <div class=" tsf-step step-2 ">
                            <fieldset>
                                <legend>Provide your profile details</legend>
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
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
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
                    <!-- BEGIN CONTROLS-->
                    <div class="tsf-controls ">
                        <!-- BEGIN PREV BUTTTON-->
                        <button type="button" data-type="prev" class="btn btn-left tsf-wizard-btn">
                            <i class="fa fa-chevron-left"></i> PREV
                        </button>
                        <!-- END PREV BUTTTON-->
                        <!-- BEGIN NEXT BUTTTON-->
                        <button type="button" data-type="next" class="btn btn-right tsf-wizard-btn">
                            NEXT <i class="fa fa-chevron-right"></i>
                        </button>
                        <!-- END NEXT BUTTTON-->
                        <!-- BEGIN FINISH BUTTTON-->
                        <button type="button" data-type="finish" class="btn btn-right tsf-wizard-btn">
                            FINISH
                        </button>
                        <!-- END FINISH BUTTTON-->
                    </div>
                    <!-- END CONTROLS-->
                </div>
                <!-- END STEP CONTAINER -->


            </div>
            <!-- END STEP FORM WIZARD -->
            <div class="clearfix"></div>
            <div class="code-example">
                <pre><code>$('.tsf-wizard-3').tsfWizard({
                stepEffect: 'basic',
                stepStyle: 'style1',
                navPosition: 'left',
                stepTransition: true,
                showButtons: true,
                showStepNum: true,
                height: '300px'          
});</code></pre>
            </div>
        </div>
        <br /><hr><br />
        <div class="row">
            <h3>Example 4</h3>
            <!-- BEGIN STEP FORM WIZARD -->
            <div class="tsf-wizard tsf-wizard-4">
                <!-- BEGIN NAV STEP-->
                <div class="tsf-nav-step">
                    <!-- BEGIN STEP INDICATOR-->
                    <ul class="gsi-step-indicator triangle gsi-style-1  gsi-transition ">
                        <li class="current" data-target="step-1">
                            <a href="#0">
                                <span class="number">1</span>
                                <span class="desc">
                                    <label>Account setup</label>
                                    <span>Account details</span>
                                </span>
                            </a>
                        </li>
                        <li data-target="step-2">
                            <a href="#0">
                                <span class="number">2</span>
                                <span class="desc">
                                    <label>Profile setup</label>
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
                                    <label>Billing setup</label>
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
                                    <label>Agreement</label>
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
                                <legend>Provide your account details</legend>

                                <div class="row">
                                    <!-- BEGIN STEP CONTENT-->
                                    <form class="tsf-step-content">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <input type="email" class="form-control" id="example_username" placeholder="Enter username" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password again</label>
                                                <input type="password" class="form-control" id="exampleInputPasswordAgain1" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                        </div>
                                    </form>
                                    <!-- END STEP CONTENT-->
                                </div>

                            </fieldset>
                        </div>
                        <!-- END STEP 1-->
                        <!-- BEGIN STEP 2-->
                        <div class=" tsf-step step-2 ">
                            <fieldset>
                                <legend>Provide your profile details</legend>
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
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
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
                    <!-- BEGIN CONTROLS-->
                    <div class="tsf-controls ">
                        <!-- BEGIN PREV BUTTTON-->
                        <button type="button" data-type="prev" class="btn btn-left tsf-wizard-btn">
                            <i class="fa fa-chevron-left"></i> PREV
                        </button>
                        <!-- END PREV BUTTTON-->
                        <!-- BEGIN NEXT BUTTTON-->
                        <button type="button" data-type="next" class="btn btn-right tsf-wizard-btn">
                            NEXT <i class="fa fa-chevron-right"></i>
                        </button>
                        <!-- END NEXT BUTTTON-->
                        <!-- BEGIN FINISH BUTTTON-->
                        <button type="button" data-type="finish" class="btn btn-right tsf-wizard-btn">
                            FINISH
                        </button>
                        <!-- END FINISH BUTTTON-->
                    </div>
                    <!-- END CONTROLS-->
                </div>
                <!-- END STEP CONTAINER -->


            </div>
            <!-- END STEP FORM WIZARD -->
            <div class="clearfix"></div>
            <div class="code-example">
                <pre><code>$('.tsf-wizard-4').tsfWizard({
                stepEffect: 'basic',
                stepStyle: 'style1',
                navPosition: 'bottom',
                stepTransition: true,
                showButtons: true,
                showStepNum: true,
                height: '300px'          
});</code></pre>
            </div>
        </div>
        <hr>
        <footer>
            <p>  2016 � Copyright <a href="http://codecanyon.net/user/cidcode?ref=cidcode">cidcode</a></p>
        </footer>
    </div>

    <script src="resources/assets/js/jquery-3.1.0.min.js"></script>
    <script src="resources/assets/js/demo.js"></script>

    <!--Plugin for validation-->
    <script src="resources/assets/plugin/parsley/js/parsley.min.js"></script>
    <script src="resources/assets/js/tsf-wizard-plugin.js"></script>

    <script>
        $(function () {
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

            $('.tsf-wizard-2').tsfWizard({
                stepEffect: 'slideDownUp',
                stepStyle: _style,
                navPosition: 'right',
                stepTransition: _stepTransition,
                showButtons: _showButtons,
                showStepNum: _showStepNum,
                height: '300px'
            });
            $('.tsf-wizard-3').tsfWizard({
                stepEffect: 'slideDownUp',
                stepStyle: _style,
                navPosition: 'left',
                stepTransition: _stepTransition,
                showButtons: _showButtons,
                showStepNum: _showStepNum,
                height: '300px'
            });
            $('.tsf-wizard-4').tsfWizard({
                stepEffect: _stepEffect,
                stepStyle: _style,
                navPosition: 'bottom',
                stepTransition: _stepTransition,
                showButtons: _showButtons,
                showStepNum: _showStepNum,
                height: '300px'
            });
        }






    </script>

    <!-- GoogleAnalytics -->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '../www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-57236793-8', 'auto');
        ga('send', 'pageview');

    </script>


</body>



<!-- Mirrored from stepform.cidcode.net/timon-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 02 Jun 2019 06:22:34 GMT -->
</html>
