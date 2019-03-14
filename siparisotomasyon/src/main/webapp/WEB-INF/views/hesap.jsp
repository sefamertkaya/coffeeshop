<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="tr">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Hesap</title>

<!-- Bootstrap core CSS -->
<link href="./../vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./../css/simple-sidebar.css" rel="stylesheet">
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

.listeb {
	position: fixed;
	max-height: 100vh;
	overflow-y: auto;
}

.cse {
	position: :fixed;
	overflow-y: auto;
	max-height: 60vh;
}
</style>




</head>

<body>
<input style="display: none" hidden value="${id}" id="idmasa" />

	<div class="d-flex" id="wrapper">

		<!-- Sidebar -->
		<div class="bg-light border-right" id="sidebar-wrapper">
			<a href="./../servisac" style="text-decoration: none;color: black;"><div class="sidebar-heading">
				Kahve Gezegeni <i class="fas fa-mug-hot"></i>
			</div></a>
			<div class="list-group list-group-flush">
				<a href="./../servisac"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-utensils"></i> Servis Aç</a> <a href="./../acikmasalar"
					class="list-group-item list-group-item-action bg-light"><i
					class="far fa-eye"></i> Hesap</a> <a href="./../siparisler"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-clipboard-list"></i> Sipariş</a> <a href="./../urunler"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-dolly"></i> Ürünler</a> <a href="./../urunekle"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-plus-square"></i> Ürün Ekle</a> 
			</div>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">

			<div class="container-fluid">

				<div class="row">

					<div class="col-sm-2">
					
					</div>

					<div class="col-sm-4">

					
						<div class="card bg-light" style="width: 40rem;">
							<div class="card-body">
								<h5 class="card-title">Masa ${id}</h5>
								<h6 class="card-subtitle mb-2 text-muted">Hesap Fişi</h6>
								<div class="cse">
									<div class="list-group">
										
										<c:forEach items="${masa}" var="masa">
									
									<a href="#" class="list-group-item list-group-item-action">${masa.siparis}</a>
								
										</c:forEach>
										

									</div>

								</div>

								<br>

								<div class="offset-lg-9">
									<p>Toplam : <span>${para}</span>  ₺</p>
								</div>
								<hr>
								<a href="./../acikmasalar"><button type="button" class="btn btn-success  offset-lg-9" >     
									<i class="fas fa-cash-register"></i> Hesap Öde
								</button></a>

							</div>
						</div>




					</div>



				</div>

			</div>


		</div>
	</div>
	<!-- /#page-content-wrapper -->

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
	<script src="./../vendor/jquery/jquery.min.js"></script>
	<script src="./../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>

</body>

</html>
