<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Evidence Management</title>



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.rawgit.com/atatanasov/gijgo/master/dist/combined/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://cdn.rawgit.com/atatanasov/gijgo/master/dist/combined/css/gijgo.min.css" rel="stylesheet" type="text/css" />

</head>


<script>
function check(element)
{
	alert(element);
}

	$(document).ready(function() {
		$("#mytable #checkall").click(function() {
			if ($("#mytable #checkall").is(':checked')) {
				$("#mytable input[type=checkbox]").each(function() {
					$(this).prop("checked", true);
				});

			} else {
				$("#mytable input[type=checkbox]").each(function() {
					$(this).prop("checked", false);
				});
			}
		});

		$("[data-toggle=tooltip]").tooltip();
	});
	
	$(document).ready(function () {
	    $('#datepicker').datepicker({
	      uiLibrary: 'bootstrap'
	    });
	});
	
	
	$(document).on("click", ".open-AddImgDialog", function () {
		 var imgsrc = $(this).data('id');
		 $('#my_image').attr('src',imgsrc);
		});
	
	

	
</script>
<body>





<div class="container">
<br/><br/><br/>


 <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#case">Case</a></li>
    <li><a data-toggle="pill" href="#evidence">Evidences</a></li>
    <li><a data-toggle="pill" href="#menu2">Officers</a></li>
    <li><a data-toggle="pill" href="#menu3">Others</a></li>
  </ul>
  

<div class="tab-content">


		
<div id="case" class="tab-pane fade in active">
      <h3>Case Details</h3>
      
<!--BEGIN HEAD-->
<small>

<!--END HEAD-->

<!--BEGIN FIRST CARD-->
<div class="card border-success mb-3 text-center">
  <div class="card-header">
    
  </div>
  <div>
    <div class="card-body text-center">
    <div class="col-md-6 table-responsive">
	  <table class="table table-hover group table-striped" align="center">
	    <colgroup>
            <col class="col-md-4">
            <col class="col-md-7">
        </colgroup>
	  	<tbody>   
	  	  <tr>
	  		<td><b>CaseNo:</b></td>
	  		<td>${caseDetail.caseNo}</td>
	  	 </tr>
	  			
	  		<tr>
	  		<td><b>Case Name:</b></td>
	  		<td>${caseDetail.caseName}</td>
	  	 </tr>
	  
	  		<tr>
	  		<td><b>Date:</b></td>
	  		<td>${caseDetail.date}</td>
	  	    </tr>
	  	    
	  	    <tr>
	  		<td><b>Investigation Officer:</b></td>
	  		<td>${caseDetail.invsgtnOfficer}</td>
	  	    </tr>
	  	    
	  	</tbody>
	  	</table>
	  	
    </div>
	
   </div>
</div>
</div>

