<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Siparişler</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
		<a href="servisac" style="text-decoration: none;color: black;"><div class="sidebar-heading">
				Kahve Gezegeni <i class="fas fa-mug-hot"></i>
			</div></a>
			<div class="list-group list-group-flush">
				<a href="servisac"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-utensils"></i> Servis Aç</a> <a href="acikmasalar"
					class="list-group-item list-group-item-action bg-light"><i
					class="far fa-eye"></i> Hesap</a> <a href="siparisler"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-clipboard-list"></i> Sipariş</a> <a href="urunler"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-dolly"></i> Ürünler</a> <a href="urunekle"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-plus-square"></i> Ürün Ekle</a> 
			</div>
		</div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

  

      <div class="container-fluid" >
        <br>
        <div class="row">
            <div class="col-lg-11 col" align=center >

              <h5><b>Sipariş Ver</b></h5>
              <hr>

     	<c:forEach items="${masalar}" var="masalar">
     	
        <a href="siparis/${masalar.masaNo}"><button type="button" class="btn btn-info btn-lg" style="margin-left: 10px;margin-top: 10px"><i class="fas fa-utensils"></i> <br> Masa ${masalar.masaNo}</button></a>
									</c:forEach>
									
     

            </div>
      </div>
      </div>
    </div>

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

</body>

</html>
