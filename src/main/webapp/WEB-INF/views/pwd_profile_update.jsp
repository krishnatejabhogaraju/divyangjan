
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.spring.model.CandidateEducationInfo"%>
<%@page import="com.spring.model.CandidateDisabilityInfo"%>
<%@page import="com.spring.model.CandidateCareerInfo"%>
<%@page import="com.spring.model.CandidateSkillsInfo"%>
<%@page import="java.util.*"%>

<%
	List<CandidateEducationInfo> candidateEducationInfoList = (List<CandidateEducationInfo>) request
			.getAttribute("candidateEducationInfoList");

	List<CandidateDisabilityInfo> candidateDisabilityInfoList = (List<CandidateDisabilityInfo>) request
			.getAttribute("candidateDisabilityInfoList");

	List<CandidateCareerInfo> candidateCareerInfoList = (List<CandidateCareerInfo>) request
			.getAttribute("candidateCareerInfoList");

	List<CandidateSkillsInfo> candidateSkillsInfoList = (List<CandidateSkillsInfo>) request
			.getAttribute("candidateSkillInfoList");

	int candidateEducationInfoListLength = candidateEducationInfoList.size();

	int candidateDisabilityInfoListLength = candidateDisabilityInfoList.size();

	int candidateCareerInfoListLength = candidateCareerInfoList.size();

	int candidateSkillInfoListLength = candidateSkillsInfoList.size();

	//System.out.println("candidateEducationInfoListLength===>>" + candidateEducationInfoListLength);
%>

