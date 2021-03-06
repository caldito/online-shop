<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import = "entities.UserBean"
    import = "java.util.List"
    import = "java.util.ArrayList"
    import = "org.apache.commons.codec.binary.StringUtils" 
    import = "org.apache.commons.codec.binary.Base64"
    import = "jdbc.UserDAOImp"
    %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Online Shop | Admin User List</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/cover/">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="./resources/album.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
</head>
  <body>
<header>
        <%@ include file="headerAdmin.jsp" %>
    </header>
<main role="main" class="back-box">

  <section class="jumbotron text-center back-box" style="color: white;">
    <div class="container">
      <h1>All the Users</h1> 
    </div>
  </section>

  <div class="album py-5 bg-light back-box">
    <div class="container back-box">
     
      <div class="row">
      <% Object UsersObject = request.getAttribute("users");
         if(UsersObject == null) {
			request.setAttribute("errorMsg", "Not able to load the products!");	
			RequestDispatcher rd = request.getRequestDispatcher("/errorPage.jsp");
			rd.forward(request, response);
		 }
    	 List<UserBean> users = (List<UserBean>)UsersObject;
    	 UserDAOImp userDAO = new UserDAOImp();
         for(int i = 0; i < users.size(); i++){ 
        	  if(!userDAO.isAdmin(users.get(i).getId())) {    %>
        <div class="col-md-4">
        <div class="card mb-4 shadow-sm">
              <h4><%= users.get(i).getEmail() %></h4>
              <p class="card-text"><%= users.get(i).getName()%>&nbsp;<%= users.get(i).getSurname() %></p>
              <div class="d-flex justify-content-between align-items-center">
			  <form action='/online_shop/editUser' method='get'>
                	<button name="idUser" value="<%= users.get(i).getId() %>" class="btn btn-warning" type="submit" id="button-addon1">Editar</button>
		      </form>
                <form action='/online_shop/deleteUser' method='post'>
                    <button type='submit' name="idUser" value="<%= users.get(i).getId() %>" type="button" class="close" aria-label="Close">
 			<span aria-hidden="true" style="color=red">Delete ×</span>
	            </button>
		    </form>
                </div>
              </div>
            </div>
            <% } %>
            <% } %>
          </div>
        </div>
        </div>

</main>

<footer class="page-footer mt-auto text-center">
  <div class="inner">
    <p>Online shop</p>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src=".resources/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</html>