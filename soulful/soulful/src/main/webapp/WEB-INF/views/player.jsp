<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="kr.smhrd.mapper.PlaylistsVO"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--  server의 context path를 가지고 와서 path가 바뀔 때를 대비해보자!-->
<c:set var="cpath" value= "${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>pulse - Music, Audio and Radio web application</title>
  <meta name="description" content="Music, Musician, Bootstrap" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">




  <!-- for ios 7 style, multi-resolution icon of 152x152 -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
  <link rel="apple-touch-icon" href="resources/images/logo.png">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="shortcut icon" sizes="196x196" href="resources/images/logo.png">
  
  <!-- style -->
  <link rel="stylesheet" href="resources/css/animate.css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/font-awesome/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/material-design-icons/material-design-icons.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/bootstrap/dist/css/bootstrap.min.css" type="text/css" />

  <!-- build:css css/styles/app.min.css -->
  <link rel="stylesheet" href="resources/css/styles/app.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/styles/style.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/styles/font.css" type="text/css" />
  
  <link rel="stylesheet" href="resources/libs/owl.carousel/dist/assets/owl.carousel.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/owl.carousel/dist/assets/owl.theme.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/mediaelement/build/mediaelementplayer.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/mediaelement/build/mep.css" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type = "text/javascript">
  
  var result;
  
  let pieChartData;
  let pieChartData1;
  
  window.onload = function () {
      
  	weather();
  	loadJson_all();
  }
  function titlechange(){
  	var now_weather = result.weather[0].main;
  	if (now_weather == "Atmosphere"){
  		show_weather = "오늘처럼 흐린 날엔 이런 곡 어떤가요?";
  		loadJson_cloud();
  	}else if (now_weather == "Thunderstorm" ||now_weather == "Rain"){
  		show_weather = "비가 많이 오네요. 제 추천곡입니다.";
  		loadJson_rain();
  	}else if (now_weather == "Clear" ||now_weather == "Clouds"){
  		show_weather = "날씨 좋네요! 이 노래와 함께 나가볼까요?";
  		loadJson_clear();
  	}else if (now_weather == "Drizzle" ||now_weather == "Snow"){
  		show_weather = "센치해지는 날씨네요. 이 곡은 어때요?";
  		loadJson_snow();
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



  
  function loadJson_all(){
	 		// 서버에 요청해서 -> list.do Json 데이터를 요청해서 응답받기
	 		// ajax로 비동기통신을 해보자!
	 		 $.ajax({
	 	       url : "${cpath}/songinfos_ListAjax.do",
	 	       type : "GET",
	 	       //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
	 	       dataType : "json",
	 	       success : asd,  // 콜백함수다 얘가
	 	       error : function(){ alert("error");  }
	 	     });
	 	}
  
  var all_list=[];
  function asd(data){
	  
	  var song_title_list=[];
	  var song_artist_list=[];
	  var song_code_list=[];

	$.each(data, (index, obj)=>{
		song_title_list.push(obj.song_title);
		song_artist_list.push(obj.artist);
		song_code_list.push(obj.song_code);
		
	});
	all_list.push(song_title_list);
	all_list.push(song_artist_list);
	all_list.push(song_code_list);
	
	  send_all_data();
  }
  

  function send_all_data(){
  	localStorage.setItem('all_data', JSON.stringify(all_list));
  	 
  }


  // 날씨 로드제이슨
  
    function loadJson_clear(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_clear.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxclear,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
   
    function loadJson_rain(){
        $.ajax({
             url : "${cpath}/playlist_ListAjax_rain.do",
             type : "GET",
             //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
             dataType : "json",
             success : ajaxrain,  // 콜백함수다 얘가
             error : function(){ alert("error");  }
           });
    }
    function loadJson_cloud(){
        $.ajax({
             url : "${cpath}/playlist_ListAjax_cloud.do",
             type : "GET",
             //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
             dataType : "json",
             success : ajaxcloud,  // 콜백함수다 얘가
             error : function(){ alert("error");  }
           });
    }
    function loadJson_snow(){
        $.ajax({
             url : "${cpath}/playlist_ListAjax_snow.do",
             type : "GET",
             //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
             dataType : "json",
             success : ajaxsnow,  // 콜백함수다 얘가
             error : function(){ alert("error");  }
           });
    }
    

    
    var obj;
	let all_data;
	let pl_title;
	let song_code1;
	let song_code2;
	let song_code3;
	let song_code4;
	let song_code5;
	let song_code6;
	let song_code7;
	let song_code8;
	let song_code9;
	let song_code10;
	let album_img;
	let album_img2;
	
     function ajaxclear(data){
    		all_data = data;
    		pl_title = data[0].pl_title;
    		song_code1 = data[0].song_code1;
    		song_code2 = data[0].song_code2;
    		song_code3 = data[0].song_code3;
    		song_code4 = data[0].song_code4;
    		song_code5 = data[0].song_code5;
    		song_code6 = data[0].song_code6;
    		song_code7 = data[0].song_code7;
    		song_code8 = data[0].song_code8;
    		song_code9 = data[0].song_code9;
    		song_code10 = data[0].song_code10;
    		album_img = data[0].playlist_img;
    		album_img2 = data[1].playlist_img;
    		obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10, album_img];
    		
    	 	 $('#play_title1').text(data[0].pl_title);
    	 	 $('#play_title2').text(data[1].pl_title);
    	 	 
    	 	 $('#play_img1').prepend('<img src =resources/images/'+album_img+'.jpg/>');
    	 	 $('#play_img2').prepend('<img src =resources/images/'+album_img2+'.jpg/>');
    	 	// 그래프 값 넣는곳 

			
    	 	 pieChartData = {
    	 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
    	 			    datasets: [{
    	 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
    	 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
    	 			    }] 
    	 			};
    	 	pieChartData1 = {
    	 			  labels: ["어쿠스틱","댄스","활기","화려함"],
    	 			  datasets: [{
    	 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
    	 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
    	 			    }] 
    	 			};
    	 pieChartDraw();
   	     document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
   	     pieChartDraw1();
   	     

    	 	     }
     
     
     function onclick_firstgraph(all_data){
    	 pl_title = all_data[0].pl_title;
 		song_code1 = all_data[0].song_code1;
 		song_code2 = all_data[0].song_code2;
 		song_code3 = all_data[0].song_code3;
 		song_code4 = all_data[0].song_code4;
 		song_code5 = all_data[0].song_code5;
 		song_code6 = all_data[0].song_code6;
 		song_code7 = all_data[0].song_code7;
 		song_code8 = all_data[0].song_code8;
 		song_code9 = all_data[0].song_code9;
 		song_code10 = all_data[0].song_code10;
 		album_img2 = all_data[0].playlist_img;
 		obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10, album_img2];
 		
 		pieChartData = {
 	 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 	 			    datasets: [{
 	 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 	 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 	 			    }] 
 	 			};
 	 	pieChartData1 = {
 	 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 	 			  datasets: [{
 	 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 	 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 	 			    }] 
 	 			};

	     document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();

   	 	pieChartDraw();
	     pieChartDraw1();

 	 	     }
     
     
     function onclick_secondgraph(all_data){
    	 pl_title = all_data[1].pl_title;
 		song_code1 = all_data[1].song_code1;
 		song_code2 = all_data[1].song_code2;
 		song_code3 = all_data[1].song_code3;
 		song_code4 = all_data[1].song_code4;
 		song_code5 = all_data[1].song_code5;
 		song_code6 = all_data[1].song_code6;
 		song_code7 = all_data[1].song_code7;
 		song_code8 = all_data[1].song_code8;
 		song_code9 = all_data[1].song_code9;
 		song_code10 = all_data[1].song_code10;
 		album_img2 = all_data[1].playlist_img;
 		obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10, album_img2];
 		
 		pieChartData = {
 	 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 	 			    datasets: [{
 	 			    data: [all_data[1].ly_happy, all_data[1].ly_sad, all_data[1].ly_rest, all_data[1].ly_sexy],
 	 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 	 			    }] 
 	 			};
 	 	pieChartData1 = {
 	 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 	 			  datasets: [{
 	 			  data: [all_data[1].tr_acou, all_data[1].tr_dance, all_data[1].tr_ener, all_data[1].tr_loud],
 	 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 	 			    }] 
 	 			};

	     document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();

   	 	pieChartDraw();
	     pieChartDraw1();

 	 	     }
     
     
     function ajaxrain(data){
 		all_data = data;
		pl_title = data[0].pl_title;
		song_code1 = data[0].song_code1;
		song_code2 = data[0].song_code2;
		song_code3 = data[0].song_code3;
		song_code4 = data[0].song_code4;
		song_code5 = data[0].song_code5;
		song_code6 = data[0].song_code6;
		song_code7 = data[0].song_code7;
		song_code8 = data[0].song_code8;
		song_code9 = data[0].song_code9;
		song_code10 = data[0].song_code10;
		album_img = data[0].playlist_img;
		obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
		

 	 	 $('#play_title1').text(data[0].pl_title);
 	 	 $('#play_title2').text(data[1].pl_title);
 	 	 
 	 	 $('#play_img1').prepend('<img src =resources/images/차분_섹시.jpg/>');
 	 	 $('#play_img2').prepend('<img src =resources/images/리듬_섹시.jpg/>');
 	 	// 그래프 값 넣는곳 

			
 	 	 pieChartData = {
 	 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 	 			    datasets: [{
 	 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 	 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 	 			    }] 
 	 			};
 	 	pieChartData1 = {
 	 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 	 			  datasets: [{
 	 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 	 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 	 			    }] 
 	 			};
 	 pieChartDraw();
	     document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
	     pieChartDraw1();
	     

 	 	     }
  
 
  
  function ajaxcloud(data){
		all_data = data;
		pl_title = data[0].pl_title;
		song_code1 = data[0].song_code1;
		song_code2 = data[0].song_code2;
		song_code3 = data[0].song_code3;
		song_code4 = data[0].song_code4;
		song_code5 = data[0].song_code5;
		song_code6 = data[0].song_code6;
		song_code7 = data[0].song_code7;
		song_code8 = data[0].song_code8;
		song_code9 = data[0].song_code9;
		song_code10 = data[0].song_code10;
		album_img = data[0].playlist_img;
		obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
	 	 $('#play_title1').text(data[0].pl_title);
	 	 $('#play_title2').text(data[1].pl_title);
	 	 
	 	 $('#play_img1').prepend('<img src =resources/images/조용_편안.jpg/>');
	 	 $('#play_img2').prepend('<img src =resources/images/슬픔_슬픔.jpg/>');
	 	// 그래프 값 넣는곳 

			
	 	 pieChartData = {
	 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
	 			    datasets: [{
	 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
	 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
	 			    }] 
	 			};
	 	pieChartData1 = {
	 			  labels: ["어쿠스틱","댄스","활기","화려함"],
	 			  datasets: [{
	 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
	 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
	 			    }] 
	 			};
	 pieChartDraw();
	     document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
	     pieChartDraw1();
	     

	 	     }



