
window.onload = function homzzang() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(hzCoords);
  } else { 
  	console.log("Geolocation 미지원 브라우저는 개나 줘버려.");
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

