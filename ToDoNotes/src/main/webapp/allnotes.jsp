
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Note Taker</title>
<%@include file="alljscss.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>


		<div class="row">

			<div class="col-12">

				<%
				//cause we need to fetch details again:

				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Notes"); /* select * from notes
												and returns an object of query*/
				List<Notes> list = q.list();

				//Ek ek note nikaal k print krne k liye.

				for (Notes note : list) {

					/* out.println(note.getId()+ " : " + note.getTitle()+ "<br>");
					}
					All the notes will be printed */
				%>

				<div class="card mt-3">
					<!-- mt-3= to make space b/w each card -->
					<img class="card-img-top m-4 mx-auto" style="max-width: 100px;" /*
						max-auto=to set image at center
						*/
					
						src="img/pencil.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text">
							<%=note.getContent()%>
						</p>
						<p>
							<b class="text-primary"><%=note.getAddedDate()%></b>
						</p>
						<div class="container text-center mt-2">

<!--url rewriting k through 
we are sending noteId and we
can fetch this Id in 
DeleteServlet  -->
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a>
							<a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>


				<%
				}

				s.close();
				%>


			</div>

		</div>


	</div>
</body>
</html>