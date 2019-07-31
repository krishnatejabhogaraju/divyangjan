
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


 <section class="margin-bottom">
                   <!--  <div class="row">
                        <div class="col-md-12">
                            <h2 class="right-line">Match Description</h2>
                        </div>

                    </div> -->
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">Matrimony Form</div>
                                <div class="panel-body">
                                   <!--  <form class="form" role="form"> -->
                                    <springForm:form  commandName="matrimonyPost"  id="matrimonyFormId" class="form"  role="form"> 
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Name </label>
                                                   <!--  <input type="text" class="form-control" id="jd" placeholder="Job Title"> -->
                                                    <springForm:input  path="name" id="name" class="form-control" placeholder="name"/>
                                                    
                                                </div>
                                            </div>
                                             <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Gender</label><br/>
                                                    
                                                    <%-- <div class="radio">
                                                    <label>
                                                      
                                                    <springForm:radiobutton path="gender" id="gender"  class="form-control" value="male" />
                                                    </label></div>
                                                   
                                                    <div class="radio">
                                                    <label>
                                                                                                      
                                                     <springForm:radiobutton path="gender" id="gender"  class="form-control" value="female" />
                                                    </label>
                                                    </div>  --%>
                                                    
											         <label class="radio-inline">
											        <springForm:radiobutton path="gender" id="gender"   value="male" checked="true"/>Male
											    </label>
											    <label class="radio-inline">
											      <springForm:radiobutton path="gender" id="gender"   value="female" />Female
											    </label>
											                                                    
                                                    
                                                     </div>
                                           </div> 
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Date of Birth</label>
                                                   <!--  <input type="date" class="form-control" id="exampleInputEmail1" placeholder="Last Date to Appl"> -->
                                                     <springForm:input type="date" path="dateOfBirth" id="dateOfBirth" class="form-control" placeholder="Last Date to Appl"/>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Religion</label>
                                                    <!-- <select class="form-control" id="select"><option>1</option></select> -->
                                                    
                                                      <springForm:select path="religion" id="religion" class="form-control" placeholder="religion">
                                                       <springForm:option value="0">--Select --</springForm:option>
                                                      <springForm:option value="1">Hindu</springForm:option>
                                                      <springForm:option value="2">Muslim</springForm:option>
                                                      <springForm:option value="3">Chiristian</springForm:option>
                                                      
                                                       </springForm:select>
                                                      
                                                </div>
                                            </div> 

                                        </div>
                                         <div class="row">

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Mother Tongue</label>
                                                   <!--  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Location"> -->
                                                    <springForm:input  path="motherTongue" id="motherTongue" class="form-control" placeholder="mothertongue"/>
                                                   
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Caste/Divison</label>
                                                    
                                                      <springForm:select path="casteDivision" id="casteDivision" class="form-control" placeholder="caste/division">
                                                      <springForm:option value="0">--Select --</springForm:option>
                                                      <springForm:option value="1">Caste-1</springForm:option>
                                                      <springForm:option value="2">Caste-2</springForm:option>
                                                      <springForm:option value="3">Caste-3</springForm:option>
                                                      
                                                       </springForm:select>
                                                    
                                                   
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Mobile Number</label>
                                                   <!--  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Location"> -->
                                                    <springForm:input  path="mobileNumber" id="mobileNumber" class="form-control" placeholder="mobile number"/>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">E-mail</label>
                                                    <!-- <input type="email" class="form-control" id="jd" placeholder="Compensation"> -->
                                                     <springForm:input  path="email" id="email" class="form-control" placeholder="email"/>
                                                </div>
                                            </div>
                                        </div> 
                                        

                                         <div class="row">
                                         <div class="col-md-12" style="text-align: center;">
                                        <!--  <input type="submit" class="btn btn-ar btn-primary" value="Submit"> -->
                                        <input type="button" value="Submit" onclick="formSubmitFun()">
                                         </div>
                                         </div>
                                   <!--  </form> -->
									</springForm:form>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                