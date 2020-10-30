<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Online Shop | Register</title>
  </head>
  <body style="background: #6d2eff;">
    <header>
        <div class="container" >
          <nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
            <a class="navbar-brand" style="color: black;">Online Shop</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarsExample09">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item ">
                  <a class="nav-link" href="./dashboard.jsp">Home </a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="./addProduct.jsp">Add product<span class="sr-only">(current)</span> </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./user-config.jsp">My user</a>
                </li>
              </ul>
              <form class="form-inline my-2 my-md-0">
                <div style="padding-right: 20px;">
                  <a type="button" class="btn btn-outline-warning" href="./user-config.jsp">My cart</a>
                </div>
                <input class="form-control" type="text" placeholder="Search" aria-label="Search">
                <a href="./search.jsp" class="btn btn-primary nav-item">Search</a>
              </form>
            </div>
          </nav>
    </header>
 	
		<!-- Default form register -->
	<form action='/addProdcut' method='post' class='text-center border border-light p-5 container' style='width:650px; margin-top: 50px;'>
	
	    <p class='h4 mb-4' style="color: white;">Add a Product</p>
	
	    <div class='form-row mb-4'>
	        <div class='col'>
	            <!-- Product name -->
	            <input name='productName' type='text' id='productName' class='form-control' placeholder='Product name'>
            </div>
            <div class='col'>
            <!-- Cattegory -->
                <label style="color: white;" for="cattegory">Cattegory:</label>
                <select id="cattegory" name="cattegoryProduct">
                  <option value="Home">Home</option>
                  <option value="Toy">Toys</option>
                  <option value="Games">Games</option>
                  <option value="Clothes">Clothes</option>
                </select>
            </div>
	    </div>
	
	    <!-- Description -->
	    <textarea name='description' type='text' id='defaultRegisterFormEmail' class='form-control mb-4' placeholder='Description of the product'></textarea>
	
	     <!-- File Button --> 
<div class="form-group">
    <label class="col-md-4 control-label" style="color: white;" for="filebutton">Product Image</label>
    <div class="col-md-4">
      <input style="color: white;" name="image" id="filebutton" name="filebutton" class="input-file" type="file">
    </div>
  </div>

        <div  style="padding-top: 20px; color: white;">
        Price: <input style=" border-radius: 4px; background: white; text-align: center; width: 15%;" name="price" type="number" min="1" step="any"/> €
    </div>

	    <!-- Sign up button -->
	    <button class='btn btn-warning my-4 btn-block' type='submit'>Add Product</button>
	
	    <hr>
	
	</form>
 
  }


	<!-- Default form register -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>