<script>
	var educationSkill =<%=candidateEducationInfoListLength%>	;
	var disabilityTypeCount =<%=candidateDisabilityInfoListLength%>	;
	var careerCount =<%=candidateCareerInfoListLength%>	;
	var skillCount = <%=candidateSkillInfoListLength%>	;

	$(document).ready(function() { /* code here */

		var today = new Date();
		var dd = today.getDate() - 1;
		var mm = today.getMonth() + 1; //January is 0!
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}

		today = yyyy + '-' + mm + '-' + dd;
		document.getElementById("dateOfBirth").setAttribute("max", today);

	});

	function addEducation() {
		educationSkill = educationSkill + 1;
		console.log(educationSkill);
		$("#edudata")
				.append(
						"<div id='edu"+educationSkill+"'><div class='row'><div class='col-md-3'><div class='form-group'><label for='qualificaton'>Qualification</label><input type='text' class='form-control' id='qualification"
								+ educationSkill
								+ "' name='qualification"
								+ educationSkill
								+ "' placeholder='Qualification' onkeyup='nameChecking(this.id)'></div></div><div class='col-md-3'><div class='form-group'><label for='yearofqualification'>Year of Qualification</label><input type='text' class='form-control' maxlength='4' id='yearOfQualification"
								+ educationSkill
								+ "' name='yearOfQualification"
								+ educationSkill
								+ "' placeholder=' Year of Qualification' onkeyup='numberChecking(this.id)'></div></div><div class='col-md-3'><div class='form-group'><label for='institution'>Institution</label><input type='text' name='institution"
								+ educationSkill
								+ "' class='form-control' id='institution"
								+ educationSkill
								+ "' placeholder=' Institution' onkeyup='nameChecking(this.id)'></div></div><div class='col-md-3'><div class='form-group'><label for='university'>University</label><input type='text' name='university"
								+ educationSkill
								+ "' class='form-control' id='university"
								+ educationSkill
								+ "' placeholder='University' onkeyup='nameChecking(this.id)'></div></div></div><div class='row'><div class='col-md-3'><div class='form-group'><label for='level'>Graduation</label><select class='form-control' id='gaduationType"+educationSkill+"' name='gaduationType"+educationSkill+"'><option value='0'>Select</option><c:forEach var='grad' items='${gradList}'><option value='${grad.key}'>${grad.value}</option></c:forEach></select></div></div><div class='col-md-3'><div class='form-group'><div class='form-group'><label for='specialization'>Qualification Area</label><select class='form-control' id='graduationArea"+educationSkill+"' name='graduationArea"+educationSkill+"'><option value='0'>Select</option><c:forEach var='spec' items='${specList}'><option value='${spec.key}'>${spec.value}</option></c:forEach></select></div></div></div><div class='col-md-3'><div class='form-group'><label for='garde'>Grade</label><input type='text' class='form-control' id='percentage"+educationSkill+"' placeholder='Grade' name='percentage"+educationSkill+"'></div></div></div><div class='row'><div class='col-md-12'><div class='form-group'><label for='remarks'>Remarks</label><textarea class='form-control' rows='3' id='remarks"+educationSkill+"' placeholder='Remarks' name='remarks"+educationSkill+"'></textarea></div></div></div></div>");
	}

	function remove() {
		if (educationSkill != 1) {
			educationSkill--;
			$("#edudata").children().last().remove();
		}
	}

	function addDisability() {
		disabilityTypeCount = disabilityTypeCount + 1;
		//console.log(disabilityTypeCount);
		$("#disData")
				.append(
						"<div id='dis"+disabilityTypeCount+"'><div class='row'><div class='col-md-3'><div class='form-group'><div class='form-group'><label for='typeofcourse'>Disability Category</label><select class='form-control' id='disabilityCategory"+disabilityTypeCount+"' name='disabilityCategory"+disabilityTypeCount+"'><option value='0'>Select</option><option value='Physical'>Physical Disability</option><option value='Mental'>Mental Disability</option></select></div></div></div><div class='col-md-3'><div class='form-group'><div class='form-group'><label for='typeofcourse'>Disability Type</label><select class='form-control' id='disabilityType"+disabilityTypeCount+"' name='disabilityType"+disabilityTypeCount+"'><option value='0'>Select</option><c:forEach var='disability' items='${disabilityType}'><option value='${disability.key}'>${disability.value}</option></c:forEach></select></div></div></div><div class='col-md-3'><div class='form-group'><label for='Disability Percentage'>Disability Percentage</label><input type='text' class='form-control' id='disabilityPercentage"+disabilityTypeCount+"' name='disabilityPercentage"+disabilityTypeCount+"' placeholder='Disability Percentage'></div></div><div class='col-md-3'><div class='form-group'><label for='uploadcertification'>Upload Certification</label><input type='file' class='form-control' id='disabilityCertificate"+disabilityTypeCount+"' name='disabilityCertificate' style='border: 0px; box-shadow: 0px; -webkit-box-shadow: 0px;'></div></div></div></div>");
	}

	function removeDisability() {
		if (disabilityTypeCount != 1) {
			disabilityTypeCount--;
			$("#disData").children().last().remove();
		}
	}
	
	function addCareer(){
		careerCount = careerCount + 1;
		//console.log(disabilityTypeCount);
		$("#careerData").append("<div id='career"+careerCount+"'><div class='row'><div class='col-md-3'><div class='form-group'><label for='designationname'>Designation Name</label><input type='text' class='form-control' id='designationName"+careerCount+"' name='designationName"+careerCount+"' placeholder='Designation Name'></div></div><div class='col-md-3'><div class='form-group'><label for='startdate'>Start Date</label><input type='date' name='startDate"+careerCount+"' class='form-control' id='startDate"+careerCount+"'></div></div><div class='col-md-3'><div class='form-group'><label for='duration'>End Date</label><input type='date' name='endDate"+careerCount+"' class='form-control' id='endDate"+careerCount+"'></div></div><div class='col-md-3'><div class='form-group'><input type='checkbox' id='currentlyWorking"+careerCount+"' name='currentlyWorking"+careerCount+"' onclick='currentWork("+careerCount+")'><label for='checkbox_remember2'>Currently Working</label></div></div></div><div class='row'><div class='col-md-3'><div class='form-group'><label for='company'>Company</label><input type='text' name='company"+careerCount+"' class='form-control' id='company"+careerCount+"' placeholder='Company'></div></div><div class='col-md-3'><div class='form-group'><label for='Location'>Location</label><input type='text' name='location"+careerCount+"' class='form-control' id='location"+careerCount+"' placeholder='Location'></div></div><div class='col-md-3'><div class='form-group'><label for='startdate'>Course Type</label><select class='form-control' id='courseType"+careerCount+"' name='courseType"+careerCount+"'><option value='0'>Select</option><option value='FullTime'>Full-Time</option><option value='PartTime'>Part-Time</option></select></div></div><div class='col-md-3'><div class='form-group'><label for='industry'>Industry</label><select class='form-control' id='industryType"+careerCount+"' name='industryType"+careerCount+"'><option value='0'>Select</option><c:forEach var='industry' items='${industryType}'><option value='${industry.key}'>${industry.value}</option></c:forEach></select></div></div></div><div class='row'><div class='col-md-12'><div class='form-group'><label for='remarks'>Remarks</label><textarea class='form-control' rows='3' placeholder='Remarks' id='careerRemarks"+careerCount+"' name='careerRemarks"+careerCount+"'></textarea></div></div></div></div>");
	}
	
	function removeCareer() {
		if (careerCount != 1) {
			careerCount--;
			$("#careerData").children().last().remove();
		}
	}
	
	
	function addSkill(){
		skillCount = skillCount + 1;
		//console.log(disabilityTypeCount);
		$("#skillData").append('<c:set var="skillCount" value="${skillCount+1}"></c:set><div id="skill${skillCount}"><div class="row"><div class="col-md-4"><div class="form-group"><label for="skillname">Skill Name</label><input type="text" class="form-control" id="skillName${skillCount}" name="skillName${skillCount}" placeholder="Skill Name"></div></div><div class="col-md-4"><div class="form-group"><label for="experience">Experience</label><input type="text" name="skillExperiencre${skillCount}" class="form-control" id="skillExperiencre${skillCount}" placeholder="Experience"></div></div><div class="col-md-4"><div class="form-group"><label for="trainingtype">Training Type</label><select class="form-control" id="trainingType${skillCount}" name="trainingType${skillCount}"><option value="0">Select</option><option value="Self">Self</option><option value="Institution">Institution</option></select></div></div></div></div>');
	}
	
	function removeSkill() {
		if (skillCount != 1) {
			skillCount--;
			$("#skillData").children().last().remove();
		}
	}
	
	$(document).ready(function() { /* code here */
	
		for(var i=1;i<=careerCount;i++){
			
			if($('#currentlyWorking'+i).is(":checked"))   
		        $("#endDate"+i).prop('readonly', true);
		    else
		    	 $("#endDate"+i).prop('readonly', false);
			
		}
		
	});
	
	function currentWork(id){
		 
		if($('#currentlyWorking'+id).is(":checked"))   
	        $("#endDate"+id).prop('readonly', true);
	    else
	    	 $("#endDate"+id).prop('readonly', false);
	}

	function caluclateAge() {

		var dateOfBirth = $('#dateOfBirth').val();
		var age = getAge(dateOfBirth);
		$('#age').val(age);

	}

	function getAge(dateString) {
		var today = new Date();
		var birthDate = new Date(dateString);
		var age = today.getFullYear() - birthDate.getFullYear();
		var m = today.getMonth() - birthDate.getMonth();
		if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
			age--;
		}
		return age;
	}

	function updatePersonalInfo() {

		var title = $('#title').val();
		var firstName = $('#firstName').val();
		var middleName = $('#middleName').val();
		var lastName = $('#lastName').val();
		var dateOfBirth = $('#dateOfBirth').val();
		var age = $('#age').val();
		var gender = $('#gender').val();
		var phoneNumber = $('#phoneNumber').val();
		var email = $('#email').val();
		var bloodGroup = $('#bloodGroup').val();
		var martialStatus = $('#martialStatus').val();

		var dataString = $('form[name=candidatePersonalInfoForm]').serialize();

		//console.log(dataString);

		if (title == "0") {
			alert('Please Select Title');
			$("#title").focus();
			return false;
		}

		if (firstName == "") {
			alert('Please Entet First Name');
			$("#firstName").focus();
			return false;
		}

		if (middleName == "") {
			alert('Please Enter Middle Name');
			$("#middleName").focus();
			return false;
		}

		if (lastName == "") {
			alert('Please Enter Last Name');
			$("#lastName").focus();
			return false;
		}

		if (dateOfBirth == "") {
			alert('Please Select Date Of Birth');
			$("#dateOfBirth").focus();
			return false;
		}

		if (gender == "0") {
			alert('Please Select Gender');
			$("#gender").focus();
			return false;
		}

		if (bloodGroup == "0") {
			alert('Please Select Blood Group');
			$("#bloodGroup").focus();
			return false;
		}

		if (martialStatus == "0") {
			alert('Please Select Martial Status');
			$("#martialStatus").focus();
			return false;
		}

		$.ajax({
			url : '/divyangjan/personalInfoUpdate',
			data : dataString,
			type : 'POST',
			success : function(data) {

				if (data.trim() == "success") {
					alert("Data Submited Sucessfully");

					loadDataDiv('myProfile');

				}else if (data.trim() == "signout") {

					location.href="/divyangjan/logout";
				} 
				else {
					alert("Data Submission Failed");
				}

			}
		});

	}

	function updateContactInfo() {

		var primaryPhoneNumber = $('#primaryPhoneNumber').val();
		var telephoneNumber = $('#telephoneNumber').val();
		var permanentDoorNo = $('#permanentDoorNo').val();
		var permanentStreet = $('#permanentStreet').val();
		var permanentLocation = $('#permanentLocation').val();
		var permanentCity = $('#permanentCity').val();
		var permanentLandMark = $('#permanentLandMark').val();
		var currentDoorNo = $('#currentDoorNo').val();
		var currentStreet = $('#currentStreet').val();
		var currentLocation = $('#currentLocation').val();
		var currentCity = $('#currentCity').val();
		var currentLandMark = $('#currentLandMark').val();

		var dataString = $('form[name=candidateContactInfoForm]').serialize();

		if (telephoneNumber == "") {
			alert('Please Enter Telephone Number');
			$("#telephoneNumber").focus();
			return false;
		}

		if (permanentDoorNo == "") {
			alert('Please Enter Permanent Door No');
			$("#permanentDoorNo").focus();
			return false;
		}

		if (permanentStreet == "") {
			alert('Please Enter Permanent Street');
			$("#permanentStreet").focus();
			return false;
		}
		if (permanentLocation == "") {
			alert('Please Enter Permanent Location');
			$("#permanentLocation").focus();
			return false;
		}
		if (permanentCity == "") {
			alert('Please Enter Permanent City');
			$("#permanentCity").focus();
			return false;
		}
		if (permanentLandMark == "") {
			alert('Please Enter Permanent Land Mark');
			$("#permanentLandMark").focus();
			return false;
		}
		if (currentDoorNo == "") {
			alert('Please Enter Current Door No');
			$("#currentDoorNo").focus();
			return false;
		}
		if (currentStreet == "") {
			alert('Please Enter Current Street');
			$("#currentStreet").focus();
			return false;
		}
		if (currentLocation == "") {
			alert('Please Enter Current Location');
			$("#currentLocation").focus();
			return false;
		}
		if (currentCity == "") {
			alert('Please Enter Current City');
			$("#currentCity").focus();
			return false;
		}
		if (currentLandMark == "") {
			alert('Please Enter Current Land Mark');
			$("#currentLandMark").focus();
			return false;
		}

		$.ajax({
			url : '/divyangjan/ContactInfoUpdate',
			data : dataString,
			type : 'POST',
			success : function(data) {

				if (data.trim() == "success") {
					alert("Data Submited Sucessfully");

					loadDataDiv('myProfile');

				}else if (data.trim() == "signout") {

					location.href="/divyangjan/logout";
				}  else {
					alert("Data Submission Failed");
				}

			}
		});

	}

	function updateFamyliInfo() {

		var gurdianName = $('#gurdianName').val();
		var gurdianRelation = $('#gurdianRelation').val();
		var gurdianNumber = $('#gurdianNumber').val();

		var dataString = $('form[name=candidateFamilyInfoForm]').serialize();

		if (gurdianName == "") {
			alert('Please Enter Gurdian Or Father Name');
			$("#telephoneNumber").focus();
			return false;
		}

		if (gurdianRelation == "") {
			alert('Please Enter Relation');
			$("#gurdianRelation").focus();
			return false;
		}

		if (gurdianNumber == "") {
			alert('Please Enter Contact Number');
			$("#gurdianNumber").focus();
			return false;
		}

		$.ajax({
			url : '/divyangjan/FamilyInfoUpdate',
			data : dataString,
			type : 'POST',
			success : function(data) {

				if (data.trim() == "success") {
					alert("Data Submited Sucessfully");

					loadDataDiv('myProfile');

				}else if (data.trim() == "signout") {

					location.href="/divyangjan/logout";
				}  else {
					alert("Data Submission Failed");
				}

			}
		});

	}

	function updateEducationInfo() {

		var dataString = $('form[name=edudationInfoForm]').serialize()
				+ "&educationSkill=" + educationSkill;

		for (var i = 1; i <= educationSkill; i++) {

			var qualificatioId = "qualification" + i;
			var qualificationValue = $("#" + qualificatioId).val();

			var yearOfQualificationId = "yearOfQualification" + i;
			var yearOfQualificationValue = $("#" + yearOfQualificationId).val();

			var institutionId = "institution" + i;
			var institutionValue = $("#" + institutionId).val();

			var universityId = "university" + i;
			var universityValue = $("#" + universityId).val();

			var gaduationTypeId = "gaduationType" + i;
			var gaduationTypeValue = $("#" + gaduationTypeId).val();

			var graduationAreaId = "graduationArea" + i;
			var graduationAreaValue = $("#" + graduationAreaId).val();

			var percentageId = "percentage" + i;
			var percentageValue = $("#" + percentageId).val();

			var remarksId = "remarks" + i;
			var remarksValue = $("#" + remarksId).val();

			if (qualificationValue == "") {
				alert('Please Enter Qualification');
				$("#" + qualificatioId).focus();
				return false;
			}

			if (yearOfQualificationValue == "") {
				alert('Please Enter Year Of Qualification');
				$("#" + yearOfQualificationId).focus();
				return false;
			}

			if (institutionValue == "") {
				alert('Please Enter Institution');
				$("#" + institutionId).focus();
				return false;
			}

			if (universityValue == "") {
				alert('Please Enter University');
				$("#" + universityId).focus();
				return false;
			}

			if (gaduationTypeValue == "0") {
				alert('Please Select Gaduation Type ');
				$("#" + gaduationTypeId).focus();
				return false;
			}

			if (graduationAreaValue == "0") {
				alert('Please Select Graduation Area ');
				$("#" + graduationAreaId).focus();
				return false;
			}

			if (percentageValue == "") {
				alert('Please Enter Percentage');
				$("#" + percentageId).focus();
				return false;
			}

			if (remarksValue == "") {
				alert('Please Enter Remarks');
				$("#" + remarksId).focus();
				return false;
			}

		}

		$.ajax({
			url : '/divyangjan/EducationInfoUpdate',
			data : dataString,
			type : 'POST',
			success : function(data) {

				if (data.trim() == "success") {
					alert("Data Submited Sucessfully");

					loadDataDiv('myProfile');

				}else if (data.trim() == "signout") {

					location.href="/divyangjan/logout";
				}  else {
					alert("Data Submission Failed");
				}

			}
		});

	}

	function updateCandidateDisabilityInfo() {

		for (var i = 1; i <= disabilityTypeCount; i++) {

			var disabilityCategoryId = "disabilityCategory" + i;
			var disabilityCategoryValue = $("#" + disabilityCategoryId).val();

			var disabilityTypeId = "disabilityType" + i;
			var disabilityTypeValue = $("#" + disabilityTypeId).val();

			var disabilityPercentageId = "disabilityPercentage" + i;
			var disabilityPercentageValue = $("#" + disabilityPercentageId)
					.val();

			var disabilityCertificateId = "disabilityCertificate" + i;
			var disabilityCertificateValue = $("#" + disabilityCertificateId)
					.val();

			if (disabilityCategoryValue == "0") {
				alert('Please Select Disability Category');
				$("#" + disabilityCategoryId).focus();
				return false;
			}

			if (disabilityTypeValue == "0") {
				alert('Please Select Disability Type');
				$("#" + disabilityTypeId).focus();
				return false;
			}

			if (disabilityPercentageValue == "") {
				alert('Please Enter Disability Percentage');
				$("#" + disabilityPercentageId).focus();
				return false;
			}

			if (disabilityCertificateValue == "") {
				alert('Please Select Disability Certificate');
				$("#" + disabilityCertificateId).focus();
				return false;
			}

		}

		var form = $('#disabilityInfoForm')[0];

		//console.log(form);

		var data = new FormData(form);

					$.ajax({
					type : "POST",
					enctype : 'multipart/form-data',
					url : "/divyangjan/DisabilityInfoUpdate",
					data : data,
					processData : false,
					contentType : false,
					cache : false,
					timeout : 600000,
					success : function(data) {

						if (data.trim() == "success") {

							alert("Data Successfully Submitted");

							loadDataDiv("successStories");

						} else if (data.trim() == "fileExtension") {

							alert(".png and .jpeg file format are only supported for file upload");

						} else if (data.trim() == "signout") {

							location.href="/divyangjan/logout";
						} else {

							alert("Data Submission Failed");

						}

					}
				});

	}
	
	function updateCareerInfo(){
		
		var dataString = $('form[name=careerInfoForm]').serialize()	+ "&careerCount=" + careerCount;
		
		//console.log(dataString);
	

for (var i = 1; i <= careerCount; i++) {

	var designationNameId = "designationName" + i;
	var designationNameValue = $("#" + designationNameId).val();

	var startDateId = "startDate" + i;
	var startDateValue = $("#" + startDateId).val();

	var institutionId = "institution" + i;
	var institutionValue = $("#" + institutionId).val();

	var endDateId = "endDate" + i;
	var endDateValue = $("#" + endDateId).val();

	var currentlyWorkingId = "currentlyWorking" + i;
	var currentlyWorkingValue = $("#" + currentlyWorkingId).val();

	var companyId = "company" + i;
	var companyValue = $("#" + companyId).val();

	var locationId = "location" + i;
	var locationValue = $("#" + locationId).val();

	var courseTypeId = "courseType" + i;
	var courseTypeValue = $("#" + courseTypeId).val();
	
	var industryTypeId = "industryType" + i;
	var industryTypeValue = $("#" + industryTypeId).val();
	
	var careerRemarksId = "careerRemarks" + i;
	var careerRemarksValue = $("#" + careerRemarksId).val();

	if (designationNameValue == "") {
		alert('Please Enter Designation Name');
		$("#" + designationNameId).focus();
		return false;
	}

	if (startDateValue == "") {
		alert('Please Select Start Date');
		$("#" + startDateId).focus();
		return false;
	}
	
	if($('#'+currentlyWorkingId).is(":checked"))   {
		
		$("#" + endDateId).val('');
		
        }   else{
    	
    	if (endDateValue == "") {
    		alert('Please Select End Date');
    		$("#" + endDateId).focus();
    		return false;
    	}
    	
    }
    	

	if (companyValue == "") {
		alert('Please Enter Company Name');
		$("#" + companyId).focus();
		return false;
	}

	if (locationValue == "") {
		alert('Please Enter Location');
		$("#" + locationId).focus();
		return false;
	}

	if (courseTypeValue == "0") {
		alert('Please Select Course Type ');
		$("#" + courseTypeId).focus();
		return false;
	}

	if (industryTypeValue == "0") {
		alert('Please Select Industry Type ');
		$("#" + industryTypeId).focus();
		return false;
	}

	if (careerRemarksValue == "") {
		alert('Please Enter Career Remarks');
		$("#" + careerRemarksId).focus();
		return false;
	}


}

$.ajax({
	url : '/divyangjan/CareerInfoUpdate',
	data : dataString,
	type : 'POST',
	success : function(data) {

		if (data.trim() == "success") {
			alert("Data Submited Sucessfully");

			loadDataDiv('myProfile');

		}else if (data.trim() == "signout") {

			location.href="/divyangjan/logout";
		}  else {
			alert("Data Submission Failed");
		}

	}
});
		
		
		
		
	}
	
	
	function updateSkillInfo(){
		
		
var dataString = $('form[name=skillInfoForm]').serialize()	+ "&skillCount=" + skillCount;
		

for (var i = 1; i <= skillCount; i++) {

	var skillNameId = "skillName" + i;
	var skillNameValue = $("#" + skillNameId).val();

	var skillExperiencreId = "skillExperiencre" + i;
	var skillExperiencreValue = $("#" + skillExperiencreId).val();

	var trainingTypeId = "trainingType" + i;
	var trainingTypeValue = $("#" + trainingTypeId).val();


	if (skillNameValue == "") {
		alert('Please Enter Skill Name');
		$("#" + designationNameId).focus();
		return false;
	}

	if (skillExperiencreValue == "") {
		alert('Please Select Skill Experience');
		$("#" + startDateId).focus();
		return false;
	}
	
	if (trainingTypeValue == "0") {
		alert('Please Select Training Type ');
		$("#" + courseTypeId).focus();
		return false;
	}
}

$.ajax({
	url : '/divyangjan/SkillInfoUpdate',
	data : dataString,
	type : 'POST',
	success : function(data) {

		if (data.trim() == "success") {
			alert("Data Submited Sucessfully");

			loadDataDiv('myProfile');

		}else if (data.trim() == "signout") {

			location.href="/divyangjan/logout";
		}  else {
			alert("Data Submission Failed");
		}

	}
});
		
		
		
		
		
		
	}
	
	
	function updateHobbiesInfo(){

		
		var hobbies = $('#hobbies').val();
		var smoking = $('#smoking').val();
		var drinking = $('#drinking').val();
		

		var dataString = $('form[name=candidateHobbiesInfoForm]').serialize();

		console.log(dataString);

		if (hobbies == "") {
			alert('Please Enter Hobbies');
			$("#hobbies").focus();
			return false;
		}

		

		$.ajax({
			url : '/divyangjan/HobbieInfoUpdate',
			data : dataString,
			type : 'POST',
			success : function(data) {

				if (data.trim() == "success") {
					alert("Data Submited Sucessfully");

					loadDataDiv('myProfile');

				}else if (data.trim() == "signout") {

					location.href="/divyangjan/logout";
				}  else {
					alert("Data Submission Failed");
				}

			}
		});
		
		
		
	}
