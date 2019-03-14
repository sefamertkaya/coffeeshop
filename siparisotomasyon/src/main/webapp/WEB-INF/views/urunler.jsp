<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Servis Aç</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/simple-sidebar.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
.sil {
	color: black;
}

.stil:hover {
	
}

.orta{
  position: fixed;
  max-height: 100vh;
  overflow-y: auto;
  width: 665px;
}

</style>


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



			<div class="container-fluid">
	<div class="row">

<div class="col-sm-2"></div>

<div class="col-sm-8">

  
    <br>
<h5 align=center><b>Ürünler Listesi</b></h5>
<br>
<input class="form-control" id="myInput" type="text" placeholder="Aramak istediğiniz şeyi yazınız..">
<div class="orta">
    <table class="table table-hover">
        <thead>
          <tr>
            <th>Kategori</th>
            <th>Ürün Adı</th>
            <th>Fiyat</th>
            <th>Detay ve Sil</th>
          </tr>
        </thead>
        <tbody id="myTable">
        
        <c:forEach items="${urunler}" var="urunler">
        
             <tr>
            <td>${urunler.kategori}</td>
            <td>${urunler.urunAdi}</td>
            <td>${urunler.fiyat}</td>
            <td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal${urunler.urunId}"><i class="fas fa-lira-sign"></i></button>
            <button type="button" class="btn btn-danger" onclick="kaldir(${urunler.urunId})"><i class="far fa-trash-alt"></i></button>
            </td>
          </tr>
        
            </c:forEach>
  
         
        </tbody>
      </table>

</div>
</div>

<div class="col-sm-2"></div>

</div>

			</div>
		</div>
		<!-- /#page-content-wrapper -->
		
		
		
		<c:forEach items="${urunler}" var="urunler">
    
    <div class="modal" id="myModal${urunler.urunId}">
        <div class="modal-dialog">
          <div class="modal-content">
      
            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">${urunler.urunAdi} Fiyatını Güncelle</h4>
              
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
      
            <!-- Modal body -->
            <div class="modal-body" align=center>
               
                  <div class="form-group">
                      <label for="usr" style="">Ürün Fiyatı:</label>
	<form:form method="POST" action="fiyatguncelle" modelAttribute="urunA" >
	

	<form:input path="fiyat" cssClass="form-control"/>
	
	 <input type="text" hidden name="value" id="value" value="${urunler.urunId}"/>
	
	 <button type="submit" class="btn btn-info btn-lg" style="margin-left: 10px;margin-top: 10px"><i class="fas fa-comments-dollar"></i> <br>Güncelle</button>

	</form:form>
                    </div>


            </div>
      
            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">Kapat</button>
            </div>
      
          </div>
        </div>
      </div>
    
    
    	</c:forEach>
		
		

	</div>
	<!-- /#wrapper -->
<script>
		$(document)
				.ready(
						function() {
							$("#myInput")
									.on(
											"keyup",
											function() {
												var value = $(this).val()
														.toLowerCase();
												$("#myTable tr")
														.filter(
																function() {
																	$(this)
																			.toggle(
																					$(
																							this)
																							.text()
																							.toLowerCase()
																							.indexOf(
																									value) > -1)
																});
											});
						});
	</script>
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




<script src="javascript/kaldir.js"></script>
</body>

</html>

