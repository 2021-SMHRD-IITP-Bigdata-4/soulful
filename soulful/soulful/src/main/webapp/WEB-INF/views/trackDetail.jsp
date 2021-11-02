<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.smhrd.mapper.SonginfosVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/styles/style1.css" />
  

  <!-- build:css resources/css/styles/app.min.css -->
  <link rel="stylesheet" href="resources/css/styles/app.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/styles/style.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/styles/font.css" type="text/css" />
  
  <link rel="stylesheet" href="resources/libs/owl.carousel/dist/assets/owl.carousel.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/owl.carousel/dist/assets/owl.theme.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/mediaelement/build/mediaelementplayer.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/mediaelement/build/mep.css" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type = "text/javascript">
  
  
  //getItem(접근할 키값): 저장된 데이터를 반환

     var song_data = localStorage.getItem('data');
     var arr = JSON.parse(song_data);


   // 위엔 고정  
     
   
   window.onload = function () {
 	    $('#pl_title').text(arr[0]);
      loadJson();
}


   let pieChartData2 = {
			    labels: ['기쁨', '슬픔', '편안', '흥분'],
			    datasets: [{
			        data: [1, 2, 3, 4],
			        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
			    }] 
			};
   let pieChartData3 = {
			    labels: ['이', '버', '서', '어'],
			    datasets: [{
			        data: [70, 80, 85, 30],
			        backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
			    }] 
			};
     