</script>


<div class="post" style="padding: 0px;">

	<ul class="nav nav-tabs nav-tabs-ar">
		<li class="active"><a href="#personalinfo" data-toggle="tab"
			aria-expanded="true">Personal Info</a></li>
		<li class=""><a href="#contactinfo" data-toggle="tab"
			aria-expanded="false">Contact Info</a></li>
		<li class=""><a href="#familyinfo" data-toggle="tab"
			aria-expanded="false">Family Info</a></li>
		<li class=""><a href="#education" data-toggle="tab"
			aria-expanded="false">Education</a></li>
		<li class=""><a href="#disability" data-toggle="tab"
			aria-expanded="false">Disability Info</a></li>
		<li class=""><a href="#careerinfo" data-toggle="tab"
			aria-expanded="false">Career Info</a></li>
		<li class=""><a href="#skills" data-toggle="tab"
			aria-expanded="false">Skill &amp; Training</a></li>
		<li class=""><a href="#habits" data-toggle="tab"
			aria-expanded="false">Hobbies &amp; Habits</a></li>

	</ul>


	<div class="tab-content">

		<!----------------------------------------------- Personal Info Start  ----------------------------------------------------->

		<div class="tab-pane active" id="personalinfo">
			<c:set var="login" value="${login}" />
			<c:set var="candidatePersonalInfo" value="${candidatePersonalInfo}" />
			<div class="row">
				<div class="panel-body">
					<springForm:form name="candidatePersonalInfoForm" method="POST"
						commandName="candidatePersonalInfo">
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Title</label>
									<springForm:select class="form-control" id="title" name="title"
										path="title">
										<option value="0">Select</option>
										<option value="Mr."
											${candidatePersonalInfo.title == 'Mr.' ? 'selected' : ''}>Mr.</option>
										<option value="Miss."
											${candidatePersonalInfo.title == 'Miss.' ? 'selected' : ''}>Miss.</option>
										<option value="Mrs."
											${candidatePersonalInfo.title == 'Mrs.' ? 'selected' : ''}>Mrs.</option>

									</springForm:select>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">First Name</label>
									<springForm:input type="text" class="form-control"
										id="firstName" name="firstName" path="firstName"
										onkeyup="nameChecking(this.id)" placeholder="First Name"
										value="${candidatePersonalInfo.firstName}" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Middle Name</label>
									<springForm:input type="text" class="form-control"
										name="middleName" path="middleName" id="middleName"
										placeholder="Middle Name" onkeyup="nameChecking(this.id)"
										value="${candidatePersonalInfo.middleName}" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="Lastname">Last Name</label>
									<springForm:input type="text" class="form-control"
										name="lastName" path="lastName" id="lastName"
										placeholder="Last Name" onkeyup="nameChecking(this.id)"
										value="${candidatePersonalInfo.lastName}" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Date of Birth</label>
									<springForm:input type="date" class="form-control"
										id="dateOfBirth" name="dateOfBirth" path="dateOfBirth"
										placeholder="dob" onchange="caluclateAge()" max="2025-01-01"
										value="${candidatePersonalInfo.dateOfBirth}" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Age</label>
									<springForm:input type="text" class="form-control" id="age"
										name="age" path="age" placeholder="Age" readonly="true"
										value="${candidatePersonalInfo.age}" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Gender</label>
									<springForm:select class="form-control" id="gender"
										name="gender" path="gender">
										<option value="0">Select</option>
										<option value="Male"
											${candidatePersonalInfo.gender == 'Male' ? 'selected' : ''}>Male</option>
										<option value="Female"
											${candidatePersonalInfo.gender == 'Female' ? 'selected' : ''}>Female</option>

									</springForm:select>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Phone</label>
									<springForm:input type="tel" class="form-control"
										id="phoneNumber" name="phoneNumber" path="phoneNumber"
										placeholder="Phone Number" maxlength="10" readonly="true"
										value="${login.phoneNumber}" />
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label for="email">Email</label>
									<springForm:input type="email" name="email" path="email"
										class="form-control" id="email" placeholder="Email"
										readonly="true" value="${login.email} " />
								</div>
							</div>
							<c:set var="bloodGroupVar" value="0,A+,B+,O+,AB+,A-,B-,O-,AB-"
								scope="application" />
							<div class="col-md-3">
								<div class="form-group">
									<label for="linkedlink">Blood Group</label>
									<springForm:select class="form-control" id="bloodGroup"
										name="bloodGroup" path="bloodGroup" aria-required="true"
										aria-invalid="true">
										<option value="0">Select</option>
										<c:forEach items="${fn:split(bloodGroupVar, ',')}" var="blood">
											<option value="${blood}"
												${candidatePersonalInfo.bloodGroup == blood ? 'selected' : ''}>${blood}</option>
										</c:forEach>

									</springForm:select>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="email">Martial Status</label>
									<springForm:select class="form-control" id="martialStatus"
										name="martialStatus" path="martialStatus">
										<option value="0">Select</option>
										<option value="Married"
											${candidatePersonalInfo.martialStatus == 'Married' ? 'selected' : ''}>Married</option>
										<option value="Unmarried"
											${candidatePersonalInfo.martialStatus == 'Unmarried' ? 'selected' : ''}>Unmarried</option>

									</springForm:select>
								</div>
							</div>
						</div>



					</springForm:form>

					<div class="row">
						<div class="col-md-12 text-center">
							<button type="submit" class="btn btn-ar btn-primary"
								onclick="updatePersonalInfo()">Update</button>
						</div>
					</div>

				</div>
			</div>
		</div>


		<!----------------------------------------------- Personal Info End  ----------------------------------------------------->





		<!----------------------------------------------- Contact Info Start  ----------------------------------------------------->


		<div class="tab-pane" id="contactinfo">
			<div class="row">
				<div class="panel-body">
					<c:set var="candidateContactInfo" value="${candidateContactInfo}" />
					<springForm:form name="candidateContactInfoForm" method="POST"
						commandName="candidateContactInfo">
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="name">Primary Phone Number</label>
									<springForm:input type="tel" class="form-control"
										id="primaryPhoneNumber" name="primaryPhoneNumber"
										path="primaryPhoneNumber" placeholder="Primary Phone Number"
										readonly="true" value="${login.phoneNumber}" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="name">Tel No</label>
									<springForm:input type="tel" class="form-control"
										id="telephoneNumber" name="telephoneNumber"
										path="telephoneNumber" placeholder="Telephone Number"
										maxlength="11" onkeyup="numberChecking(this.id)" />
								</div>
							</div>


						</div>

						<div class="row">
							<div class="col-md-8">
								<div class="form-group">

									<h4 class=""
										style="color: #000; border-bottom: 1px solid #d5d2d2;">Permanent
										Residance Address</h4>

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Door No</label>
									<springForm:input type="text" name="permanentDoorNo"
										path="permanentDoorNo" class="form-control"
										id="permanentDoorNo" placeholder="Door Number" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Street / Line</label>
									<springForm:input type="text" name="permanentStreet"
										path="permanentStreet" class="form-control"
										id="permanentStreet" placeholder="Street / Line " />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Location</label>
									<springForm:input type="text" name="permanentLocation"
										path="permanentLocation" class="form-control"
										id="permanentLocation" placeholder="Location" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="city">City</label>
									<springForm:input type="city" name="permanentCity"
										path="permanentCity" class="form-control" id="permanentCity"
										placeholder="City" />
								</div>
							</div>

						</div>

						<div class="row">

							<div class="col-md-3">
								<div class="form-group">
									<label for="lankmark">Land Mark</label>
									<springForm:input type="text" name="permanentLandMark"
										path="permanentLandMark" class="form-control"
										id="permanentLandMark" placeholder="Land Mark" />
								</div>
							</div>

						</div>



						<div class="row">
							<div class="col-md-8">
								<div class="form-group">

									<h4 class=""
										style="color: #000; border-bottom: 1px solid #d5d2d2;">Current
										Residance Address</h4>

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Door No</label>
									<springForm:input type="text" name="currentDoorNo"
										path="currentDoorNo" class="form-control" id="currentDoorNo"
										placeholder="Door Number" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Street / Line</label>
									<springForm:input type="text" name="currentStreet"
										path="currentStreet" class="form-control" id="currentStreet"
										placeholder="Street / Line " />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="name">Location</label>
									<springForm:input type="text" name="currentLocation"
										path="currentLocation" class="form-control"
										id="currentLocation" placeholder="Location" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="city">City</label>
									<springForm:input type="city" name="currentCity"
										path="currentCity" class="form-control" id="currentCity"
										placeholder="City" />
								</div>
							</div>

						</div>
						<div class="row">

							<div class="col-md-3">
								<div class="form-group">
									<label for="lankmark">Land Mark</label>
									<springForm:input type="text" name="currentLandMark"
										path="currentLandMark" class="form-control"
										id="currentLandMark" placeholder="Land Mark" />
								</div>
							</div>

						</div>

					</springForm:form>
					<div class="row">
						<div class="col-md-12 text-center">
							<button type="submit" class="btn btn-ar btn-primary"
								onclick="updateContactInfo()">Update</button>
						</div>
					</div>

				</div>
			</div>
		</div>

		<!----------------------------------------------- Contact Info End  ----------------------------------------------------->




		<!----------------------------------------------- Family Tab Start  ----------------------------------------------------->

		<div class="tab-pane" id="familyinfo">
			<div class="row">
				<div class="panel-body">
					<springForm:form name="candidateFamilyInfoForm" method="POST"
						commandName="candidateFamilyInfo">
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="name">Father / Gaurdian Name </label>
									<springForm:input type="text" class="form-control"
										id="gurdianName" name="gurdianName" path="gurdianName"
										placeholder="Father / Gaurdian Name"
										onkeyup="nameChecking(this.id)" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="relationship">Relation Ship</label>
									<springForm:input type="text" class="form-control"
										id="gurdianRelation:" name="gurdianRelation"
										path="gurdianRelation" placeholder="Relationship"
										onkeyup="nameChecking(this.id)" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="name">Contact Number</label>
									<springForm:input type="text" name="gurdianNumber"
										path="gurdianNumber" class="form-control" id="gurdianNumber"
										placeholder="Contact Number" onkeyup="numberChecking(this.id)" />
								</div>
							</div>

						</div>


					</springForm:form>


					<div class="row">
						<div class="col-md-12 text-center">
							<button type="submit" class="btn btn-ar btn-primary"
								onclick="updateFamyliInfo()">Update</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!----------------------------------------------- Family Tab End  ----------------------------------------------------->






		<!----------------------------------------------- Education Tab Start  ----------------------------------------------------->


		<div class="tab-pane" id="education">
			<form name="edudationInfoForm">
				<div id="edudata">
					<c:set var="eduCount" value="${0}"></c:set>
					<c:forEach var="candidateEducationInfo"
						items="${candidateEducationInfoList}">
						<c:set var="eduCount" value="${eduCount+1}"></c:set>

						<div id="edu1">
							<div class="row">

								<div class="col-md-3">
									<div class="form-group">
										<label for="qualificaton">Qualification</label> <input
											type="text" class="form-control"
											id="qualification${eduCount}" name="qualification${eduCount}"
											placeholder="Qualification" onkeyup="nameChecking(this.id)"
											value="${candidateEducationInfo.qualification}">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="yearofqualification">Year of Qualification</label>
										<input type="text" class="form-control"
											id="yearOfQualification${eduCount}"
											name="yearOfQualification${eduCount}" maxlength="4"
											placeholder=" Year of Qualification"
											onkeyup="numberChecking(this.id)"
											value="${candidateEducationInfo.yearOfQualification}">
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<label for="institution">Institution</label> <input
											type="text" name="institution${eduCount}"
											class="form-control" id="institution${eduCount}"
											placeholder=" Institution" onkeyup="nameChecking(this.id)"
											value="${candidateEducationInfo.institution}">
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<label for="university">University</label> <input type="text"
											name="university${eduCount}" class="form-control"
											id="university${eduCount}" placeholder="University"
											onkeyup="nameChecking(this.id)"
											value="${candidateEducationInfo.university}">
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label for="level">Graduation</label> <select
											class="form-control" id="graduationType${eduCount}"
											name="graduationType${eduCount}">
											<option value="0">Select</option>
											<c:forEach var="grad" items="${gradList}">
												<option
													${candidateEducationInfo.graduationType == grad.key ? 'selected' : ''}
													value="${grad.key}">${grad.value}</option>


											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<div class="form-group">
											<label for="specialization">Qualification Area</label> <select
												class="form-control" id="graduationArea${eduCount}"
												name="graduationArea${eduCount}">
												<option value="0">Select</option>
												<c:forEach var="spec" items="${specList}">
													<option
														${candidateEducationInfo.graduationArea == spec.key ? 'selected' : ''}
														value="${spec.key}">${spec.value}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="garde">Grade</label> <input type="text"
											class="form-control" id="percentage${eduCount}"
											value="${candidateEducationInfo.percentage}"
											placeholder="Grade/Percentage" name="percentage${eduCount}">
									</div>
								</div>

							</div>

							<div class="row">

								<div class="col-md-12">
									<div class="form-group">
										<label for="remarks">Remarks</label>
										<textarea class="form-control" rows="3"
											id="remarks${eduCount}" placeholder="Remarks"
											name="remarks${eduCount}">${candidateEducationInfo.remarks}</textarea>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>

				</div>
			</form>

			<div class="row">
				<div class="col-md-12 text-right">
					<button type="submit" class="btn btn-ar btn-primary"
						onclick='addEducation()'>
						Add <i class="fa fa-plus-circle"></i>
					</button>
					<button type="submit" class="btn btn-ar btn-danger"
						onclick="remove()">
						<i class="fa fa-trash-o text-center"></i>
					</button>
				</div>
			</div>


			<div class="row">
				<div class="col-md-12 text-center">
					<button type="submit" class="btn btn-ar btn-primary"
						onClick="updateEducationInfo()">Update</button>
				</div>
			</div>

		</div>



		<!----------------------------------------------- Education Tab End  ----------------------------------------------------->


		<!----------------------------------------------- Disability Tab Start  ----------------------------------------------------->





		<div class="tab-pane " id="disability">
			<form name="disabilityInfoForm" id="disabilityInfoForm">
				<div id="disData">
					<c:set var="disCount" value="${0}"></c:set>
					<c:forEach var="candidateDisabilityInfoList"
						items="${candidateDisabilityInfoList}">
						<c:set var="disCount" value="${disCount+1}"></c:set>
						<div id="dis${disCount}">
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<div class="form-group">
											<label for="typeofcourse">Disability Category</label> <select
												class="form-control" id="disabilityCategory${disCount}"
												name="disabilityCategory${disCount}">
												<option value='0'
													${candidateDisabilityInfoList.disabilityCategory == '0' ? 'selected' : ''}>Select</option>
												<option
													${candidateDisabilityInfoList.disabilityCategory == 'Physical' ? 'selected' : ''}
													value='Physical'>Physical Disability</option>
												<option
													${candidateDisabilityInfoList.disabilityCategory == 'Mental' ? 'selected' : ''}
													value="Mental">Mental Disability</option>


											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<div class="form-group">
											<label for="typeofcourse">Disability Type</label> <select
												class="form-control" id="disabilityType${disCount}"
												name="disabilityType${disCount}">
												<option value="0">Select</option>
												<c:forEach var="disability" items="${disabilityType}">
													<option
														${candidateDisabilityInfoList.disabilityType == disability.key ? 'selected' : ''}
														value="${disability.key}">${disability.value}</option>
												</c:forEach>


											</select>
										</div>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<label for="Disability Percentage">Disability
											Percentage</label> <input type="text" class="form-control"
											id="disabilityPercentage${disCount}"
											name="disabilityPercentage${disCount}"
											placeholder="Disability Percentage"
											value="${candidateDisabilityInfoList.disabilityPercentage}">
									</div>
								</div>



								<div class="col-md-3">
									<div class="form-group">
										<label for="uploadcertification">Upload Certification</label>
										<input type="file" class="form-control" 
											id="disabilityCertificate${disCount}"
											name="disabilityCertificate"
											style="border: 0px; box-shadow: 0px; -webkit-box-shadow: 0px;">
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</form>

			<div class="row">
				<div class="col-md-12 text-right">
					<button type="submit" class="btn btn-ar btn-primary"
						onclick='addDisability()'>
						Add <i class="fa fa-plus-circle"></i>
					</button>
					<button type="submit" class="btn btn-ar btn-danger"
						onclick="removeDisability()">
						<i class="fa fa-trash-o text-center"></i>
					</button>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12 text-center">
					<button type="submit" class="btn btn-ar btn-primary"
						onclick="updateCandidateDisabilityInfo()">Update</button>
				</div>
			</div>
		</div>
		<!----------------------------------------------- Disability Tab End  ----------------------------------------------------->

		<!----------------------------------------------- Career Tab Start  ----------------------------------------------------->

		<div class="tab-pane " id="careerinfo">

			<form name="careerInfoForm" id="careerInfoForm">
				<div id="careerData">
					<c:set var="disCount" value="${0}"></c:set>
					<c:forEach var="candidateCareerInfoList"
						items="${candidateCareerInfoList}">
						<c:set var="disCount" value="${disCount+1}"></c:set>
						<div id="career${disCount}">
							<div class="row">

								<div class="col-md-3">
									<div class="form-group">
										<label for="designationname">Designation Name</label> <input
											type="text" class="form-control"
											id="designationName${disCount}"
											name="designationName${disCount}"
											placeholder="Designation Name"
											value="${candidateCareerInfoList.designationName }">
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<label for="startdate">Start Date</label> <input type="date"
											name="startDate${disCount}" class="form-control"
											id="startDate${disCount}"
											value="${candidateCareerInfoList.startDate}">
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<label for="duration">End Date</label> <input type="date"
											name="endDate${disCount}" class="form-control"
											id="endDate${disCount}"
											value="${candidateCareerInfoList.endDate}">
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<input type="checkbox" id="currentlyWorking${disCount}"
											name="currentlyWorking${disCount}"
											${candidateCareerInfoList.currentlyWorking == '1' ? 'checked' : ''}
											onclick="currentWork(${disCount})" value="1"> <input
											type='hidden' value='0' name='currentlyWorking${disCount}'>
										<label for="checkbox_remember2">Currently Working</label>
									</div>
								</div>


							</div>
							<div class="row">

								<div class="col-md-3">
									<div class="form-group">
										<label for="company">Company</label> <input type="text"
											name="company${disCount}" class="form-control"
											id="company${disCount}" placeholder="Company"
											value="${candidateCareerInfoList.company}">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="Location">Location</label> <input type="text"
											name="location${disCount}" class="form-control"
											id="location${disCount}" placeholder="Location"
											value="${candidateCareerInfoList.location}">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="startdate">Course Type</label> <select
											class="form-control" id="courseType${disCount}"
											name="courseType${disCount}">
											<option value="0">Select</option>
											<option
												${candidateCareerInfoList.courseType == 'FullTime' ? 'selected' : '' }
												value="FullTime">Full-Time</option>
											<option
												${candidateCareerInfoList.courseType == 'PartTime' ? 'selected' : '' }
												value="PartTime">Part-Time</option>

										</select>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<label for="industry">Industry</label> <select
											class="form-control" id="industryType${disCount}"
											name="industryType${disCount}">
											<option value="0">Select</option>
											<c:forEach var="industry" items="${industryType}">
												<option
													${candidateCareerInfoList.industryType == industry.key ? 'selected' : ''}
													value="${industry.key}">${industry.value}</option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="remarks">Remarks</label>
										<textarea class="form-control" rows="3" placeholder="Remarks"
											id="careerRemarks${disCount}" name="careerRemarks${disCount}">${candidateCareerInfoList.careerRemarks}</textarea>
									</div>
								</div>
							</div>


						</div>
					</c:forEach>
				</div>
			</form>

			<div class="row">
				<div class="col-md-12 text-right">
					<button type="submit" class="btn btn-ar btn-primary"
						onclick='addCareer()'>
						Add <i class="fa fa-plus-circle"></i>
					</button>
					<button type="submit" class="btn btn-ar btn-danger"
						onclick="removeCareer()">
						<i class="fa fa-trash-o text-center"></i>
					</button>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12 text-center">
					<button type="submit" class="btn btn-ar btn-primary"
						onclick="updateCareerInfo()">Update</button>
				</div>
			</div>
		</div>
		<!----------------------------------------------- Career Tab End  ----------------------------------------------------->

		<!----------------------------------------------- Skill Tab Start  ----------------------------------------------------->

		<div class="tab-pane " id="skills">
			<form name="skillInfoForm" id="skillInfoForm">
			<c:set var="skillCount" value="${0}"></c:set>
				<div id="skillData">
					<c:forEach var="candidateSkillInfoList"
						items="${candidateSkillInfoList}">
						<c:set var="skillCount" value="${skillCount+1}"></c:set>
						<div id="skill${skillCount}">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="skillname">Skill Name</label> <input type="text"
											value="${candidateSkillInfoList.skillName}"
											class="form-control" id="skillName${skillCount}"
											name="skillName${skillCount}" placeholder="Skill Name">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="experience">Experience</label> <input type="text"
											name="skillExperiencre${skillCount}" class="form-control"
											id="skillExperiencre${skillCount}" placeholder="Experience"
											value="${candidateSkillInfoList.skillExperiencre}">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="trainingtype">Training Type</label> <select
											class="form-control" id="trainingType${skillCount}"
											name="trainingType${skillCount}">
											<option value="0">Select</option>
											<option
												${candidateSkillInfoList.trainingType == 'Self' ? 'selected' : ''}
												value="Self">Self</option>
											<option
												${candidateSkillInfoList.trainingType == 'Institution' ? 'selected' : ''}
												value="Institution">Institution</option>

										</select>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</form>

			<div class="row">
				<div class="col-md-12 text-right">
					<button type="submit" class="btn btn-ar btn-primary"
						onclick='addSkill()'>
						Add <i class="fa fa-plus-circle"></i>
					</button>
					<button type="submit" class="btn btn-ar btn-danger"
						onclick="removeSkill()">
						<i class="fa fa-trash-o text-center"></i>
					</button>
				</div>
			</div>


			<div class="row">
				<div class="col-md-12 text-center">
					<button type="submit" class="btn btn-ar btn-primary"
						onclick="updateSkillInfo()">Update</button>
				</div>
			</div>
		</div>



		<!----------------------------------------------- Skill Tab End  ----------------------------------------------------->
		
		<!----------------------------------------------- Hobbies Tab Start  ----------------------------------------------------->
		<div class="tab-pane " id="habits">
			<c:set var="candidatePersonalInfo" value="${candidatePersonalInfo}" />
			<springForm:form name="candidateHobbiesInfoForm" method="POST"
				commandName="candidateHobbiesInfo">
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="Hobbyname">Hobby Name</label> <springForm:input type="text" 
								class="form-control" id="hobbies" name="hobbies" path="hobbies" placeholder="Hobby Name" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<div class="col-sm-8">
								
									<springForm:checkbox  id="smoking" name="smoking" path="smoking" value="1"/>
									 <label
										for="checkbox_remember2">Smoking</label>
								
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-8">
								
									<springForm:checkbox id="drinking" name="drinking" path="drinking" value="1"/> <label
										for="checkbox_remember2">Drinking</label>
								
							</div>
						</div>
					</div>
					

				</div>
			</springForm:form>
			<div class="row">
						<div class="form-group">
							<div class="col-sm-12 text-center">
								<button type="submit" class="btn btn-ar btn-primary" onclick="updateHobbiesInfo()">Update</button>
							</div>
						</div>
					</div>
		</div>
		
		
		<!----------------------------------------------- Hobbies Tab End  ----------------------------------------------------->

	</div>
</div>