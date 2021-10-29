var result;
window.onload = function () {
    pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    document.getElementById('legend-div1').innerHTML = window.pieChart.generateLegend();
	weather();
	
}
function titlechange(){
	var now_weather = result.weather[0].main;
	if (now_weather == "Atmosphere"){
		show_weather = "오늘처럼 흐린 날엔 이런 곡 어떤가요?";
	}else if (now_weather == "Thunderstorm" ||now_weather == "Rain"){
		show_weather = "비가 많이 오네요. 제 추천곡입니다.";
	}else if (now_weather == "Clear" ||now_weather == "Clouds"){
		show_weather = "날씨 좋네요! 이 노래와 함께 나가볼까요?";
	}else if (now_weather == "Drizzle" ||now_weather == "Snow"){
		show_weather = "센치해지는 날씨네요. 이 곡은 어때요?";
	}
	$('.widget-title.h6.m-b').text(show_weather);
}
//날씨 종류 : Thunderstorm, Drizzle, Rain, Snow, Atmosphere, Clear, Clouds  
//Drizzle, Snow - 가랑비,눈 
//Clouds,Atmosphere - 흐림 안개 비슷할것같고
//Thunderstorm, Rain, - 천둥번개, 비 하나로 묶고
//Clear 
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
            result = resp;
            titlechange();
        }
    });
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

