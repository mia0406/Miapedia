<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="xlsx.full.min.js"></script>
</head>
<body>
<div id="wrapper">
	<p>Input Excel</p>
	<input type="file" name="input-excel" id="input-excel" />
</div>
<div id="contents"></div>
<script>
$('#input-excel').change(function(e){
	
	var filename = document.getElementById('input-excel').files[0].name;
    
	var reader = new FileReader();
    reader.readAsArrayBuffer(e.target.files[0]);
    reader.onload = function(e) {    
    	var data = new Uint8Array(reader.result);
        var wb = XLSX.read(data,{type:'array'});
        
        var htmlstr = XLSX.write(wb,{sheet:"", type:'binary',bookType:'html'});
        $('#contents')[0].innerHTML += htmlstr;
    }
});
</script>
</body>
</html>