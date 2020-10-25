<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dashboard - Online shop</title>

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
      <div class="container" >
        <nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
          <a class="navbar-brand">Online Shop</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      
          <div class="collapse navbar-collapse" id="navbarsExample09">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="./dashboard.jsp">Home <span class="sr-only">(current)</span></a>
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

<main role="main" class="back-box">

  <section class="jumbotron text-center back-box" style="color: white;">
    <div class="container">
      <h1>Online Shop</h1>
      <p class="lead">Welcome to the best online shop. Here you can look for the product you want.</p>
    </div>
  </section>

  <div class="album py-5 bg-light back-box">
    <div class="container back-box">

      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
              <h4>Product name</h4>
              <p class="card-text">Description of the product</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <button class="btn btn-outline-secondary" type="button" id="button-addon1">Añadir al carro</button>
                    </div>
                    <input type="number" min="1" class="form-control" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
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