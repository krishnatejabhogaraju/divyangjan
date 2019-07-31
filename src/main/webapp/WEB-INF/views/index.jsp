<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
   <meta charset="UTF-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1" />
   <meta name="viewport"  content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
   <link href="resources/assets/css/syntaxhighlighter/shCore.css" rel="stylesheet" />
   <!-- RS5.0 Stylesheet -->
   <!--<link rel="stylesheet" type="text/css" href="assets/css/settings.css">
         <link rel="stylesheet" type="text/css" href="assets/css/layers.css">
         <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">-->
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
      <script src="assets/js/html5shiv.min.js"></script>
      <script src="assets/js/respond.min.js"></script>
      <![endif]-->
      
  
     
      
</head>
<!-- Preloader -->
<div id="preloader">
   <div id="status">&nbsp;</div>
</div>

<body>
   
   <div class="sb-site-container">
   <div class="boxed">
               
   <jsp:include page="header.jsp"/>  
         
         
         <section class="carousel-section">
            <div class="row carousel-opc-bg" style="padding: 50px;">
               <div class="col-md-7">
                  <div id="carousel-example-generic" class="carousel carousel-razon slide" data-ride="carousel"
                     data-interval="5000">
                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                        <div class="item active">
                           <div>
                              <div class="row">
                                 <div class="col-md-12 col-sm-7">
                                    <div class="carousel-caption">
                                       <div class="carousel-text">
                                          <h1 class="animated fadeInDownBig animation-delay-7 carousel-title">
                                             India's 1st PwD Marketplace that will address
                                             all the needs & requirements of every PwD in
                                             India
                                          </h1>
                                          <h2 class="animated fadeInDownBig animation-delay-5  crousel-subtitle">
                                             Our Vision
                                          </h2>
                                          <p class="animated fadeInUpBig animation-delay-17">
                                             <span>The Vision of DivyangIndia is to create a
                                                single online platform to enable any PwD
                                                irrespective of their disability, age,
                                                education, background or geographical location
                                                to access information and avail any service or
                                                access facilities spanning a variety of
                                                aspects such as education, Health, shelter,
                                                Skill training, job opportunities, self-
                                                employment, healthcare needs, social-welfare
                                                entitlements, assistive aids, scholarships
                                                etc</span>
                                          </p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-5">

                  <!-- Sidebar -->
               </div>
            </div>
         </section>
         <!-- carousel -->

         <!-- Organization -->

         <section class="margin-bottom">

            <div class="container">
               <div class="row">
                  <div class="col-md-4">

                     <img src="resources/assets/img/org.png" class="img-responsive" />

                  </div>
                  <div class="col-md-8">

                     <h1 class="right-line no-margin-top">Organization</h1>
                     <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, alias, nihil molestias libero
                        corporis perferendis a quasi at.
                     </p>
                     <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, alias, nihil molestias libero
                        corporis perferendis a quasi at. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa,
                        alias, nihil molestias libero
                        corporis perferendis a quasi at. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa,
                        alias, nihil molestias libero
                        corporis perferendis a quasi at.
                     </p>
                     <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, alias, nihil molestias libero
                        corporis perferendis a quasi at. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa,
                        alias, nihil molestias libero
                        corporis perferendis a quasi at. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa,
                        alias, nihil molestias libero
                        corporis perferendis a quasi at.
                     </p>


                  </div>

               </div>

            </div>

         </section>

         <!-- Services -->
         <section class="margin-bottom">
            <div class="container services-content-box">

               <div class="row">
                  <div class="col-md-12">
                     <h1 class="right-line no-margin-top">Services</h1>
                  </div>

               </div>

               <div class="row">
                  <div class="col-md-4">
                     <div class="content-box box-primary">

                        <img src="resources/assets/img/services/health.png" />


                        <h5 class="content-box-title">Health Care</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box box-info">
                        <img src="resources/assets/img/services/Rehabilitation.png" />
                        <h5 class="content-box-title">Rehabilitation</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box box-success">
                        <img src="resources/assets/img/services/Education.png" />
                        <h5 class="content-box-title">Education</h5>

                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <hr>

                  </div>

               </div>

               <div class="row">
                  <div class="col-md-4">
                     <div class="content-box box-warning">
                        <img src="resources/assets/img/services/SkillTraining&Coaching.png" />
                        <h5 class="content-box-title">Skill Training & Coaching</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box box-danger">

                        <img src="resources/assets/img/services/E-LearningContent.png" />
                        <h5 class="content-box-title">E-Learning Content</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box box-royal">
                        <img src="resources/assets/img/services/EmploymentinPrivatesector.png" />
                        <h5 class="content-box-title">Employment in Private sector</h5>

                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <hr>

                  </div>

               </div>
               <div class="row">
                  <div class="col-md-4">
                     <div class="content-box  color-7">
                        <img src="resources/assets/img/services/EmploymentinthePublicSector.png" />
                        <h5 class="content-box-title">Employment in the Public Sector</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box color-8">
                        <img src="resources/assets/img/services/SelfEmployment.png" />
                        <h5 class="content-box-title">Self Employment</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box color-9">
                        <img src="resources/assets/img/services/Accessibility.png" />
                        <h5 class="content-box-title">Accessibility</h5>

                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <hr>

                  </div>

               </div>

               <div class="row">
                  <div class="col-md-4">
                     <div class="content-box  color-10">
                        <img src="resources/assets/img/services/PwDEntitlements&Support.png" />
                        <h5 class="content-box-title">PwD Entitlements & Support</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box color-11">
                        <img src="resources/assets/img/services/KnowledgeBank.png" />
                        <h5 class="content-box-title">Knowledge Bank</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box color-12">
                        <img src="resources/assets/img/services/MatrimonySupport.png" />
                        <h5 class="content-box-title">Matrimony Support</h5>

                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <hr>

                  </div>

               </div>
               <div class="row">
                  <div class="col-md-4">
                     <div class="content-box color-13">
                        <img src="resources/assets/img/services/PwDEntertainment.png" />
                        <h5 class="content-box-title">PwD Entertainment</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box color-14">
                        <img src="resources/assets/img/services/PwDSports.png" />
                        <h5 class="content-box-title">PwD Sports</h5>

                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="content-box color-15">
                        <img src="resources/assets/img/services/PwDTalentcorner.png" />
                        <h5 class="content-box-title">PwD Talent corner</h5>

                     </div>
                  </div>
               </div>
            </div>
         </section>

         <!-- success stories -->

        <!--  <section class="margin-bottom">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <h1 class="right-line no-margin-top">Success Stories</h1>
                  </div>

               </div>

               <section class="carousel-section" style="background-image: none; background-image: linear-gradient( 243.4deg, rgba(0,215,206,1) 13%, rgba(0,132,255,1) 98% );">
                  <div id="carousel-example-generic1" class="carousel carousel-razon slide" data-ride="carousel"
                     data-interval="5000">
                     Indicators
                     
                     <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic1" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic1" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic1" data-slide-to="2"></li>
                     </ol>

                     Wrapper for slides
                     <div class="carousel-inner">
                        <div class="item active">

                           <div class="row" style="padding:30px;">

                              <div class="col-md-offset-2 col-md-8 sucess-story-item">

                                 <img src="resources/assets/img/demo/client.jpg" class="sucess-story-avatar">

                                 <h4>Lorem ipsum dolor </h4>
                                 <p class="em-primary-inverse" style="display: inline;">Iure deleniti</p>

                                 <p style="margin-top:15px">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod sint corporis animi
                                    deleniti odit similique vitae vero dolorem autem! Possimus aut rem aliquid ex eos
                                    tempora corrupti, labore quas officiis!
                                 </p>




                              </div>

                           </div>

                        </div>
                        <div class="item ">

                           <div class="row" style="padding:30px;">

                              <div class="col-md-offset-2 col-md-8 sucess-story-item">

                                 <img src="resources/assets/img/demo/client.jpg" class="sucess-story-avatar">

                                 <h4>Lorem ipsum dolor </h4>
                                 <p class="em-primary-inverse" style="display: inline;">Iure deleniti</p>

                                 <p style="margin-top:15px">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod sint corporis animi
                                    deleniti odit similique vitae vero dolorem autem! Possimus aut rem aliquid ex eos
                                    tempora corrupti, labore quas officiis!
                                 </p>




                              </div>

                           </div>

                        </div>
                        <div class="item ">

                           <div class="row" style="padding:30px;">

                              <div class="col-md-offset-2 col-md-8 sucess-story-item">

                                 <img src="resources/assets/img/demo/client.jpg" class="sucess-story-avatar">

                                 <h4>Lorem ipsum dolor </h4>
                                 <p class="em-primary-inverse" style="display: inline;">Iure deleniti</p>

                                 <p style="margin-top:15px">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod sint corporis animi
                                    deleniti odit similique vitae vero dolorem autem! Possimus aut rem aliquid ex eos
                                    tempora corrupti, labore quas officiis!
                                 </p>




                              </div>

                           </div>

                        </div>


                     </div>

                     Controls
                     <a class="left carousel-control" href="#carousel-example-generic1" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                     </a>
                     <a class="right carousel-control" href="#carousel-example-generic1" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                     </a>
                  </div>
               </section>
            </div>
         </section>
 -->


			<section class="margin-bottom">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="right-line no-margin-top">Success Stories</h1>
						</div>

					</div>

					<section class="carousel-section"
						style="background-image: none; background-image: linear-gradient(243.4deg, rgba(0, 215, 206, 1) 13%, rgba(0, 132, 255, 1) 98%);">
						<div id="carousel-example-generic1"
							class="carousel carousel-razon slide" data-ride="carousel"
							data-interval="5000">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<c:set var="count" value="0" scope="page" />
								<c:set value="active" var="cssClass"></c:set>
								<c:forEach var="successStory" items="${successStories}">

									<c:if test='${count > 0}'>
										<c:set value="" var="cssClass"></c:set>
									</c:if>
									<li data-target="#carousel-example-generic1"
										data-slide-to="${count}" class="${cssClass}"></li>

									<c:set var="count" value="${count + 1}" scope="page" />
								</c:forEach>

							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<c:set var="count" value="0" scope="page" />
								<c:set value="item active" var="cssClass"></c:set>
								<c:forEach var="successStory" items="${successStories}">
									<c:if test='${count > 0}'>
										<c:set value="item" var="cssClass"></c:set>
									</c:if>

									<div class="${cssClass}">

										<c:set var="count" value="${count + 1}" scope="page" />

										<div class="row" style="padding: 30px;">

											<div class="col-md-offset-2 col-md-8 sucess-story-item">

												<img src='${successStory.dbPath}'
													class="sucess-story-avatar">

												<h4>${successStory.name}</h4>
												<p class="em-primary-inverse" style="display: inline;">${successStory.title}</p>

												<p style="margin-top: 15px">${successStory.story}</p>

											</div>

										</div>
									</div>
								</c:forEach>
							</div>

							<!-- Controls -->
							<a class="left carousel-control"
								href="#carousel-example-generic1" data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic1" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</section>
				</div>
			</section>

         <!-- supporters -->


         <section class="margin-bottom">
               <div class="container">

                     <div class="row">
                           <div class="col-md-12">
                              <h1 class="right-line no-margin-top">Supporters</h1>
                           </div>
         
                        </div>
                     <div class="row">
                       <div class="col-md-12">
                                 <div id="Carousel" class="carousel  carousel-s slide">
                                  
                                 <ol class="carousel-indicators">
                                     <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                                     <li data-target="#Carousel" data-slide-to="1"></li>
                                     <li data-target="#Carousel" data-slide-to="2"></li>
                                 </ol>
                                  
                                 <!-- Carousel items -->
                                 <div class="carousel-inner">
                                     
                                 <div class="item active">
                                    <div class="row">
                                      <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/1.png" alt="Image" style="max-width:100%;"></a></div>
                                      <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/2.png" alt="Image" style="max-width:100%;"></a></div>
                                      <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/3.png" alt="Image" style="max-width:100%;"></a></div>
                                      <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/1.png" alt="Image" style="max-width:100%;"></a></div>
                                    </div><!--.row-->
                                 </div><!--.item-->
                                  
                                 <div class="item">
                                    <div class="row">
                                      
                                          <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/1.png" alt="Image" style="max-width:100%;"></a></div>
                                          <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/2.png" alt="Image" style="max-width:100%;"></a></div>
                                          <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/3.png" alt="Image" style="max-width:100%;"></a></div>
                                          <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/1.png" alt="Image" style="max-width:100%;"></a></div>
                                    </div><!--.row-->
                                 </div><!--.item-->
                                  
                                 <div class="item">
                                    <div class="row">
                                          <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/1.png" alt="Image" style="max-width:100%;"></a></div>
                                          <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/2.png" alt="Image" style="max-width:100%;"></a></div>
                                          <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/3.png" alt="Image" style="max-width:100%;"></a></div>
                                          <div class="col-md-3"><a href="#" class="thumbnail"><img src="resources/assets/img/support/1.png" alt="Image" style="max-width:100%;"></a></div>
                                    </div><!--.row-->
                                 </div><!--.item-->
                                  
                                 </div><!--.carousel-inner-->
                                   <a data-slide="prev" href="#Carousel" class="left carousel-control carousel-control1"><i class="fa fa-chevron-left" style="margin-top: 9px;font-size: 14px;" aria-hidden="true"></i></a>
                                   <a data-slide="next" href="#Carousel" class="right carousel-control carousel-control1"><i class="fa fa-chevron-right" style="margin-top: 9px;font-size: 14px;" aria-hidden="true"></i></a>
                                 </div><!--.Carousel-->
                                  
                       </div>
                    </div>
                 </div><!--.container-->


         </section>
         <aside id="footer-widgets" style="font-size: 85%;">
               <div class="container">
                   <div class="row">
                       <div class="col-md-3">
                          
                           <h3 class="footer-widget-title">Organisation</h3>
                           <p>Lorem ipsum Amet fugiat elit nisi anim mollit minim labore ut esse Duis ullamco ad dolor veniam velit.</p>
                           <p>Lorem ipsum Amet fugiat elit nisi anim mollit minim labore ut esse Duis ullamco ad dolor veniam velit.</p>
                      
                       </div>
                       <div class="col-md-2">
                           <div class="footer-widget">
                               <h3 class="footer-widget-title">Social Links</h3>
                               <div class="row">
                                   <div class="col-md-12">
                                       <ul class="list-inline social-icon">
                                             <li><a href="#"> <i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                             <li><a href="#"> <i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                             <li><a href="#"> <i class="fa fa-linkedin" aria-hidden="true"></i></a></li>       
                                             <li><a href="#"> <i class="fa fa-twitter" aria-hidden="true"></i></a></li>       
                                           </ul>
                                   </div>
                                  
                               </div>
                           </div>
                       </div>
                       <div class="col-md-4">
                           <div class="footer-widget">
                               <h3 class="footer-widget-title">Tweets</h3>
                               <div class="media">
                                   <a class="pull-left" href="#"><img class="media-object" src="resources/assets/img/demo/m2.jpg" width="75" height="75" alt="image"></a>
                                   <div class="media-body">
                                       <h4 class="media-heading"><a href="#">Lorem ipsum Duis quis occaecat minim lorem ipsum tempor officia labor</a></h4>
                                       <small>August 18, 2013</small>
                                   </div>
                               </div>
                               <div class="media">
                                   <a class="pull-left" href="#"><img class="media-object" src="resources/assets/img/demo/m11.jpg" width="75" height="75" alt="image"></a>
                                   <div class="media-body">
                                       <h4 class="media-heading"><a href="#">Lorem ipsum dolor excepteur sunt in lorem ipsum cillum tempor</a></h4>
                                       <small>September 14, 2013</small>
                                   </div>
                               </div>
                         
                           </div>
                       </div>
                     
                       <div class="col-md-3">
                           <div class="footer-widget">
                               <h3 class="footer-widget-title">Contact Us</h3>
                               <div class="row">
                                   <div class="col-md-12">
                                      
                                      <p>
                                         Lorem ipsum dolor sit amet,
                                      </p>
                                      <p>
                                         Lorem ipsum -25333,
                                      </p>
                                      <p>
                                         Phone No - 992222225452,
                                      </p>
                                       
                                   </div>
                                   
                               </div>
                           </div>
                       </div>
                   </div> <!-- row -->
               </div> <!-- container -->
           </aside>
         <!-- footer-widgets -->
         <footer id="footer">
            <!-- <p>&copy; 2019 <a href="#">DivyangIndia</a>, All rights reserved.</p> -->

            <div class="container">

               <div class="row">
                  <div class="col-md-6 vistors-count text-left">
Visitors <span>0</span> <span>7</span><span>0</span><span>0</span>
                  </divc>

               </div>
               <div class=col-md-6>

                     <p style="margin-top: 10px;">Powred by <a href="#">BLUEFROG MOBILE TECHNOLOGIES PVT.LTD</a></p>

               </div>
            </div>
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

 <script type="text/javascript">
 
$(document).ready(function()
{	
	
	// alert("welcome");
	
}); 


</script>
      

</html>