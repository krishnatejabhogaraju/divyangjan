
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.user-block img {
	/* width: 40px;
            height: 40px; */
	margin-top: 2px;
	float: left !important;
}

.user-block .description1 {
	color: #999;
	font-size: 13px;
	display: block;
	margin-left: 0px !important;
}

strong {
	font-weight: 500;
}
</style>


<section class="margin-bottom">
	<!-- <div class="row">
		<div class="col-md-12">
			<h2 class="right-line">Job Description</h2>
		</div>

	</div> -->

	<div class="row">
			<%-- <c:out value="${jobId}"/> --%>
			
		<c:set var="jobId" value="${jobId}" />
		<c:set var="jobDetails" value="${jobDetails}" />
		<div class="col-md-12">
			<div class="post">
				<div class="user-block b_bottom">

					<span class="username">${jobDetails.jobTitle} <a href="#"></a>

					</span> <span class="description1">${jobDetails.organizationName}</span>
					<ul class="list-inline">
						<li><a href="#" class="link-black text-sm"><i
								class="fa fa-briefcase margin-r-5 a-color"></i>${jobDetails.experienceRequired}</a></li>
						<li><a href="#" class="link-black text-sm"><i
								class="fa fa-map-marker margin-r-5 a-color"></i>${jobDetails.location}</a></li>
					</ul>
				</div>
				<!-- /.user-block -->
				<div class="description-text">

					<div class="user-block">
						<!-- <img class="" src="../../dist/img/user1-128x128.jpg"> -->
						<a href="#" class="icns"><i
							class="fa fa-edit margin-r-5 a-color"></i></a> <span
							class="description truncate skill"><strong>${jobDetails.skillSets}</strong></span>

					</div>

					<div class="user-block">
						<!-- <img class="" src="../../dist/img/user1-128x128.jpg"> -->
						<a href="#" class="icns"><i
							class="fa fa-file-text-o margin-r-5 a-color"></i></a> <span
							class="description truncate skill">${jobDetails.jobDescription}</span>

					</div>
					<div class="user-block">
						<img class="" src="resources/assets/img/age-icon.png"> <span
							class="description truncate skill">Age Limit :<strong>${jobDetails.ageMin}-${jobDetails.ageMax}</strong></span>

					</div>
					<div class="user-block">
						<!-- <img class="" src="../../dist/img/user1-128x128.jpg"> -->
						<a href="#" class="icns"><i
							class="fa fa-calendar margin-r-5 a-color"></i></a> <span
							class="description truncate skill">Last date to Apply:<strong>${jobDetails.lastDateToApply}</strong></span>

					</div>
					<div class="user-block">
						<!-- <img class="" src="../../dist/img/user1-128x128.jpg"> -->
						<a href="#" class="icns"><i
							class="fa fa-building margin-r-5 a-color"></i></a> <span
							class="description truncate skill">Additional Notes :<br />${jobDetails.additionalNotes}
						</span>

					</div>
				</div>
				<ul class="list-inline">
					<li><a href="#" class="link-black text-sm"><i
							class="fa fa-credit-card a-color"></i> &nbsp;${jobDetails.salary}</a></li>

					 <springForm:form id="resumeFile"  commandName="applyForJob"  class="form"  role="form">
										<li class="pull-right">
										<springForm:input type="file" path="resumeFile" class="form-control" id="resumeFile" placeholder="resume" />
										( Upload your resume .pdf, .doc. )
										<%-- <springForm:input  path="nameOne" class="form-control" id="nameOne" placeholder="name" /> --%>
										</li>
										
										<springForm:hidden  path="jobId" class="form-control" id="jobId" value="${jobId}"/>
										</springForm:form>

				</ul>
                 
				<div class="col-md-12" style="text-align: center; margin-top: 15px;">
					<button class="btn btn-primary" onclick="applyForJob()" id="submitButton">Submit</button>
				</div>

				<!-- <input class="form-control input-sm" type="text" placeholder="Type a comment"> -->
			</div>
		</div>


	</div>

	<!-- row -->


</section>
