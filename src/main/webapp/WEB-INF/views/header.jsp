<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
      



<style>
 /* .navbar-nav>li.open>.dropdown-menu:before, .navbar-nav.navbar-right>li>.dropdown-menu.pull-right:before */
 .open {
            left: auto;
            right: 12px;
        }
       
</style>


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
                        <a href="#" class="animated fadeIn animation-delay-7 "
                           style="border-right: solid 1px #e3e6e8;"><i class="fa ">A</i></a>
                     </li>
                     <li>
                        <a href="#" class="animated fadeIn animation-delay-6 "><i class="fa ">A+</i></a>
                     </li>
                  </ul>


                  <!-- dropdown -->
                  <div class="dropdown animated fadeInDown animation-delay-13">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-microphone"></i>
                     </a>
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                        <select style="border:none">
                           <option>English</option>
                           <option>Hindi</option>

                        </select></a>

                  </div>
                  <!-- dropdown -->
                  
                 
                  
                  <c:set var="cssVal" scope="page" value=""/>
                    
                  <c:if test="${not empty error}"> 
                   
                  <c:set var="cssVal" scope="page" value="open"/>
                 
                  </c:if>
                  
                 
                  
                  <div class="dropdown animated fadeInDown animation-delay-11 ${cssVal}">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Login</a>
                     <div class="dropdown-menu dropdown-menu-right dropdown-login-box animated flipCenter">
                        <!-- <form role="form"> -->
                         <springForm:form method="POST" commandName="login" action="/divyangjan/loginAuth">
                           <h4>Login Form</h4>  <span style="color:red;"><c:out value="${error}"/></span>  
                           <div class="form-group">
                              <div class="input-group login-input">
                                 <span class="input-group-addon">
                                    <i class="fa fa-user"></i></span>
                                <!--  <input type="text" class="form-control" placeholder="Username" /> -->
                                <springForm:input path="userName" class="form-control" placeholder="Username"/>
                              </div>
                              <br />
                              <div class="input-group login-input">
                                 <span class="input-group-addon">
                                    <i class="fa fa-lock"></i>
                                 </span>
                                 <!-- <input type="password" class="form-control" placeholder="Password" /> -->
                                 <springForm:password path="password" class="form-control" placeholder="Password"/>
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
                       <!--  </form> -->
                       </springForm:form>
                     </div>
                  </div>

               </nav>
            </div>
            <!-- container -->
         </header>
         
         
         <!-- header-full -->
         <nav class="navbar navbar-default navbar-header-full navbar-dark yamm navbar-static-top" role="navigation"
            id="header">
            <div class="container">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse"
                     data-target="#bs-example-navbar-collapse-1">
                     <span class="sr-only">Toggle navigation</span>
                     <i class="fa fa-bars"></i>
                  </button>
                  <a id="ar-brand" class="navbar-brand hidden-lg hidden-md hidden-sm" href="index-2.html">
                     <span></span></a>
               </div>
               <!-- navbar-header -->
               <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav">
                     <li class="dropdown">
                        <a href="/divyangjan/indexPage"  class="dropdown-single-link" >Home</a>
                     </li>
                     <li class="dropdown">
                        <a href="/divyangjan/aboutUsPage" class="dropdown-single-link">About Us</a>
                     </li>
                     <!-- services -->
                     <li class="dropdown yamm-fw">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                           data-hover="dropdown">Services</a>
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
                                                <a href="/divyangjan/publicServicesPage"><i class="fa fa-caret-right"></i>Job Portal </a>
                                             </li>
                                             
                                             <li>
                                                <a href="/divyangjan/trainingDetPage"><i class="fa fa-caret-right"></i>Skill & Training </a>
                                             </li>
                                             
                                             <li>
                                                <a href="/divyangjan/healthCarePage"><i class="fa fa-caret-right"></i> Health
                                                   Care
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/rehabilitationPage"><i class="fa fa-caret-right"></i>
                                                   Rehabilitation
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/educationPage"><i class="fa fa-caret-right"></i> Education
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/skillTrainingPage"><i class="fa fa-caret-right"></i> Skill
                                                   Training & Coaching
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/elearningContentPage"><i class="fa fa-caret-right"></i>
                                                   E-Learning Content</a>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-megamenu">
                                       <div class="megamenu-block">
                                          <ul>
                                             <li>
                                                <a href="/divyangjan/empPrivateSectorPage"><i class="fa fa-caret-right"></i>
                                                   Employment in Private sector</a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/empPublicSectorPage"><i class="fa fa-caret-right"></i>
                                                   Employment in the Public Sector</a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/selfEmploymentPage"><i class="fa fa-caret-right"></i>
                                                   Self Employment</a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/accessibilityPage"><i class="fa fa-caret-right"></i>
                                                   Accessibility</a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/pwDEntitlementsPage"><i class="fa fa-caret-right"></i> PwD
                                                   Entitlements & Support</a>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-megamenu">
                                       <div class="megamenu-block">
                                          <ul>
                                             <li>
                                                <a href="/divyangjan/knowledgeBankPage"><i class="fa fa-caret-right"></i>
                                                   Knowledge
                                                   Bank</a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/matrimonySupportPage"><i class="fa fa-caret-right"></i>
                                                   Matrimony
                                                   Support</a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/pwDEntertainmentPage"><i class="fa fa-caret-right"></i> PwD
                                                   Entertainment</a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/pwDSportsPage"><i class="fa fa-caret-right"></i> PwD
                                                   Sports
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/pwDTalentcornerPage"><i class="fa fa-caret-right"></i> PwD
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
                     <li class="dropdown">
                        <a href="/divyangjan/schemesPage" class="dropdown-single-link">Donors</a>
                     </li>
                     
                     
                     <li class="dropdown yamm-fw">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                           data-hover="dropdown"> Registrations</a>
                        <ul class="dropdown-menu dropdown-menu-left animated-2x animated fadeIn">
                           <li>
                              <div class="yamm-content">
                                 <div class="row p-b-15">
                                    <div class="col-md-12">
                                       <h4 class="megamenu-block-title"> Registrations</h4>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-megamenu">
                                       <div class="megamenu-block">
                                          <ul>
                                             <li>
                                                <a href="/divyangjan/pwdRegistrationPage"><i class="fa fa-caret-right"></i> PWD Registration
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/organizationPage"><i class="fa fa-caret-right"></i>Organization Registration
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/volunteerPage"><i class="fa fa-caret-right"></i> Volunteer Registration
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/educationPage"><i class="fa fa-caret-right"></i> Authorities Registration
                                                </a>
                                             </li>
                                             <li>
                                                <a href="/divyangjan/skillTrainingPage"><i class="fa fa-caret-right"></i>Donnar Registration
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
                     
                     
                     
                     
                     <li class="dropdown">
                        <a href="/divyangjan/contactUsPage" class="dropdown-single-link">Contact Us</a>
                     </li>
						
                  </ul>
               </div>
               <!-- navbar-collapse -->
            </div>
            <!-- container -->
         </nav>
         
      