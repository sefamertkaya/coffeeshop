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

  <title>Ürün Ekle</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

</head>

<body >

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

      <div class="container-fluid">
       <br>
       <h4><b>Ürün Ekleme Ekranı</b></h4>
       <hr>
              <div class="form-group">
                  <label for="usr">Ürün Adı:</label>
                  <input type="text" class="form-control col-5" id="adi" name="username" placeholder="Ürün adı">
                </div>
     
                  <div class="form-group">
                      <label for="usr" style="float: left">Ürün Fiyatı:</label>
                      <input type="text" class="col-1" id="fiyat" name="username" style="margin-left: 25px" placeholder="₺">
                    </div>

                  <label for="usr">Kategori Seç:</label>
                  <input type="text" class="col-2" id="kategori" name="username" style="margin-left: 25px" placeholder="Kategori">
                 
                  <br>
                  <br>
                  <button type="button" class="btn btn-secondary" onclick="urunEkle()">Kaydet!</button>

    </div>

    <div class="modal" id="myModal">
        <div class="modal-dialog">
          <div class="modal-content">
      
            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">Modal Heading</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
      
            <!-- Modal body -->
            <div class="modal-body">
              Modal body..
            </div>
      
            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
      
          </div>
        </div>
      </div>
      

    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="javascript/urunEkle.js"></script>
 
 
 
  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

</body>

</html>
