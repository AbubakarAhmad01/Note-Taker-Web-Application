<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_css_js.jsp" %>
</head>
<body>

 <div class ="container">
    <%@include file="navbar.jsp" %>
    
    <br>
    <h1>Add Notes Here !</h1>
    
    <!-- Add form -->
    
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title" required>
    
  </div>
  
  <div class="form-group">
    <label for="content">Description</label>
    <textarea class="form-control" name="content" id="content" placeholder="Enter Content here" style="height:300px;" required></textarea>
  </div>
  
  
  <div class="container text-center">
  
  <button type="submit" class="btn btn-primary">Add</button>
  
  </div>
</form>

    </div>

</body>
</html>