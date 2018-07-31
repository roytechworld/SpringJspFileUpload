<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Spring Crud</title>
	
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function()		
	{
		
		$("#btnUpload").click(function()
	    {
	   alert("called")
	    var value="";
			$.ajax({
			    url: 'uploadFile',
				type: "POST",
		            data: new FormData(document.getElementById("formdata")),
		            enctype: 'multipart/form-data',
		            processData: false,
		            contentType: false,
			        success:function(data)
			{
				alert(data);
				$("#s").html(data);
			}
					
			})
			
	    });

	});
	</script>
	
</head>
<body>
<form method="POST" id="formdata" action="uploadFile" enctype="multipart/form-data">
		File to upload: <input type="file" name="file"><br /> 
		Name: <input type="text" name="name"><br /> <br /> 
		<button id="btnUpload" type="button">Upload file</button>
		
		<div id="s"></div>
</form>	
</body>
</html>
