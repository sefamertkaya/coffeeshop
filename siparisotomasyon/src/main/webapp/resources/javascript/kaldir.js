function kaldir(id){
	var r = confirm("Ürünü Kaldırmak İstiyor Musunuz ?");
	if (r == true) {
		 
	var param={
			urunId:id,
	
	}

	var ser_data= JSON.stringify(param); //param dizisini gidiyp json datası haline getiriyo.
	
	$.ajax({
		
		type:"POST",
			contentType:"application/json; charset=UTF-8",
			url:"urunSil",
			data: ser_data,
			success:function(data){
		
				window.location.href="/siparisotomasyon/urunler";
				
				},error:function(data){
				alert(data);
				}
		
	});
	  } else {
		   
	  }
	
}

