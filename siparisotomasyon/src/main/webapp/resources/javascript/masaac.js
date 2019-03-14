function masaac(){
	
	
	var param={
			masaNo:$("#yaz").val(),
	
	}

	var ser_data= JSON.stringify(param); //param dizisini gidiyp json datası haline getiriyo.
	
	$.ajax({
		
		type:"POST",
			contentType:"application/json; charset=UTF-8",
			url:"masaac",
			data: ser_data,
			success:function(data){
		
				
				alert("MASA ACİLDİ");
				
				},error:function(data){
				alert(data);
				}
		
	});
	
}

