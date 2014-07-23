<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>jQuery File Upload Example</title>
<!-- <script src="js/jquery.1.9.1.min.js"></script> -->

<script src="js/jquery.ui.widget.js"></script>
<script src="js/jquery.iframe-transport.js"></script>
<script src="js/jquery.fileupload.js"></script>
<!-- 
<!-- <script src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet" /> -->

<!-- we code these -->
<link href="css/dropzone.css" type="text/css" rel="stylesheet" />
<script src="js/myuploadfunction.js"></script>
</head>

<body>
<div style="width:500px;padding:20px">

	<input id="fileupload" type="file" name="files[]" data-url="http://localhost:8080/FissionHRMS/upload" multiple>
	
	
	
	<div id="progress" class="progress">
    	<div class="bar" style="width: 0%;"></div>
	</div>

	<table id="uploaded-files" class="table">
		<tr>
			<th>File Name</th>
			<th>File Size</th>
			<th>File Type</th>
		</tr>
	</table>
	
</div>
</body> 
</html>
