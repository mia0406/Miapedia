<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/highcharts-more.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
</head>
<body>
<div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>
</body>
<script>
$(function () {
    $.getJSON('http://www.highcharts.com/samples/data/jsonp.php?filename=range.json&callback=?', function(data) {
    
    	$('#container').highcharts({
    	
		    chart: {
		        
		    },
		    
		    title: {
		        text: 'Temperature variation by day'
		    },
		
		    xAxis: {
		        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
		    },
		    
		    yAxis: [
			{
		        title: {
		            text: null
		        }
		    },
			{
		        title: {
		            text: null
		        }
		    },
			{
		        title: {
		            text: null
		        }
		    }
			],
		   legend: {
		        enabled: false
		    },
        
        // 점 안보이게 해주는 역할
        plotOptions:{
        	line:{
          	marker:{
            	enabled: false
            }
          },
          area:{
          	marker:{
            	enabled: false
            }
          }
        },
		
		    series: [{
       		type: 'area',
		    	data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
		    	color: 'pink',
          threshold: 100,
					negativeColor: '#00ff0000'
				
		    },
			{
        	type: 'area',
		    	data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
		      color: '#00ff0000'
		  },
      {
					type: 'line',
					data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
					color: 'pink',
					threshold: 100,
					negativeColor: '#003416'
			},
			{
					type: 'line',
          data: [100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100],
					color: 'red',
          lineWidth: 5
			},
			]
		});
    });  
});

// 참조
// http://jsfiddle.net/ARxDR/
// https://github.com/highcharts/highcharts/issues/1699
</script>
</html>