/////     
     
     
     
     
      function loadJson(){
		 		// 서버에 요청해서 -> list.do Json 데이터를 요청해서 응답받기
		 		// ajax로 비동기통신을 해보자!
		 		 $.ajax({
		 	       url : "${cpath}/songinfos_ListAjax.do",
		 	       type : "GET",
		 	       //data : {키:밸류   }   .을 찍어서 json 데이터를 핸들링한다.
		 	       dataType : "json",
		 	       success : ajaxhtml,  // 콜백함수다 얘가
		 	       error : function(){ alert("error");  }
		 	     });
		 	}
		 	
		 var title1;
			var title2;
			var title3;
			var title4;
			var title5;
			var title6;
			var title7;
			var title8;
			var title9;
			var title10;
			
			var all_data;
			
			 var code1;
				var code2;
				var code3;
				var code4;
				var code5;
				var code6;
				var code7;
				var code8;
				var code9;
				var code10;
				
				 var artist1;
					var artist2;
					var artist3;
					var artist4;
					var artist5;
					var artist6;
					var artist7;
					var artist8;
					var artist9;
					var artist10;	
  	function ajaxhtml(data){
		all_data = data;

		for(var z = 1; z <= 10; z++){
			for(var i = 0; i < data.length; i++){
				if (arr[z] == data[i].song_code){
					eval("title"+z+"= data["+i+"].song_title")
					eval("code"+z+"= data["+i+"].song_code")
					eval("artist"+z+"= data["+i+"].artist")
			}
		}
		}
		$('#album_img').prepend('<img style="width:100%; height:100%; object-fit:cover;" src =resources/images/'+arr[11]+'.jpg/>');
	 	 $('#song_name1').text(title1);
	 	 $('#song_name2').text(title2);
	 	 $('#song_name3').text(title3);
	 	 $('#song_name4').text(title4);
	 	 $('#song_name5').text(title5);
	 	 $('#song_name6').text(title6);
	 	 $('#song_name7').text(title7);
	 	 $('#song_name8').text(title8);
	 	 $('#song_name9').text(title9);
	 	 $('#song_name10').text(title10);
	 	 
	 	 $('#song_name_1').text(title1);
	 	 $('#song_name_2').text(title2);
	 	 $('#song_name_3').text(title3);
	 	 $('#song_name_4').text(title4);
	 	 $('#song_name_5').text(title5);
	 	 $('#song_name_6').text(title6);
	 	 $('#song_name_7').text(title7);
	 	 $('#song_name_8').text(title8);
	 	 $('#song_name_9').text(title9);
	 	 $('#song_name_10').text(title10);
	 	 
	 	 $('#song_artist_1').text(artist1);
	 	 $('#song_artist_2').text(artist2);
	 	 $('#song_artist_3').text(artist3);
	 	 $('#song_artist_4').text(artist4);
	 	 $('#song_artist_5').text(artist5);
	 	 $('#song_artist_6').text(artist6);
	 	 $('#song_artist_7').text(artist7);
	 	 $('#song_artist_8').text(artist8);
	 	 $('#song_artist_9').text(artist9);
	 	 $('#song_artist_10').text(artist10);
	 	 
	 	gr_input1(data);
	 	gr_input2(data);
	 	gr_input3(data);
	 	gr_input4(data);
	 	gr_input5(data);
	 	gr_input6(data);
	 	gr_input7(data);
	 	gr_input8(data);
	 	gr_input9(data);
	 	gr_input10(data);
	 	
 	 
	}

		
		let pieChartDraw2_1 = function () {
		    let ctx2 = document.getElementById('pieChartCanvas2_1').getContext('2d');
		    
		    window.pieChart = new Chart(ctx2, {
		        type: 'pie',
		        data: pieChartData2_1,
		        options: {
		            responsive: false,
		            legend: {
		                display: false
		            }
		        }
		    });
		};
		 let pieChartDraw3_1 = function () {
		     let ctx3 = document.getElementById('pieChartCanvas3_1').getContext('2d');
		   
		     window.pieChart = new Chart(ctx3, {
		         type: 'horizontalBar',
		         data: pieChartData3_1,
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
		 
		 

			
			let pieChartDraw2_2 = function () {
			    let ctx2 = document.getElementById('pieChartCanvas2_2').getContext('2d');
			    
			    window.pieChart = new Chart(ctx2, {
			        type: 'pie',
			        data: pieChartData2_2,
			        options: {
			            responsive: false,
			            legend: {
			                display: false
			            }
			        }
			    });
			};
			 let pieChartDraw3_2 = function () {
			     let ctx3 = document.getElementById('pieChartCanvas3_2').getContext('2d');
			   
			     window.pieChart = new Chart(ctx3, {
			         type: 'horizontalBar',
			         data: pieChartData3_2,
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
			 

				
				let pieChartDraw2_3 = function () {
				    let ctx2 = document.getElementById('pieChartCanvas2_3').getContext('2d');
				    
				    window.pieChart = new Chart(ctx2, {
				        type: 'pie',
				        data: pieChartData2_3,
				        options: {
				            responsive: false,
				            legend: {
				                display: false
				            }
				        }
				    });
				};
				 let pieChartDraw3_3 = function () {
				     let ctx3 = document.getElementById('pieChartCanvas3_3').getContext('2d');
				   
				     window.pieChart = new Chart(ctx3, {
				         type: 'horizontalBar',
				         data: pieChartData3_3,
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
				 

					
					let pieChartDraw2_4 = function () {
					    let ctx2 = document.getElementById('pieChartCanvas2_4').getContext('2d');
					    
					    window.pieChart = new Chart(ctx2, {
					        type: 'pie',
					        data: pieChartData2_4,
					        options: {
					            responsive: false,
					            legend: {
					                display: false
					            }
					        }
					    });
					};
					 let pieChartDraw3_4 = function () {
					     let ctx3 = document.getElementById('pieChartCanvas3_4').getContext('2d');
					   
					     window.pieChart = new Chart(ctx3, {
					         type: 'horizontalBar',
					         data: pieChartData3_4,
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
					 

						
						let pieChartDraw2_5 = function () {
						    let ctx2 = document.getElementById('pieChartCanvas2_5').getContext('2d');
						    
						    window.pieChart = new Chart(ctx2, {
						        type: 'pie',
						        data: pieChartData2_5,
						        options: {
						            responsive: false,
						            legend: {
						                display: false
						            }
						        }
						    });
						};
						 let pieChartDraw3_5 = function () {
						     let ctx3 = document.getElementById('pieChartCanvas3_5').getContext('2d');
						   
						     window.pieChart = new Chart(ctx3, {
						         type: 'horizontalBar',
						         data: pieChartData3_5,
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
						 

							
							let pieChartDraw2_6 = function () {
							    let ctx2 = document.getElementById('pieChartCanvas2_6').getContext('2d');
							    
							    window.pieChart = new Chart(ctx2, {
							        type: 'pie',
							        data: pieChartData2_6,
							        options: {
							            responsive: false,
							            legend: {
							                display: false
							            }
							        }
							    });
							};
							 let pieChartDraw3_6 = function () {
							     let ctx3 = document.getElementById('pieChartCanvas3_6').getContext('2d');
							   
							     window.pieChart = new Chart(ctx3, {
							         type: 'horizontalBar',
							         data: pieChartData3_6,
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
							 

								
								let pieChartDraw2_7 = function () {
								    let ctx2 = document.getElementById('pieChartCanvas2_7').getContext('2d');
								    
								    window.pieChart = new Chart(ctx2, {
								        type: 'pie',
								        data: pieChartData2_7,
								        options: {
								            responsive: false,
								            legend: {
								                display: false
								            }
								        }
								    });
								};
								 let pieChartDraw3_7 = function () {
								     let ctx3 = document.getElementById('pieChartCanvas3_7').getContext('2d');
								   
								     window.pieChart = new Chart(ctx3, {
								         type: 'horizontalBar',
								         data: pieChartData3_7,
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
								 

									
									let pieChartDraw2_8 = function () {
									    let ctx2 = document.getElementById('pieChartCanvas2_8').getContext('2d');
									    
									    window.pieChart = new Chart(ctx2, {
									        type: 'pie',
									        data: pieChartData2_8,
									        options: {
									            responsive: false,
									            legend: {
									                display: false
									            }
									        }
									    });
									};
									 let pieChartDraw3_8 = function () {
									     let ctx3 = document.getElementById('pieChartCanvas3_8').getContext('2d');
									   
									     window.pieChart = new Chart(ctx3, {
									         type: 'horizontalBar',
									         data: pieChartData3_8,
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
									 

										
										let pieChartDraw2_9 = function () {
										    let ctx2 = document.getElementById('pieChartCanvas2_9').getContext('2d');
										    
										    window.pieChart = new Chart(ctx2, {
										        type: 'pie',
										        data: pieChartData2_9,
										        options: {
										            responsive: false,
										            legend: {
										                display: false
										            }
										        }
										    });
										};
										 let pieChartDraw3_9 = function () {
										     let ctx3 = document.getElementById('pieChartCanvas3_9').getContext('2d');
										   
										     window.pieChart = new Chart(ctx3, {
										         type: 'horizontalBar',
										         data: pieChartData3_9,
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
										 

											
											let pieChartDraw2_10 = function () {
											    let ctx2 = document.getElementById('pieChartCanvas2_10').getContext('2d');
											    
											    window.pieChart = new Chart(ctx2, {
											        type: 'pie',
											        data: pieChartData2_10,
											        options: {
											            responsive: false,
											            legend: {
											                display: false
											            }
											        }
											    });
											};
											 let pieChartDraw3_10 = function () {
											     let ctx3 = document.getElementById('pieChartCanvas3_10').getContext('2d');
											   
											     window.pieChart = new Chart(ctx3, {
											         type: 'horizontalBar',
											         data: pieChartData3_10,
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
											 

			
		

			


	
	function gr_input1(data){
 	for (var i= 0; i < data.length; i++){
		if (data[i].song_code == code1){
			 pieChartData2_1 = {
					    labels: ['기쁨', '슬픔', '편안', '흥분'],
					    datasets: [{
					        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
					        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
					    }] 
					};
			 pieChartData3_1 = {
				     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
				         datasets: [{
				         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
				         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
				     }] 
				 };

		
		};
	}
 	   pieChartDraw2_1();
	   document.getElementById('legend-div2').innerHTML = window.pieChart.generateLegend();
	   pieChartDraw3_1();
	   
	
	}
	
	function gr_input2(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code2){
				
				 pieChartData2_2 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_2 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  

			};
		}
	 	   pieChartDraw2_2();
		   document.getElementById('legend-div3').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_2();
		
		}
	
	function gr_input3(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code3){
				
				 pieChartData2_3 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_3 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  
			
			};
		}
	 	   pieChartDraw2_3();
		   document.getElementById('legend-div4').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_3();
		  
		
		}
	
	function gr_input4(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code4){
				
				 pieChartData2_4 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_4 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  
			
			};
		}
	 	   pieChartDraw2_4();
		   document.getElementById('legend-div5').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_4();
		 
		
		}
	
	function gr_input5(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code5){
				
				 pieChartData2_5 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_5 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  
			
			};
		}
	 	   pieChartDraw2_5();
		   document.getElementById('legend-div6').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_5();
		 
		
		}
	
	function gr_input6(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code6){
				
				 pieChartData2_6 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_6 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  
			
			};
		}
	 	   pieChartDraw2_6();
		   document.getElementById('legend-div7').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_6();
		  
		
		}
	
	function gr_input7(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code7){
				
				 pieChartData2_7 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_7 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  
			
			};
		}
	 	   pieChartDraw2_7();
		   document.getElementById('legend-div8').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_7();
		   
		
		}
	
	function gr_input8(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code8){
				
				 pieChartData2_8 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_8 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  
			
			};
		}
	 	   pieChartDraw2_8();
		   document.getElementById('legend-div9').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_8();
		   
		
		}
	
	function gr_input9(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code9){
				
				 pieChartData2_9 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_9 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  
			
			};
		}
	 	   pieChartDraw2_9();
		   document.getElementById('legend-div10').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_9();		   
		
		}
	
	function gr_input10(data){
	 	for (var i= 0; i < data.length; i++){
			if (data[i].song_code == code10){
				
				 pieChartData2_10 = {
						    labels: ['기쁨', '슬픔', '편안', '흥분'],
						    datasets: [{
						        data: [data[i].lyric_happy, data[i].lyric_sad, data[i].lyric_rest, data[i].lyric_sexy],
						        backgroundColor: ['rgb(255, 184, 105)', 'rgb(118, 117, 167)', 'rgb(185, 111, 144)', 'rgb(218, 78, 78)']
						    }] 
						};
				 pieChartData3_10 = {
					     labels: ['어쿠스틱', '댄스', '활기', '화려함'],
					         datasets: [{
						         data: [data[i].track_acousticness,data[i].track_danceability,data[i].track_energy,data[i].track_loudness,],
					         backgroundColor: ['rgb(186, 136, 224)', 'rgb(218, 129, 114)', 'rgb(167, 185, 158)', 'rgb(203, 169, 169)']
					     }] 
					 };

				  
			
			};
		}
	 	   pieChartDraw2_10();
		   document.getElementById('legend-div11').innerHTML = window.pieChart.generateLegend();
		   pieChartDraw3_10();
		   
		
		}
	
	
	// btn1을 눌렀을 때 sound1.mp3 재생
	document.querySelector("#btn1").addEventListener("click", function () {
	  var audio1 = new Audio("resources/musics/Dance With Me.mp3");
	  audio1.loop = false; // 반복재생하지 않음
	  audio1.volume = 1.0; // 음량 설정
	  audio1.play(); // sound1.mp3 재생
	});


	////////////////
	
	
	
	
	
	</script>
  

  <!-- endbuild -->
</head>
<body>
  
  <div class="app dk" id="app">

<!-- ############ LAYOUT START-->
<div id="play1" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_1" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div2' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_1" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_1"class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_1"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>

<div id="play2" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_2" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div3' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_2" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_2"class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_2"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>
  
  <div id="play3" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_3" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div4' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_3" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_3"class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_3"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>
  
  <div id="play4" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_4" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div5' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_4" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_4"class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_4"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>
  
  <div id="play5" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_5" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div6' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_5" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_5" class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_5"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>
  
  <div id="play6" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_6" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div7' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_6" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_6" class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_6"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>
  
  <div id="play7" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_7" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div8' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_7" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_7"class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_7"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>
  
  <div id="play8" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_8" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div9' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_8" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_8"class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_8"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>
  
  <div id="play9" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_9" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div10' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_9" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_9"class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_9"class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>
  
  <div id="play10" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
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
        
           <img src="images/logo.png" alt="." class="hide">
           <span class="hidden-folded inline">SoulFul</span>
        </a>
      <a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
   </div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2_10" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%; padding-left:17px;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px; padding-left: 20px;">
            <div id='legend-div11' class="legend-div">

            </div>
          </div>
        </div>
      <div class="padding" style="width:100%; height: 200px;">
               <div style="width: 100%; text-align: center;">
                  <div class="chart-div">
                     <canvas id="pieChartCanvas3_10" width="260px" height="160px"></canvas>
                     
                  </div>
                  <h5 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h5>
               </div>
               
            </div>
   
   
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span id = "song_name_10"class="currrent_music_info__title">Lullaby</span>
        <span id = "song_artist_10" class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>

        </div>
  </div>

<!--  -->

 <!-- aside -->
 <div id="aside" class="app-aside modal fade nav-dropdown">
  <!-- fluid app aside -->
  <div class="left navside dark dk" data-layout="column">
    <div class="navbar no-radius">
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
      <a href="profile.html#playlists">
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
<div class="pos-rlt">
  
</div>
<div class="page-content">
  <div class="padding b-b">
  <div class="padding">
    <div class="row-col">
        <div class="col-sm w w-auto-xs m-b">
          <div class="item w r">
            <div class="item-media">
              <div class="item-media-content" ></div>
                <a id="album_img" class="item-media-content" ></a>
            
            </div>
          </div>
        </div>
        <div class="col-sm">
          <div class="p-l-md no-padding-xs">
            <div class="page-title" style="text-align: center;">
              <h1 id ="pl_title" class="inline h5"></h1>
            </div>
                  
          </div>
        </div>
    </div>
  </div>

  <div class="row-col">
    <div class="col-lg-9 b-r no-border-md">
      <div class="padding">

          
          <div id="tracks" class="row item-list item-list-xs item-list-li m-b">
                <div class="col-xs-12" data-toggle="modal" data-target="#play1" class="nav-link">
                   <div class="item r" data-id="item-1" data-src="resources/musics/Put Me Thru.mp3">
                    <div class="item-media "> 
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b6.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = song_name1></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Fifth Harmony</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play2" class="nav-link">
                   <div class="item r" data-id="item-2" data-src="resources/musics/1 On 1.wav">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b8.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = song_name2></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Pablo Nouvelle</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play3" class="nav-link">
                   <div class="item r" data-id="item-3" data-src="http://api.soundcloud.com/tracks/236107824/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b5.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = "song_name3"></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Rita Ora</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
            
            
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play4" class="nav-link">
                   <div class="item r" data-id="item-4" data-src="http://api.soundcloud.com/tracks/79031167/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b2.jpg');"></a>
                        <div class="item-overlay center">
                           <button id = "btn1" class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = "song_name4"></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Jeremy Scott</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
            
            
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play5" class="nav-link">
                   <div class="item r" data-id="item-5" data-src="http://api.soundcloud.com/tracks/269944843/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b0.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = "song_name5"></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Summerella</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
            
            
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play6" class="nav-link">
                   <div class="item r" data-id="item-6" data-src="http://streaming.radionomy.com/JamendoLounge">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b4.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = "song_name6"></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Radionomy</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
            
            
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play7" class="nav-link">
                   <div class="item r" data-id="item-7" data-src="http://api.soundcloud.com/tracks/259445397/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b1.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = song_name7></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Kygo</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
            
            
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play8" class="nav-link">
                   <div class="item r" data-id="item-8" data-src="http://api.soundcloud.com/tracks/236288744/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b7.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = "song_name8"></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">RYD</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
            
            
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play9" class="nav-link">
                   <div class="item r" data-id="item-9" data-src="http://api.soundcloud.com/tracks/237514750/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b9.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = "song_name9"></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Postiljonen</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
            
            
                     </div>
                  </div>
               </div>
                <div class="col-xs-12" data-toggle="modal" data-target="#play10" class="nav-link">
                   <div class="item r" data-id="item-10" data-src="http://api.soundcloud.com/tracks/174495152/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                     <div class="item-media ">
                        <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b11.jpg');"></a>
                        <div class="item-overlay center">
                           <button  class="btn-playpause">Play</button>
                        </div>
                     </div>
                     <div class="item-info">
                        <div class="item-overlay bottom text-right">
                           <a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
                           <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                           <div class="dropdown-menu pull-right black lt"></div>
                        </div>
                        <div class="item-title text-ellipsis">
                           <a id = "song_name10"></a>
                        </div>
                        <div class="item-author text-sm text-ellipsis hide">
                           <a href="artist.detail.html" class="text-muted">Postiljonen</a>
                        </div>
                        <div class="item-meta text-sm text-muted">
                            <span class="item-meta-right"></span>
                          </div>
            
            
                     </div>
                  </div>
               </div>
          </div>
       </div>

<!-- ############ PAGE END-->

    </div>
  </div>
  <!-- / -->

  
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
                            <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b2.jpg');"></a>
                          </div>
                          <div class="item-info">
                            <div class="item-title text-ellipsis">
                              <a href="track.detail.html">I Wanna Be In the Cavalry</a>
                            </div>
                            <div class="item-author text-sm text-ellipsis ">
                              <a href="artist.detail.html" class="text-muted">Jeremy Scott</a>
                            </div>
                            <div class="item-meta text-sm text-muted">
                                </div>
                    
                    
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item r" data-id="item-6" data-src="http://api.soundcloud.com/tracks/236107824/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                          <div class="item-media ">
                            <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b5.jpg');"></a>
                          </div>
                          <div class="item-info">
                            <div class="item-title text-ellipsis">
                              <a href="track.detail.html">Body on me</a>
                            </div>
                            <div class="item-author text-sm text-ellipsis ">
                              <a href="artist.detail.html" class="text-muted">Rita Ora</a>
                            </div>
                            <div class="item-meta text-sm text-muted">
                                </div>
                    
                    
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item r" data-id="item-2" data-src="http://api.soundcloud.com/tracks/259445397/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                          <div class="item-media ">
                            <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b1.jpg');"></a>
                          </div>
                          <div class="item-info">
                            <div class="item-title text-ellipsis">
                              <a href="track.detail.html">Fireworks</a>
                            </div>
                            <div class="item-author text-sm text-ellipsis ">
                              <a href="artist.detail.html" class="text-muted">Kygo</a>
                            </div>
                            <div class="item-meta text-sm text-muted">
                                </div>
                    
                    
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item r" data-id="item-7" data-src="http://api.soundcloud.com/tracks/245566366/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                          <div class="item-media ">
                            <a href="track.detail.html" class="item-media-content" style="background-image: url('resources/images/b6.jpg');"></a>
                          </div>
                          <div class="item-info">
                            <div class="item-title text-ellipsis">
                              <a href="track.detail.html">Reflection (Deluxe)</a>
                            </div>
                            <div class="item-author text-sm text-ellipsis ">
                              <a href="artist.detail.html" class="text-muted">Fifth Harmony</a>
                            </div>
                            <div class="item-meta text-sm text-muted">
                                </div>
                    
                    
                          </div>
                        </div>
                      </div>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="row item-list item-list-sm item-list-by m-b">
                        <div class="col-xs-12">
                          <div class="item">
                          <div class="item-media rounded ">
                            <a href="artist.detail.html" class="item-media-content" style="background-image: url('resources/images/a7.jpg');"></a>
                          </div>
                          <div class="item-info ">
                            <div class="item-title text-ellipsis">
                              <a href="artist.detail.html">Richard Carr</a>
                              <div class="text-sm text-muted">6 songs</div>
                            </div>
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item">
                          <div class="item-media rounded ">
                            <a href="artist.detail.html" class="item-media-content" style="background-image: url('resources/images/a3.jpg');"></a>
                          </div>
                          <div class="item-info ">
                            <div class="item-title text-ellipsis">
                              <a href="artist.detail.html">Joe Holmes</a>
                              <div class="text-sm text-muted">24 songs</div>
                            </div>
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item">
                          <div class="item-media rounded ">
                            <a href="artist.detail.html" class="item-media-content" style="background-image: url('resources/images/a5.jpg');"></a>
                          </div>
                          <div class="item-info ">
                            <div class="item-title text-ellipsis">
                              <a href="artist.detail.html">Judy Woods</a>
                              <div class="text-sm text-muted">23 songs</div>
                            </div>
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item">
                          <div class="item-media rounded ">
                            <a href="artist.detail.html" class="item-media-content" style="background-image: url('resources/images/a4.jpg');"></a>
                          </div>
                          <div class="item-info ">
                            <div class="item-title text-ellipsis">
                              <a href="artist.detail.html">Judith Garcia</a>
                              <div class="text-sm text-muted">13 songs</div>
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

<div class="modal dk lt fade" id="imoji-modal" data-backdrop="false">
   
   <div class="row-col">
     <div class="p-a-lg h-v row-cell v-m">
      <a data-dismiss="modal" class="text-muted text-lg p-x modal-close-btn">&times;</a>
         <div style="position: static; width: 100%; height: 50%; text-align: center; margin-top: 56px;"><h3 class="h3">지금 기분 어떠신가요?</h3>
            <div style="width: 100%; height: 20px;"></div>
            <button type="button" class="btn dk" style="color:#ffffffde;"><input type='image' name="imoji" id="happy" src="resources/images/imoji1.png"   alt="Nothing" width="80px" height="80px"><br>기뻐요</button>
            <button type="button" class="btn dk" style="color:#ffffffde;"><input type='image' name="imoji" id="sad" src="resources/images/imoji2.png"   alt="Nothing" width="80px" height="80px"><br>슬퍼요</button>
            <div style="width: 100%; height: 20px;"></div> 
            <button type="button" class="btn dk" style="color:#ffffffde;"><input type='image' name="imoji" id="relex" src="resources/images/imoji3.png"   alt="Nothing" width="80px" height="80px"><br>편안해요</button>
            <button type="button" class="btn dk" style="color:#ffffffde;"><input type='image' name="imoji" id="senchi" src="resources/images/imoji4.png"   alt="Nothing" width="80px" height="80px"><br>센치해요</button>
            <div style="width: 100%; height: 20px;"></div> 
            <button type="button" class="btn dk" style="color:#ffffffde;"><input type='image' name="imoji" id="upup" src="resources/images/imoji5.png"   alt="Nothing" width="80px" height="80px"><br>흥분돼요</button>
            <button type="button" class="btn dk" style="color:#ffffffde;"><input type='image' name="imoji" id="stress" src="resources/images/imoji6.png"   alt="Nothing" width="80px" height="80px"><br>스트레스</button>
            <div style="width: 100%; height: 20px;"></div> 
            <button type="button" class="btn dk" style="color:#ffffffde;"><input type='image' name="imoji" id="dugudugu" src="resources/images/imoji7.png"   alt="Nothing" width="80px" height="80px"><br>기대돼요</button>
            <button type="button" class="btn dk" style="color:#ffffffde;"><input type='image' name="imoji" id="dabdab" src="resources/images/imoji8.png"   alt="Nothing" width="80px" height="80px"><br>답답해요</button>
         
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
  <div id="share-modal" class="modal fade animate">
    <div class="modal-dialog">
      <div class="modal-content fade-down">
        <div class="modal-header">
  
          <h5 class="modal-title">Share</h5>
        </div>
        <div class="modal-body p-lg">
          <div id="share-list" class="m-b">
            <a href="" class="btn btn-icon btn-social rounded btn-social-colored indigo" title="Facebook">
                <i class="fa fa-facebook"></i>
                <i class="fa fa-facebook"></i>
            </a>
  
            <a href="" class="btn btn-icon btn-social rounded btn-social-colored light-blue" title="Twitter">
                <i class="fa fa-twitter"></i>
                <i class="fa fa-twitter"></i>
            </a>
  
            <a href="" class="btn btn-icon btn-social rounded btn-social-colored red-600" title="Google+">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-google-plus"></i>
            </a>
  
            <a href="" class="btn btn-icon btn-social rounded btn-social-colored blue-grey-600" title="Trumblr">
                <i class="fa fa-tumblr"></i>
                <i class="fa fa-tumblr"></i>
            </a>
  
            <a href="" class="btn btn-icon btn-social rounded btn-social-colored red-700" title="Pinterst">
                <i class="fa fa-pinterest"></i>
                <i class="fa fa-pinterest"></i>
            </a>
          </div>
          <div>
            <input class="form-control" value="http://plamusic.com/slug"/>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ############ SHARE END -->

<!-- ############ LAYOUT END-->
  </div>

<!-- build:js resources/scripts/app.min.js -->
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

  <script src="resources/scripts/config.lazyload.js"></script>
  <script src="resources/scripts/player.js"></script>
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
  <script src="https://kit.fontawesome.com/6478f529f2.js" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
  
<!-- endbuild -->
</body>

</html>