function ajaxsnow(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;
	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 $('#play_img1').prepend('<img src =resources/images/차분_행복.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/차분_편안.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    

 	     }



     //===================여기까지가 날씨
     
     
     
     
     
     
     
     

	
	  
// =======================여기서 감정 선택 onclick이용
// 해피

function loadJson_happy(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_happy.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxhappy,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
function ajaxhappy(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;
	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 var show_emotion = "좋은 일 있으신가봐요! 신나게 가자구요!"
	 $('.widget-title.h6.m-b').text(show_emotion);

 	 $('#play_img1').prepend('<img src =resources/images/리듬_행복.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/즐거움_행복.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
  

 	     }

	     
	     // 슬픔
	     
	     function loadJson_sad(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_sad.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxsad,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
function ajaxsad(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;
	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 var show_emotion = "한마디 말보다 노래가 더 위로가 될 때가 있죠"
 		 $('.widget-title.h6.m-b').text(show_emotion);
 	 
 	 $('#play_img1').prepend('<img src =resources/images/차분_슬픔.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/조용_슬픔.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
  

 	     }

	     
	     // 편안

     function loadJson_rest(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_rest.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxrest,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
function ajaxrest(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;
	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 var show_emotion = "마음마저 편안해지는 음악입니다!"
 		 $('.widget-title.h6.m-b').text(show_emotion);
 	 
 	 $('#play_img1').prepend('<img src =resources/images/차분_편안.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/조용_편안.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    

 	     }

	     
	     // 센치
	     function loadJson_cent(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_cent.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxcent,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
function ajaxcent(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;
	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 var show_emotion = "오늘따라 감성에 취하고 싶을 때"
 		 $('.widget-title.h6.m-b').text(show_emotion);
 	 
 	 $('#play_img1').prepend('<img src =resources/images/차분_편안.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/차분_슬픔.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
   

 	     }

	     // 흥분
	     function loadJson_shout(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_shout.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxshout,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
function ajaxshout(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;
	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 var show_emotion = "끈적하게 분위기 한번 잡아볼까요?"
 		 $('.widget-title.h6.m-b').text(show_emotion);
 	 
 	 $('#play_img1').prepend('<img src =resources/images/섹시한분위기_신남.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/섹시한분위기_조용.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    
 	     }
	     
	     //스트레스
	     function loadJson_stress(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_stress.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxstress,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
function ajaxstress(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;

	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 var show_emotion = "실수 좀 해도 괜찮아요! 시원하게 날려버리죠!"
 		 $('.widget-title.h6.m-b').text(show_emotion);
 	 
 	 $('#play_img1').prepend('<img src =resources/images/리듬_행복.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/리듬_섹시.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    

 	     }

	     // 기대
	     function loadJson_gidae(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_gidae.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxgidae,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
function ajaxgidae(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;
	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 var show_emotion = "생각하는대로 이뤄질겁니다!"
 		 $('.widget-title.h6.m-b').text(show_emotion);
 	 
 	 $('#play_img1').prepend('<img src =resources/images/리듬_편안.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/리듬_슬픔.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    

 	     }

	     
	     // 답답
	     function loadJson_dap(){
         $.ajax({
              url : "${cpath}/playlist_ListAjax_dap.do",
              type : "GET",
              //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
              dataType : "json",
              success : ajaxdap,  // 콜백함수다 얘가
              error : function(){ alert("error");  }
            });
     }
function ajaxdap(data){
	all_data = data;
	pl_title = data[0].pl_title;
	song_code1 = data[0].song_code1;
	song_code2 = data[0].song_code2;
	song_code3 = data[0].song_code3;
	song_code4 = data[0].song_code4;
	song_code5 = data[0].song_code5;
	song_code6 = data[0].song_code6;
	song_code7 = data[0].song_code7;
	song_code8 = data[0].song_code8;
	song_code9 = data[0].song_code9;
	song_code10 = data[0].song_code10;
	album_img = data[0].playlist_img;
	obj = [pl_title, song_code1, song_code2, song_code3,song_code4, song_code5, song_code6, song_code7 ,song_code8, song_code9, song_code10,album_img];
 	 $('#play_title1').text(data[0].pl_title);
 	 $('#play_title2').text(data[1].pl_title);
 	 
 	 var show_emotion = "이 노래로 사이다 원샷!"
 		 $('.widget-title.h6.m-b').text(show_emotion);
 	 
 	 $('#play_img1').prepend('<img src =resources/images/리듬_행복.jpg/>');
 	 $('#play_img2').prepend('<img src =resources/images/리듬_섹시.jpg/>');
 	// 그래프 값 넣는곳 

		
 	 pieChartData = {
 			    labels: ['기쁨', '슬픔', '편안', '유혹'],
 			    datasets: [{
 			    data: [all_data[0].ly_happy, all_data[0].ly_sad, all_data[0].ly_rest, all_data[0].ly_sexy],
 			    backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
 			    }] 
 			};
 	pieChartData1 = {
 			  labels: ["어쿠스틱","댄스","활기","화려함"],
 			  datasets: [{
 			  data: [all_data[0].tr_acou, all_data[0].tr_dance, all_data[0].tr_ener, all_data[0].tr_loud],
 			 backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
 			    }] 
 			};
 pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    

 	     }

	     
     
     
     // 파이차트 그리기
let pieChartDraw = function () {

    	 let ctx = document.getElementById('pieChartCanvas').getContext('2d');

 	    if(window.pieChart != undefined){
  	        window.pieChart.destroy();
    	      } 
    window.pieChart = new Chart(ctx, {
        type: 'pie',
        data: pieChartData,
        options: {
            responsive: false,
            legend: {
                display: false
            },
          
        }
    });
};

let pieChartDraw1 = function () {
    let ctx1 = document.getElementById('pieChartCanvas1').getContext('2d');
   ctx1.fillstyle='white';
   if(window.pieChart1 != undefined){
       window.pieChart1.destroy();
     }
    window.pieChart1 = new Chart(ctx1, {
        type: 'horizontalBar',
        data: pieChartData1,
        options: {
            responsive: false,
            legend: {
                display: false,
                fontColor: "white"
              
                },
                scales: {
                    yAxes: [{
                        ticks: {
                            fontColor: "white",
                            fontSize: 16,
                        }
                    }],
                    xAxes: [{
                        ticks: {
                            fontColor: "white",
                            fontSize: 16,
                        }
                    }]
                }
            }
    });
};


// 이제 인서트 인서트!!!!!
// "location.href='trackDetail.do'"


function send_data(){
	localStorage.setItem('data',JSON.stringify(obj));
    location.href='trackDetail.do';
    
};

// btn1을 눌렀을 때 sound1.mp3 재생
document.querySelector("#btn1").addEventListener("click", function () {
  var audio1 = new Audio("resources/musics/Put Me Thru.mp3");
  audio1.loop = false; // 반복재생하지 않음
  audio1.volume = 1.0; // 음량 설정
  audio1.play(); // sound1.mp3 재생
});

</script>






   </script>

  <!-- endbuild -->

</head>
<body >

  <div class="app dk" id="app">

<!-- ############ LAYOUT START-->

  <!-- aside -->
  <div id="aside" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="left navside dark dk" data-layout="column">
      <div class="navbar no-radius">
        <!-- brand -->
        <a href="player.do" class="navbar-brand md">
           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
              <circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
              <circle  cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
              <circle cx="24" cy="24" r="10" fill="#ffffff"/>
              <circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
              <path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
              <circle cx="24" cy="24" r="3" fill="#000000"/>
           </svg>
        
           <img src="resources/images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
        <!-- / brand -->
   </div>    
   <div data-flex class="hide-scroll">
      <nav class="scroll nav-stacked nav-active-primary">
        
        <ul class="nav" data-ui-nav>
           <li class="nav-header hidden-folded">
            <span class="text-xs text-muted">Main</span>
           </li>
           <li>
            <a href="player.do">
              <span class="nav-icon">
               <i class="material-icons">
                 play_circle_outline
               </i>
              </span>
              <span class="nav-text">음악추천</span>
            </a>
           </li>
           <li>
            <a href="browse.html">
              <span class="nav-icon">
               <i class="material-icons">
                 sort
               </i>
              </span>
              <span class="nav-text">장르 별</span>
            </a>
           </li>
           <li>
            <a href="chart.html">
              <span class="nav-icon">
               <i class="material-icons">
                 trending_up
               </i>
              </span>
              <span class="nav-text">Top 10</span>
            </a>
           </li>
         
           <li>
            <a data-toggle="modal" data-target="#search-modal">
              <span class="nav-icon">
               <i class="material-icons">
                 search
               </i>
              </span>
              <span class="nav-text">검색</span>
            </a>
           </li>
           
         
           <li class="nav-header hidden-folded m-t">
            <span class="text-xs text-muted">Your collection</span>
           </li>
           <li>
            <a href="profile.html#tracks">
              <span class="nav-label">
               <b class="label">8</b>
              </span>
              <span class="nav-icon">
               <i class="material-icons">
                 list
               </i>
              </span>
              <span class="nav-text">나의 앨범</span>
            </a>
           </li>
           <li>
            <a href="profile.html#playlists">
              <span class="nav-icon">
               <i class="material-icons">
                 queue_music
               </i>
              </span>
              <span class="nav-text">재생목록</span>
            </a>
           </li>
           <li>
            <a href="profile.html#gasa">
              <span class="nav-icon">
               <i class="material-icons">
                  book
               </i>
            </span>
              <span class="nav-text">가사 모음집</span>
            </a>
         </li>
         <li>
            <a href="profile.html#profile">
              <span class="nav-icon">
               <i class="material-icons">
                  account_circle
               </i>
              </span>
              <span class="nav-text">내 정보</span>
            </a>
         </li>
           <!--공백-->
            <li>
              <span class="area1"></span>
           </li>
           <!--공백끝-->
           <li>
            <a href="signin.html">
              <span class="nav-icon">
               <i class="fa fa-play">
                 
               </i>
              </span>
              <span class="nav-text">로그인</span>
            </a>
           </li>
           <li>
            <a href="signup.html">
              <span class="nav-icon">
               <i class="material-icons">
                 person_add
               </i>
              </span>
              <span class="nav-text">회원가입</span>
            </a>
           </li>
           <li>
            <a href="#">
              <span class="nav-icon">
               <i class="material-icons">
                 stop
               </i>
              </span>
              <span class="nav-text">로그아웃</span>
            </a>
           </li>

         </ul>
        </nav>
     </div>
      <div data-flex-no-shrink>
        <div class="nav-fold dropup">
         <a data-toggle="dropdown">
            <span class="pull-left">
              <img src="resources/images/a3.jpg" alt="..." class="w-32 img-circle">
            </span>
            <span class="clear hidden-folded p-x p-y-xs">
              <span class="block _500 text-ellipsis">Rachel Platten</span>
            </span>
         </a>
         <div class="dropdown-menu w dropdown-menu-scale ">
           <a class="dropdown-item" href="profile.html#profile">
            <span>나의 정보</span>
           </a>
           <a class="dropdown-item" href="profile.html#tracks">
            <span>나의 앨범</span>
           </a>
           <a class="dropdown-item" href="profile.html#playlists">
            <span>나의 플레이리스트</span>
           </a>
           <a class="dropdown-item" href="profile.html#likes">
            <span>좋아요</span>
           </a>
           <div class="dropdown-divider"></div>
           <a class="dropdown-item" href="docs.html">
            도와드릴까요?
           </a>
           <a class="dropdown-item" href="signin.html">로그아웃</a>
         </div>
        </div>
        
      </div>
     </div>
   </div>
  <!-- / -->
 
  <!-- content -->
  <div id="content" class="app-content dark bg box-shadow-z2" role="main">
    <div class="app-header hidden-lg-up dark lt box-shadow-z1">
        <div class="navbar">
        <!-- brand -->
        <a href="player.do" class="navbar-brand md">
           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
              <circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
              <circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
              <circle cx="24" cy="24" r="10" fill="#ffffff"/>
              <circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
              <path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
              <circle cx="24" cy="24" r="3" fill="#000000"/>
           </svg>
        
           <img src="resources/images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      
        <!-- / brand -->
        <!-- nabar right 상단 nav bar-->
      <ul class="nav navbar-nav pull-right">
         
         <a data-toggle="modal" data-target="#imoji-modal" >
           <span class="nav-icon1">
            <i class="material-icons">
            mood
            </i>
           </span>
         
           </a>
           <a data-toggle="modal" data-target="#search-modal" >
            <span class="nav-icon1">
              <i class="material-icons">
              search
              </i>
            </span>
           
            </a>

            <li class="nav-item">
              <!-- Open side - Naviation on mobile -->
                 <a data-toggle="modal" data-target="#aside" class="nav-link">
               <i class="material-icons">menu</i>
              </a>
              <!-- / -->
            </li>
           </ul>
           <!-- / navbar right 하단버튼 -->
         </div>
        </div>
    <div class="app-footer app-player grey bg">
      <div class="playlist" style="width:100%"></div>
     
    
   
</div>
    
   
    <div class="app-body" id="view">

<!-- ############ PAGE START-->




<!-- 연습 -->


<div class="page-content">

   <!--메인 내용 출력-->
   <div class="row-col">

   <div class="row-col">
      <div class="col-lg-9 b-r no-border-md">
      <div class="col-lg-9 b-r no-border-md">
         <div class="padding">
            
            <h5 class="widget-title h6 m-b" style="margin-top:10px;">오늘의 추천리스트<span id="nowweather"></span></h5>
            <div class="owl-carousel owl-theme owl-dots-center" data-ui-jp="owlCarousel" data-ui-options="{
               margin: 20,
               responsiveClass:true,
                responsive:{
                   0:{
                      items: 2
                   },
                    543:{
                        items: 3
                    }
                }
            }">      
            

                   <div class="">
                      <div class="item r" data-id="item-5" data-src="http://streaming.radionomy.com/JamendoLounge">
                        <div class="item-media item-media-4by3">
                           <a id="play_img1" onclick="onclick_firstgraph(all_data)" class="item-media-content"></a>
                           
                        </div>
                        <div class="item-info">
                           
                           <div class="item-title text-ellipsis">
                              <a id="play_title1"></a>
                           </div>
                           
               
               
                        </div>
                     </div>
                  </div>
                   <div class="">
                      <div class="item r" data-id="item-7" data-src="http://api.soundcloud.com/tracks/245566366/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                        <div class="item-media item-media-4by3">
                           <a id = "play_img2" onclick="onclick_secondgraph(all_data)" class="item-media-content"></a>
                           
                        </div>
                        <div class="item-info">
                           
                           <div class="item-title text-ellipsis">
                              <a id="play_title2"></a>
                           </div>
                           
               
               
                        </div>
                     </div>
                  </div>
                 
                  
            </div>
            <div class="b-b m-y1"></div>
            <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 50%; text-align: center; float: left;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas" width="150px" height="150px" style=""></canvas>
                     <!-- 사진이 내려오는 문제점이 여기다 problem 클릭할때마다 width, height가 증가한다.-->
                  </div>
                  <h6 class="gg" style="text-align: center; margin-top: 12px; width: 150px;">감정 분석 결과</h6>
               </div>
               <div style="width: 50%; float:right;">
                  <div id='legend-div' class="legend-div">
					<ul>
					<li><span style="background-color: 'rgb(255, 184, 105)'">기쁨</span></li>
					<li><span style="background-color: 'rgb(118, 117, 167)'">슬픔</span></li>
					<li><span style="background-color: 'rgb(185, 111, 144)'">편안</span></li>
					<li><span style="background-color:  'rgb(218, 78, 78)'">유혹</span></li>
					</ul>
                  </div>
               </div>
            </div>   
      
      
      
      
   
            <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas1" width="281px" height="160px"></canvas>
                     
                  </div>
                  <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h6>
               </div>
               
            </div>
            
         </div>
         <div class="gg"style="text-align: center; width: 100%; height: 50px;" >
            <button id = "send_data" onclick="send_data()" type="button" class="btn btn-fw primary" style="text-align: center; margin-top: 15px;">리스트 보기</button>
            </div>
      </div>
   
   </div>
        </div>
      </div>
   </div>
</div>
<!--메인 내용 끝-->
<!-- ############ PAGE END-->

    </div>
  </div>
  <!-- / -->

  
  <!-- ############ SWITHCHER START-->
    
  <!-- ############ SWITHCHER END-->
  <!-- ############ SEARCH START 검색창 시작-->
    <div class="modal dark lt fade" id="search-modal" data-backdrop="false">
      <a data-dismiss="modal" class="text-muted text-lg p-x modal-close-btn">&times;</a>
      <div class="row-col">
        <div class="p-a-lg h-v row-cell v-m">
          <div class="row">
            <div class="col-md-8 offset-md-2">
              <form action="search.html" class="m-b-md">
                <div class="input-group input-group-lg">
                  <input type="text" class="form-control" placeholder="Keyword" data-ui-toggle-class="hide" data-ui-target="#search-result">
                  <span class="input-group-btn">
                    <button class="btn b-a no-shadow white" type="submit">검색</button>
                  </span>
                </div>
              </form>
              <div id="search-result" class="animated fadeIn">
                <p class="m-b-md"><strong>23</strong> <span class="text-muted">Results found for: </span><strong>Keyword</strong></p>
                <div class="row">
                  <div class="col-sm-6">
                    <div class="row item-list item-list-sm item-list-by m-b">
                          <div class="col-xs-12">
                             <div class="item r" data-id="item-3" data-src="http://api.soundcloud.com/tracks/79031167/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                               <div class="item-media ">
                                  <a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b2.jpg');"></a>
                               </div>
                               <div class="item-info">
                                  <div class="item-title text-ellipsis">
                                     <a href="trackDetail.do">I Wanna Be In the Cavalry</a>
                                  </div>
                                  <div class="item-author text-sm text-ellipsis ">
                                     <a href="artist.detail.html" class="text-muted">Jeremy Scott</a>
                                  </div>
                                  <div class="item-meta text-sm text-muted">
                                    </div>
                      
                      
                               </div>
                            </div>
                         </div>
                         
                    </div>
                  </div>
                </div>
              </div>
         </div>
              <div id="top-search" class="btn-groups">
                <strong class="text-muted">Top searches: </strong>
                <a href="#" class="btn btn-xs white">Happy</a> 
                <a href="#" class="btn btn-xs white">Music</a> 
                <a href="#" class="btn btn-xs white">Weekend</a> 
                <a href="#" class="btn btn-xs white">Summer</a> 
                <a href="#" class="btn btn-xs white">Holiday</a> 
                <a href="#" class="btn btn-xs white">Blue</a> 
                <a href="#" class="btn btn-xs white">Soul</a> 
                <a href="#" class="btn btn-xs white">Calm</a> 
                <a href="#" class="btn btn-xs white">Nice</a> 
                <a href="#" class="btn btn-xs white">Home</a> 
                <a href="#" class="btn btn-xs white">SLeep</a> 
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- ############ SEARCH END -->
<!-- 검색창 끝-->




   <!-- ############ imoji Start 이모지 클릭창 시작 -->
<div class="modal dark lt fade" id="imoji-modal" data-backdrop="false">
   
   <div class="row-col">
     <div class="p-a-lg h-v row-cell v-m">
      <a data-dismiss="modal" class="text-muted text-lg p-x modal-close-btn">&times;</a>
         <div style="position: static; width: 100%; height: 50%; text-align: center;"><h3>지금 기분 어떠신가요?</h3>
            <div style="width: 100%; height: 20px;"></div>
            <button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" id="happy" src="resources/images/imoji1.png"   alt="Nothing" width="80px" height="80px" onclick= "loadJson_happy()"><br>기뻐요</button>
            <button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" id="sad" src="resources/images/imoji2.png"   alt="Nothing" width="80px" height="80px"onclick= "loadJson_sad()"><br>슬퍼요</button>
            <div style="width: 100%; height: 20px;"></div> 
            <button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" id="relex" src="resources/images/imoji3.png"   alt="Nothing" width="80px" height="80px"onclick= "loadJson_rest()"><br>편안해요</button>
            <button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" id="senchi" src="resources/images/imoji4.png"   alt="Nothing" width="80px" height="80px"onclick= "loadJson_cent()"><br>센치해요</button>
            <div style="width: 100%; height: 20px;"></div> 
            <button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" id="upup" src="resources/images/imoji5.png"   alt="Nothing" width="80px" height="80px"onclick= "loadJson_shout()"><br>흥분돼요</button>
            <button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" id="stress" src="resources/images/imoji6.png"   alt="Nothing" width="80px" height="80px"onclick= "loadJson_stress()"><br>스트레스</button>
            <div style="width: 100%; height: 20px;"></div> 
            <button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" id="dugudugu" src="resources/images/imoji7.png"   alt="Nothing" width="80px" height="80px"onclick= "loadJson_gidae()"><br>기대돼요</button>
            <button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" id="dabdab" src="resources/images/imoji8.png"   alt="Nothing" width="80px" height="80px"onclick= "loadJson_dap()"><br>답답해요</button>
         
         </div>
         <div style="width: 100%; height: 30%; position: static;">

         </div>
         <div style="width: 100%; height: 20%;">

         </div>

         
         </div>
        </div>
      </div>
   

   
   
  <!-- ############ imoji 이모지 끝 END -->

  <!-- ############ SHARE START -->
  
  <!-- ############ SHARE END -->

<!-- ############ LAYOUT END-->
  </div>

<!-- build:js scripts/app.min.js -->
<!-- jQuery -->
  <script src="resources/libs/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
  <script src="resources/libs/tether/dist/js/tether.min.js"></script>
  <script src="resources/libs/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
  <script src="resources/libs/jQuery-Storage-API/jquery.storageapi.min.js"></script>
  <script src="resources/libs/jquery.stellar/jquery.stellar.min.js"></script>
  <script src="resources/libs/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="resources/libs/jscroll/jquery.jscroll.min.js"></script>
  <script src="resources/libs/PACE/pace.min.js"></script>
  <script src="resources/libs/jquery-pjax/jquery.pjax.js"></script>

  <script src="resources/libs/mediaelement/build/mediaelement-and-player.min.js"></script>
  <script src="resources/libs/mediaelement/build/mep.js"></script>
  <script src="resources/scripts/player.js"></script>

  <script src="resources/scripts/config.lazyload.js"></script>
  <script src="resources/scripts/ui-load.js"></script>
  <script src="resources/scripts/ui-jp.js"></script>
  <script src="resources/scripts/ui-include.js"></script>
  <script src="resources/scripts/ui-device.js"></script>
  <script src="resources/scripts/ui-form.js"></script>
  <script src="resources/scripts/ui-nav.js"></script>
 <script src="resources/scripts/ui-screenfull.js"></script>
  <script src="resources/scripts/ui-scroll-to.js"></script>
  <script src="resources/scripts/ui-toggle-class.js"></script>
  <script src="resources/scripts/ui-taburl.js"></script>
  <script src="resources/scripts/app.js"></script>
  <script src="resources/scripts/site.js"></script>
  <script src="resources/scripts/ajax.js"></script>
  <script src="resources/scripts/btn-slide.js"></script>
  


 
</body>
</html>