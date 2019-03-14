function urunEkle(){
	
	
	var param={
			fiyat:$("#fiyat").val(),
			urunAdi:$("#adi").val(),
			kategori:$("#kategori").val(),

	}

	var ser_data= JSON.stringify(param); 
	
	$.ajax({
		
		type:"POST",
			contentType:"application/json; charset=UTF-8",
			url:"urunEkle",
			data: ser_data,
			success:function(data){
		
				
				alert("Ürün Eklendi");
				
				},error:function(data){
				alert(data);
				}
		
	});
	
}

