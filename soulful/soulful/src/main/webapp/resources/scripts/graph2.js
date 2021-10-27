// 가사 감정
window.onload = function () {
    pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    document.getElementById('legend-div1').innerHTML = window.pieChart.generateLegend();
	weather();
	
}

function weather() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(hzCoords);
  } else { 
    console.log("geolocation 미지원");
  }
}
function hzCoords(position) {
   var latitude = position.coords.latitude
   var longitude = position.coords.longitude
   
   var apiURI = "http://api.openweathermap.org/data/2.5/weather?lat="+latitude+"&lon="+longitude+"&appid=878118be45ca93ce200fa5709cd234b5";
    $.ajax({
        url: apiURI,
        dataType: "json",
        type: "GET",
        async: "false",
        success: function(resp) {
            console.log(resp);
            console.log("현재온도 : "+ (resp.main.temp- 273.15) );
            console.log("현재습도 : "+ resp.main.humidity);
            console.log("날씨 : "+ resp.weather[0].main );
            console.log("상세날씨설명 : "+ resp.weather[0].description );
            console.log("날씨 이미지 : "+ resp.weather[0].icon );
            console.log("바람   : "+ resp.wind.speed );
            console.log("나라   : "+ resp.sys.country );
            console.log("도시이름  : "+ resp.name );
            console.log("구름  : "+ (resp.clouds.all) +"%" );                 
        }
    })

}






let pieChartData = {
    labels: ['기쁨', '슬픔', '편안', '흥분'],
    datasets: [{
        data: [40, 20, 32, 5],
        backgroundColor: ['rgb(198, 162, 198)', 'rgb(161, 137, 185)', 'rgb(188, 143, 143)', 'rgb(217, 177, 155)']
    }] 
};
let pieChartData1 = {
    labels: ['가', '나', '다', '라'],
    datasets: [{
        data: [70, 10, 15, 5],
        backgroundColor: ['rgb(198, 162, 198)', 'rgb(161, 137, 185)', 'rgb(188, 143, 143)', 'rgb(217, 177, 155)']
    }] 
};



let pieChartDraw = function () {
    let ctx = document.getElementById('pieChartCanvas').getContext('2d');
    
    window.pieChart = new Chart(ctx, {
        type: 'pie',
        data: pieChartData,
        options: {
            responsive: false,
            legend: {
                display: false
            },
            legendCallback: customLegend
        }
    });
};

let pieChartDraw1 = function () {
    let ctx1 = document.getElementById('pieChartCanvas1').getContext('2d');
    
    window.pieChart = new Chart(ctx1, {
        type: 'pie',
        data: pieChartData1,
        options: {
            responsive: false,
            legend: {
                display: false
            },
            legendCallback: customLegend
        }
    });
};


let customLegend = function (chart) {
    let ul = document.createElement('ul');
    let color = chart.data.datasets[0].backgroundColor;

    chart.data.labels.forEach(function (label, index) {
        ul.innerHTML += `<li><span style="background-color: ${color[index]}"></span>${label}</li>`;
    });

    return ul.outerHTML;
};

