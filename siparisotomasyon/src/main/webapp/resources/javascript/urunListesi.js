var sonuc=0;


function ekle(id){

	var param={
			urunId:id,
		
	}
	
	var ser_data= JSON.stringify(param); 
	$.ajax({
		
		type:"POST",
		contentType:"application/json; charset=UTF-8",
		url:"./../uruns",
		data:ser_data,
	
			success:function(data){
		
					document.getElementById("yakala").innerHTML +='<a href="#" class="list-group-item list-group-item-action id="s'+data.urunId+'"">'+data.urunAdi+'</a>';
					sonuc+=parseInt(data.fiyat);
					document.getElementById("fiyat").innerHTML = sonuc;

				
				},error:function(data){
				alert(data);
				}
		
	});
	kaydet(id);

}

function kaydet(id){

		var param={
			
				masaNo:$("#idmasa").val(),
				urunId:id,
		}
		
		var ser_data= JSON.stringify(param); 
		
		$.ajax({
			
			type:"POST",
			contentType:"application/json; charset=UTF-8",
			url:"./../kaydet",
			data:ser_data,
		
				success:function(data){

					},error:function(data){
					alert("hata");
					}
			
		});

	
	
}