</small>
</div>
<!--END FIRST CARD-->
      
      
      
  
   
   
   
   
   <div id="evidence" class="tab-pane fade">
		<div class="row">
			<div class="col-sm-8">
				<h2>
					Evidence Details
				</h2>
			</div>
			<div class="col-sm-4">
				<button type="button" class="btn btn-info add-new" data-toggle="modal" data-target="#add">
					<i class="fa fa-plus"></i> Add New Evidence
				</button>
										
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="table-responsive">


					<table id="mytable" class="table table-bordred table-striped">

						<thead>
							<th><input type="checkbox" id="checkall" /></th>
							<th>Evidence Type</th>
							<th>Date</th>
							<th>Victim</th>
							<th>Culprit</th>
							<th>Contact</th>
							<th>Edit</th>
							<th>Delete</th>
							<th>View</th>

						</thead>
						<tbody>
                        <c:forEach items="${caseDetail.evidenceList}" var="temp">
							<tr>
								<td><input type="checkbox" class="checkthis" /></td>
								<td>${temp.evidenceType}</td>
								<td>${temp.date}</td>
								<td>${temp.victim}</td>
								<td>${temp.culprit}</td>
								<td>+923335586757</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Edit-Evidence">
										<button class="btn btn-primary btn-xs" data-title="Edit"
											data-toggle="modal" data-target="#edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete-Evidence">
										<button class="btn btn-danger btn-xs" data-title="Delete"
											data-toggle="modal" data-target="#delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="View-Evidence">
										<button class="btn btn-success btn-xs open-AddImgDialog" data-title="View"
											data-toggle="modal" data-target="#view" data-id= ${temp.file}>
											<span class="glyphicon glyphicon-picture"></span>
										</button>
									</p></td>
									
							</tr>

							<tr>
								<td><input type="checkbox" class="checkthis" /></td>
								<td>Mohsin</td>
								<td>Irshad</td>
								<td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
								<td>isometric.mohsin@gmail.com</td>
								<td>+923335586757</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Edit">
										<button class="btn btn-primary btn-xs" data-title="Edit"
											data-toggle="modal" data-target="#edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete">
										<button class="btn btn-danger btn-xs" data-title="Delete-Evidence"
											data-toggle="modal" data-target="#delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</p></td>
									
							   <td><p data-placement="top" data-toggle="tooltip"
										title="View-Evidence">
										<button class="btn btn-success btn-xs open-AddImgDialog" data-title="View"
											data-toggle="modal" data-id="resources/images/Output1.PNG" data-target="#view">
											<span class="glyphicon glyphicon-picture"></span>
										</button>
									</p></td>
							</tr>


							<tr>
								<td><input type="checkbox" class="checkthis" /></td>
								<td>Mohsin</td>
								<td>Irshad</td>
								<td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
								<td>isometric.mohsin@gmail.com</td>
								<td>+923335586757</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Edit">
										<button class="btn btn-primary btn-xs" data-title="Edit-Evidence"
											data-toggle="modal" data-target="#edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete">
										<button class="btn btn-danger btn-xs" data-title="Delete-Evidence"
											data-toggle="modal" data-target="#delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</p></td>
									
									<td><p data-placement="top" data-toggle="tooltip"
										title="View-Evidence">
										<button class="btn btn-success btn-xs" data-title="View"
											data-toggle="modal" data-target="#view">
											<span class="glyphicon glyphicon-picture"></span>
										</button>
									</p></td>
							</tr>



							<tr>
								<td><input type="checkbox" class="checkthis" /></td>
								<td>Mohsin</td>
								<td>Irshad</td>
								<td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
								<td>isometric.mohsin@gmail.com</td>
								<td>+923335586757</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Edit">
										<button class="btn btn-primary btn-xs" data-title="Edit-Evidence"
											data-toggle="modal" data-target="#edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete">
										<button class="btn btn-danger btn-xs" data-title="Delete-Evidence"
											data-toggle="modal" data-target="#delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</p></td>
									<td><p data-placement="top" data-toggle="tooltip"
										title="View-Evidence">
										<button class="btn btn-success btn-xs" data-title="View"
											data-toggle="modal" data-target="#view">
											<span class="glyphicon glyphicon-picture"></span>
										</button>
									</p></td>
							</tr>


							<tr>
								<td><input type="checkbox" class="checkthis" /></td>
								<td>Mohsin</td>
								<td>Irshad</td>
								<td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
								<td>isometric.mohsin@gmail.com</td>
								<td>+923335586757</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Edit">
										<button class="btn btn-primary btn-xs" data-title="Edit-Evidence"
											data-toggle="modal" data-target="#edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete">
										<button class="btn btn-danger btn-xs" data-title="Delete-Evidence"
											data-toggle="modal" data-target="#delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</p></td>
							</tr>





						</tbody>

					</table>

					<div class="clearfix"></div>
					<ul class="pagination pull-right">
						<li class="disabled"><a href="#"><span
								class="glyphicon glyphicon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>

				</div>

			</div>
		</div>
	</div>
	
	
      <div class="modal fade" id="view" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Evidence
						</h4>
				</div>
				<div class="modal-body">
					
					<img class="img-responsive" id="my_image" />
					
				</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	



	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Edit Your
						Detail</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<input class="form-control " type="text" placeholder="Mohsin">
					</div>
					<div class="form-group">

						<input class="form-control " type="text" placeholder="Irshad">
					</div>
					<div class="form-group">
						<textarea rows="2" class="form-control"
							placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>


					</div>
				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-warning btn-lg"
						style="width: 100%;">
						<span class="glyphicon glyphicon-ok-sign"></span> Update
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>



	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Delete this
						entry</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> Are you
						sure you want to delete this Record?
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success">
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>


<!-- /.Add-Modal Starts -->

<form action="addEvidence" method="post" enctype='multipart/form-data'>
<div class="modal fade" id="add" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Add Evidence
						</h4>
				</div>
				<div class="modal-body">
				
				<label for="sel1">Evidence Type :</label>
				<select class="form-control form-control-lg" name="evidenceType" id="evidenceType" onchange="" required>
                  <option value="">Choose... </option>
                  <option value="Audio">Audio</option>
                  <option value="Video">Video</option>
                  <option value="Image">Image</option>
                  <option value="Others">Others</option>
                </select>
      
      <label for="sel1">Date :</label>
      <div class="form-group">
      <input id="datepicker" width="270" name="date"/>
      <a href="http://gijgo.com/datepicker/example/bootstrap"></a>
      </div>
      
      <label for="sel1">Victim :</label>
					<div class="form-group">
						<input class="form-control " type="text" placeholder="victim" name="victim">
					</div>
					
	  <label for="sel1">Culprit :</label>
					<div class="form-group">
						<input class="form-control " type="text" placeholder="culprit" name="culprit">
					</div>
					
	 <div class="form-group files">
                <label>Upload Your File </label>
                <input type="file" class="form-control" name="file" onchange=check(this)>
              </div>


					</div>
				</div>
				<div class="modal-footer ">
					<button type="submit" class="btn btn-success btn-lg"
						style="width: 100%;">
						<span class="glyphicon glyphicon-ok-sign"></span> Add
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		</form>
		<!-- /.modal-dialog -->
		
		
		
		
    
    <div id="menu2" class="tab-pane fade">
      <h3>Officer Details</h3>
      <p>Officers 1 23 4 4 4  55 5</p>
    </div>
	
</div>

</div><!-- Tab container end -->

</div> <!-- container end -->
</body>
</html>