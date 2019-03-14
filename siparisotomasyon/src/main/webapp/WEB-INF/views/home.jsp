<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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

<style>
.sil {
	color: black;
}

.stil:hover {
	
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
				<br> <br>
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4" align=center>
						<h5>
							<b>Servis Açmak İçin Masa Numarasını Girin.</b>
						</h5>
						<hr>

						<form>
							<div class="input-group mb-3 input-group-lg" style="width: 260px">
								<input type="text" class="form-control" id="yaz" value="">
								<div class="input-group-append">
									<span class="input-group-text"><button type="button"
											class="btn btn-danger btn-sm" onclick="sil()">
											<i class="fas fa-trash"></i>
										</button> </span>
								</div>

							</div>
						</form>

						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(0)">0</button>
						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(1)">1</button>
						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(2)">2</button>
						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(3)">3</button>
						<br> <br>
						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(4)">4</button>

						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(5)">5</button>
						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(6)">6</button>
						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(7)">7</button>
						<br> <br>
						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(8)">8</button>
						<button type="button" class="btn btn-success btn-lg"
							style="width: 60px; height: 60px;" onclick="sayi(9)">9</button>
						<br> <br>
						<div align=center>
							<button type="button" class="btn btn-warning btn-lg"
								style="height: 60px; width: 135px" onclick="masaac()">
								<i class="fas fa-utensils"></i> Servis Aç
							</button>
						</div>
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

	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>


	<script>
		function sayi(id) {

			var x = id;
			document.getElementById("yaz").value = document
					.getElementById("yaz").value
					+ x;
		}

		function sil() {

			document.getElementById("yaz").value = "";

		}
	</script>


<script src="javascript/masaac.js"></script>
</body>

</html>

