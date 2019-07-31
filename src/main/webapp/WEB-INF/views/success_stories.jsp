<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	function successStory() {

		var name = $('#name').val();
		var title = $('#title').val();
		var story = $('#story').val();
		var photo1 = $('#photo').val();

		var photo = "";

		//var dataString = $('form[name=volunteerRegistrationForm]').serialize();

		if (name == "") {
			alert('Please Enter Name');
			$("#name").focus();
			return false;
		}

		if (title == "") {
			alert('Please Enter Title');
			$("#title").focus();
			return false;
		}

		if (photo1 == "") {
			alert('Please Choose Photo');
			$("#photo").focus();
			photo = document.getElementById("photo").files[0].name;
			return false;
		}

		if (story == "") {
			alert('Please Enter Story');
			$("#story").focus();
			return false;
		}

		var form = $('#successStoryForm')[0];

		//console.log(form);

		var data = new FormData(form);

				$.ajax({
					type : "POST",
					enctype : 'multipart/form-data',
					url : "/divyangjan/postSuccessStory",
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

						}  else if (data.trim() == "signout") {

							location.href="/divyangjan/logout";

						} else {

							alert("Data Submission Failed");

						}

					}
				});

	}
</script>

<div class="panel panel-primary post">
	<div class="b_bottom" style="padding-bottom: 12px;">
		<strong>Details of Success Stories</strong>
	</div>
	<div class="panel-body">
		<springForm:form id="successStoryForm" name="successStoryForm"
			method="POST" commandName="successStory">
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<label for="Name">Name</label>
						<springForm:input type="text" class="form-control" id="name"
							name="name" path="name" placeholder="Enter Your Name" />
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<label for="title">Title</label>
						<springForm:input type="text" name="title" path="title"
							class="form-control" id="title" placeholder="title" />

						<springForm:input type="hidden" name="dbPath" path="dbPath"
							class="form-control" id="dbPath" placeholder="title" />
					</div>
				</div>

				<div class="col-md-4">
					<div class="form-group">
						<label for="photo">Enter your Photo</label>
						<springForm:input type="file" name="photo" path="photo"
							class="form-control" id="photo"
							style="border: 0px; box-shadow: 0px; -webkit-box-shadow: 0px;" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label for="exampleInputPassword1">Write Your Story</label>
						<springForm:textarea class="form-control" rows="5" name="story"
							path="story" id="story" placeholder="Enter your story"></springForm:textarea>
					</div>
				</div>


			</div>

		</springForm:form>
		<div class="row">
			<div class="col-md-12" style="text-align: center;">
				<button type="submit" class="btn btn-ar btn-primary"
					onclick="successStory()">Submit</button>
			</div>
		</div>


	</div>



</div>