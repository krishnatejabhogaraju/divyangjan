<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-primary post">
	<div class="b_bottom" style="padding-bottom: 12px;">
		<strong>Training Details</strong>
	</div>

	<script type="text/javascript">
		function skillAndtraining() {

			var instituteName = $('#instituteName').val();
			var couresesOffered = $('#couresesOffered').val();
			var location = $('#location').val();
			var duration = $('#duration').val();
			var startDate = $('#startDate').val();
			var endDate = $('#endDate').val();

			var dataString = $('form[name=skillAndTrainingForm]').serialize();

			if (instituteName == "") {
				alert('Please Enter Institution Name');
				$("#instituteName").focus();
				return false;
			}

			if (couresesOffered == "") {
				alert('Please Enter Courses Offered');
				$("#couresesOffered").focus();
				return false;
			}

			if (location == "") {
				alert('Please Enter Location');
				$("#location").focus();
				return false;
			}

			if (duration == "") {
				alert('Please Enter Duration');
				$("#duration").focus();
				return false;
			}

			if (startDate == "") {
				alert('Please Select Start Date');
				$("#startDate").focus();
				return false;
			}

			if (endDate == "") {
				alert('Please Select End Date');
				$("#endDate").focus();
				return false;
			}

			$.ajax({
				url : '/divyangjan/skillAndTraining',
				data : dataString,
				type : 'POST',
				success : function(data) {

					if (data.trim() == "success") {

						alert("Data Successfully Submitted");

						loadDataDiv("skillTraining");

					} else if (data.trim() == "signout") {

						location.href="/divyangjan/logout";

					} else {

						alert("Data Submission Failed");

					}
				}
			});

		}
	</script>

	<div class="panel-body">
		<springForm:form id="skillAndTrainingForm" name="skillAndTrainingForm"
			method="POST" commandName="skillAndTraining">
			<div class="row">
				<div class="col-md-3">
					<div class="form-group">
						<label for="Institutename">Institute Name</label>
						<springForm:input name="instituteName" path="instituteName"
							type="text" class="form-control" id="instituteName"
							placeholder="Institute Name" />
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label for="courseoffered">Courses Offered</label>
						<springForm:input name="couresesOffered" path="couresesOffered"
							type="text" class="form-control" id="couresesOffered"
							placeholder="java,html,photoshop,...." />
					</div>
				</div>

				<div class="col-md-3">
					<div class="form-group">
						<label for="location">Location</label>
						<springForm:input type="text" name="location" path="location"
							class="form-control" id="location" placeholder="Location" />
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label for="duration">Duration</label>
						<springForm:input type="text" name="duration" path="duration"
							class="form-control" id="duration" placeholder="Duration" />
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col-md-3">
					<div class="form-group">
						<label for="Start Date">Start Date</label>
						<springForm:input type="date" name="startDate" path="startDate"
							class="form-control" id="startDate" placeholder="title" />
					</div>
				</div>

				<div class="col-md-3">
					<div class="form-group">
						<label for="End Date">End Date</label>
						<springForm:input type="date" name="endDate" path="endDate"
							class="form-control" id="endDate" placeholder="title" />
					</div>
				</div>



			</div>
		</springForm:form>
	</div>
	<div class="row">
		<div class="col-md-12" style="text-align: center;">
			<button type="submit" class="btn btn-ar btn-primary"
				onclick="skillAndtraining()">Submit</button>
		</div>
	</div>


</div>
