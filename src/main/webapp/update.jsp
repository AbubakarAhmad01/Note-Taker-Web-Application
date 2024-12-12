<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.helper.*,org.hibernate.*,com.entities.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css_js.jsp" %>
</head>
<body>
<div class ="container">
    <%@include file="navbar.jsp" %>
    
    <h1>Edit Your Notes here</h1>
    <br>
    
    <%
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
    Session s=FactoryProvider.getFactory().openSession();	
	Note note=(Note)s.get(Note.class, noteId);
	s.close();
	
	
    %>

		<form action="UpdateServlet" method="post">
		
		    <input value="<%= note.getId() %>" name="noteId" type="hidden"  />
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter title" value="<%= note.getTitle() %>" required>

			</div>

			<div class="form-group">
				<label for="content">Description</label>
				<textarea class="form-control" name="content" id="content"
					placeholder="Enter Content here" style="height: 300px;" required><%= note.getContent() %></textarea>
			</div>


			<div class="container text-center">

				<button type="submit" class="btn btn-success">Save your note</button>

			</div>
		</form>



	</div>
</body>
</html>