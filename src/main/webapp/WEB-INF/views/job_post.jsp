

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<section class="margin-bottom">
					<!-- <div class="row">
						<div class="col-md-12">
							<h2 class="right-line">Job Description</h2>
						</div>

					</div> -->
					<!-- row -->
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary">
								<div class="panel-heading">Employer Form</div>
								<div class="panel-body">
									<springForm:form name="jobForm" method="POST"
										commandName="jobPost">
										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Job Title</label>
													<springForm:input type="input" class="form-control"
														id="jobTitle" path="jobTitle" name="jobTitle"
														placeholder="Job Title" />
													<springForm:errors path="jobTitle" cssClass="error" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Industry/Sector</label>
													<springForm:select class="form-control" path="industryType"
														id="industryType" name="industryType">
														
														<springForm:option value="0">--Select --</springForm:option>
														<springForm:option value="1">IT</springForm:option>
														
														
													</springForm:select>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Organization Name</label>
													<springForm:input type="input" class="form-control"
														id="organizationName" path="organizationName"
														placeholder="Organization Name" name="organizationName" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Experience
														required(yrs)</label>
													<springForm:select class="form-control"
														path="experienceRequired" id="experienceRequired"
														name="experienceRequired">
														<springForm:option value="0">--Select --</springForm:option>
														<springForm:option value="1">2 Years</springForm:option>

													</springForm:select>
												</div>
											</div>

										</div>
										<div class="row">

											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Skill Set </label>
													<springForm:textarea id="skillSets" path="skillSets"
														class="form-control" rows="1"
														placeholder="Ex: typehiger,msexcel," name="skillSets"></springForm:textarea>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Location</label>
													<springForm:input id="location" path="location"
														type="input" class="form-control" placeholder="Location"
														name="location" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Last Date to Apply</label>
													<springForm:input type="date" path="lastDateToApply"
														class="form-control" id="lastDateToApply"
														placeholder="Last Date to Appl" name="lastDateToApply" />
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Compensation</label>
													<springForm:input type="input" path="salary"
														class="form-control" id="salary"
														placeholder="Compensation" name="salary" />
												</div>
											</div>
										</div>
										<div class="row">

											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Disability Type </label>
													<springForm:select class="form-control" id="disabilityType"
														path="disabilityType" name="disabilityType">
														
														
														<springForm:option value="0">--Select --</springForm:option>
														<springForm:option value="1">Disabiliy one</springForm:option>
														<springForm:option value="2">Disabiliy two</springForm:option>

													</springForm:select>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<div class="row">
														<div class="col-md-12">
															<label for="exampleInputEmail1">Age</label>
														</div>
														<div class="col-md-5">
															<springForm:input type="number" min="10" max="100"
																class="form-control" id="ageMin" path="ageMin"
																placeholder="MIN" name="ageMin" />
														</div>
														<div class="col-md-5">
															<springForm:input type="number" min="10" max="100"
																class="form-control" id="ageMax" path="ageMax"
																placeholder="MAX" name="ageMax" />
														</div>
													</div>


												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Job Description</label>
													<springForm:textarea id="jobDescription"
														path="jobDescription" class="form-control" rows="2"
														placeholder="Enter Job Description" name="jobDescription"></springForm:textarea>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label for="exampleInputEmail1">Additional Notes</label>
													<springForm:textarea id="additionalNotes"
														path="additionalNotes" class="form-control" rows="2"
														placeholder="Enter Additional Notes"
														name="additionalNotes"></springForm:textarea>
												</div>
											</div>
										</div>


									</springForm:form>

									<div class="row">
										<div class="col-md-12" style="text-align: center;">
											<button type="submit" class="btn btn-ar btn-primary"
												onclick="validateForm()">Submit</button>
										</div>
									</div>



								</div>



							</div>
						</div>
					</div>
				</section>