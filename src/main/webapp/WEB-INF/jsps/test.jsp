<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



</head>
<body>


<form id="upload-file-form" action="uploadFile" enctype='multipart/form-data' method="post">
  <label for="upload-file-input">Upload your file:</label>
  <input id="upload-file-input" type="file" name="uploadfile" accept="*" />
  
              <div class="modal-footer ">
					<button type="submit" class="btn btn-success btn-lg"
						style="width: 100%;">
						<span class="glyphicon glyphicon-ok-sign"></span> Add
					</button>
				</div>
</form>
        
</body>
</html>