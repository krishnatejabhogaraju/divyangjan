<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
   
   				<c:set var="incVal" scope="page" value="${0}"/>  
   				

				<c:forEach var="skillTrainingList" items="${skillTrainingList}"> 
								
								<%-- <c:if test="${(incVal%2==0)}">  
								 <div class="row">
								</c:if>   --%>
							
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
                                
 							<%-- <c:if test="${(incVal%2==0)}">  
                            </div>
							</c:if> --%>
								
                            
                            <c:set var="incVal" scope="page" value="${incVal+1}"/>  
                            
  					</c:forEach>
