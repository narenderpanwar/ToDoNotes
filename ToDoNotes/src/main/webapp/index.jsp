<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>ToDoNotes.com : Home page</title>
<%@include file="alljscss.jsp"%>


</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>


		<div class="card shadow py-5 bg-success">
		<!-- fluid= just to make it responsive-->
			<img alt="" class="img-fluid mx-auto" style="max-width: 350px;"
				src="img/pencil.png">
			<h1 class="text-light text-uppercase text-center mt-3">Start
				writing your notes</h1>

			<div class="container text-center">
				<a href="addnotes.jsp" class="btn btn-light text-center">Start
					here</a>
			</div>

		</div>

	</div>




</body>
</html>