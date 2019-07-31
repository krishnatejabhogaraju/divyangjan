
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.truncate {
	display: inline-block;
	vertical-align: middle;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>

<section class="margin-bottom">
	
	<c:if test="${empty login_master_id}">  
	<div class="row">
		<div class="col-md-12">
			<h2 class="right-line">Jobs</h2>
		</div>

	</div>
	</c:if>
	<div class="row">
	
	<c:forEach var="jobsList" items="${jobsList}"> 
		<div class="col-md-4">
			<div class="post">
				<div class="user-block b_bottom">

					<span class="username"> <a href="#">${jobsList.jobTitle}</a>

					</span> <span class="description1">${jobsList.organizationName}</span>
					<ul class="list-inline">
						<li><a href="#" class="link-black text-sm"><i
								class="fa fa-briefcase margin-r-5 a-color"></i>${jobsList.experienceRequired}</a></li>
						<li><a href="#" class="link-black text-sm"><i
								class="fa fa-map-marker margin-r-5 a-color"></i>${jobsList.location}</a></li>
					</ul>
				</div>
				<!-- /.user-block -->
				<div class="description-text">

					<div class="user-block">
						<!-- <img class="" src="../../dist/img/user1-128x128.jpg"> -->
						<a href="#" class="icns"><i
							class="fa fa-edit margin-r-5 a-color"></i></a> <span
							class="description truncate skill">${jobsList.skillSets}</span>

					</div>

					<div class="user-block">
						<!-- <img class="" src="../../dist/img/user1-128x128.jpg"> -->
						<a href="#" class="icns"><i
							class="fa fa-file-text-o margin-r-5 a-color"></i></a> <span
							class="description truncate skill">${jobsList.jobDescription}</span>

					</div>




				</div>
				<ul class="list-inline">
					<li><a href="#" class="link-black text-sm"><i class="fa fa-credit-card a-color"></i> &nbsp;${jobsList.salary}</a></li>


					<c:set var="login_master_id"  value="${login_master_id}"/>  


 					<c:if test="${not empty login_master_id}">  
   					
   					<li class="pull-right">
						<button class="btn btn-block btn-primary btn-sm" onclick="jobPostDetails('jobApplyDetails',${jobsList.jobId})">Apply</button>
					</li>
   					  
					</c:if> 	
						 
					<c:if test="${empty login_master_id}">  
					
					<li class="pull-right">
						 <button class="btn btn-block btn-primary btn-sm" data-toggle="modal" data-target="#myModal2" onclick="assignJobId('jobApplyDetails',${jobsList.jobId})">Apply</button>
						
						
					</li>
					
					
					</c:if> 
				</ul>

				<!-- <input class="form-control input-sm" type="text" placeholder="Type a comment"> -->
			</div>
		</div>

</c:forEach>







	</div>



</section>
