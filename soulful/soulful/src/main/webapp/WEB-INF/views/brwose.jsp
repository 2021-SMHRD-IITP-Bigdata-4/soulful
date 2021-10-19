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
  <link rel="apple-touch-icon" href="../resources/images/logo.png">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="shortcut icon" sizes="196x196" href="../resources/images/logo.png">
  
  <!-- style -->
  <link rel="stylesheet" href="../resources/css/animate.../resources/css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="../resources/css/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="../resources/css/font-awesome/../resources/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="../resources/css/material-design-icons/material-design-icons.css" type="text/css" />
  <link rel="stylesheet" href="../resources/css/bootstrap/dist/../resources/css/bootstrap.min.css" type="text/css" />

  <!-- build:css ../resources/css/styles/app.min.css -->
  <link rel="stylesheet" href="../resources/css/styles/app.css" type="text/css" />
  <link rel="stylesheet" href="../resources/css/styles/style.css" type="text/css" />
  <link rel="stylesheet" href="../resources/css/styles/font.css" type="text/css" />
  
  <link rel="stylesheet" href="libs/owl.carousel/dist/assets/owl.carousel.min.css" type="text/css" />
  <link rel="stylesheet" href="libs/owl.carousel/dist/assets/owl.theme.css" type="text/css" />
  <link rel="stylesheet" href="libs/mediaelement/build/mediaelementplayer.min.css" type="text/css" />
  <link rel="stylesheet" href="libs/mediaelement/build/mep.css" type="text/css" />

  <!-- endbuild -->
</head>
<body>
  <div class="app dk" id="app">

<!-- ############ LAYOUT START-->

  <!-- aside -->
  <div id="aside" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="left navside grey dk" data-layout="column">
      <div class="navbar no-radius">
        <!-- brand -->
        <a href="player.html" class="navbar-brand md">
        	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
        		<circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
        		<circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
        		<circle cx="24" cy="24" r="10" fill="#ffffff"/>
        		<circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
        		<path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
        		<circle cx="24" cy="24" r="3" fill="#000000"/>
        	</svg>
        
        	<img src="../resources/images/logo.png" alt="." class="hide">
        	<span class="hidden-folded inline">SoulFull</span>
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
				  <a href="player.html">
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
				  <a href="artist.html">
					<span class="nav-icon">
					  <i class="material-icons">
						portrait
					  </i>
					</span>
					<span class="nav-text">아티스트 별</span>
				  </a>
				</li>
				<li>
				  <a data-toggle="modal" data-target="#search-modal4">
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
				  <a href="profile.html#likes">
					<span class="nav-icon">
					  <i class="material-icons">
						favorite_border
					  </i>
					</span>
					<span class="nav-text">가사 모음집</span>
				  </a>
				<!--공백-->
				  <li>
					<span class="area1"></span>
				</li>
				<!--공백끝-->
				<li>
				  <a href="signin.html">
					<span class="nav-icon">
					  <i class="material-icons">
						favorite_border
					  </i>
					</span>
					<span class="nav-text">로그인</span>
				  </a>
				</li>
				<li>
				  <a href="signup.html">
					<span class="nav-icon">
					  <i class="material-icons">
						favorite_border
					  </i>
					</span>
					<span class="nav-text">회원가입</span>
				  </a>
				</li>
				<li>
				  <a href="player.html">
					<span class="nav-icon">
					  <i class="material-icons">
						favorite_border
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
                <img src="../resources/images/a3.jpg" alt="..." class="w-32 img-circle">
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
  <div id="content" class="app-content white bg box-shadow-z2" role="main">
    <div class="app-header hidden-lg-up white lt box-shadow-z1">
        <div class="navbar">
        <!-- brand -->
        <a href="player.html" class="navbar-brand md">
        	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
        		<circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
        		<circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
        		<circle cx="24" cy="24" r="10" fill="#ffffff"/>
        		<circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
        		<path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
        		<circle cx="24" cy="24" r="3" fill="#000000"/>
        	</svg>
        
        	<img src="../resources/images/logo.png" alt="." class="hide">
        	<span class="hidden-folded inline">SoulFull</span>
        </a>
        <!-- / brand -->
        <!-- nabar right -->
		<ul class="nav navbar-nav pull-right">
			<a data-toggle="modal" data-target="#search-modal4" >
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
			  <!-- / navbar right -->
			</div>
		  </div>
    <div class="app-footer app-player grey bg">
      <div class="playlist" style="width:100%"></div>
    </div>
    <div class="app-body" id="view">

<!-- ############ PAGE START-->

<div class="page-content">
  <div class="row-col">
    <div class="col-lg-9 b-r no-border-md">
      <div class="padding">
        

        <div class="page-title m-b">
          <h3 class="inline m-a-0">장르별</h3>
          <div class="dropdown inline">
            <button class="btn btn-sm no-bg h4 m-y-0 v-b dropdown-toggle text-primary" data-toggle="dropdown">All</button>
            <div class="dropdown-menu">
              <a href="#" class="dropdown-item active">
                All
              </a>
              <a href="#" class="dropdown-item">
                Blue eyed soul
              </a>
              <a href="#" class="dropdown-item">
                new jack swing
              </a>
              <a href="#" class="dropdown-item">
                motown sound
              </a>
              <a href="#" class="dropdown-item">
                hiphop soul
              </a>
              <a href="#" class="dropdown-item">
                neo soul
              </a>
              <a href="#" class="dropdown-item">
                soul
              </a>
              
            </div>
          </div>
        </div>
        <div data-ui-jp="jscroll" class="jscroll-loading-center" data-ui-options="{
            autoTrigger: true,
            loadingHtml: '<i class=\'fa fa-refresh fa-spin text-md text-muted\'></i>',
            padding: 50,
            nextSelector: 'a.jscroll-next:last'
          }">
      		<div class="row">
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-3" data-src="http://api.soundcloud.com/tracks/79031167/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b2.jpg');"></a>
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
      								<a href="track.detail.html">I Wanna Be In the Cavalry</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Jeremy Scott</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-5" data-src="http://streaming.radionomy.com/JamendoLounge">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b4.jpg');"></a>
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
      								<a href="track.detail.html">Live Radio</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Radionomy</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-2" data-src="http://api.soundcloud.com/tracks/259445397/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b1.jpg');"></a>
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
      								<a href="track.detail.html">Fireworks</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Kygo</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-1" data-src="http://api.soundcloud.com/tracks/269944843/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b0.jpg');"></a>
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
      								<a href="track.detail.html">Pull Up</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Summerella</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-9" data-src="http://api.soundcloud.com/tracks/264094434/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b8.jpg');"></a>
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
      								<a href="track.detail.html">All I Need</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Pablo Nouvelle</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-7" data-src="http://api.soundcloud.com/tracks/245566366/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b6.jpg');"></a>
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
      								<a href="track.detail.html">Reflection (Deluxe)</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Fifth Harmony</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-6" data-src="http://api.soundcloud.com/tracks/236107824/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b5.jpg');"></a>
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
      								<a href="track.detail.html">Body on me</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Rita Ora</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-12" data-src="http://api.soundcloud.com/tracks/174495152/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b11.jpg');"></a>
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
      								<a href="track.detail.html">Happy ending</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Postiljonen</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-10" data-src="http://api.soundcloud.com/tracks/237514750/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b9.jpg');"></a>
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
      								<a href="track.detail.html">The Open Road</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Postiljonen</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-11" data-src="http://api.soundcloud.com/tracks/218060449/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b10.jpg');"></a>
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
      								<a href="track.detail.html">Spring</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Pablo Nouvelle</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-8" data-src="http://api.soundcloud.com/tracks/236288744/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b7.jpg');"></a>
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
      								<a href="track.detail.html">Simple Place To Be</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">RYD</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      			    <div class="col-xs-4 col-sm-4 col-md-3">
      			    	<div class="item r" data-id="item-4" data-src="http://api.soundcloud.com/tracks/230791292/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      						<div class="item-media ">
      							<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b3.jpg');"></a>
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
      								<a href="track.detail.html">What A Time To Be Alive</a>
      							</div>
      							<div class="item-author text-sm text-ellipsis ">
      								<a href="artist.detail.html" class="text-muted">Judith Garcia</a>
      							</div>
      			
      			
      						</div>
      					</div>
      				</div>
      		</div>
          <div class="text-center">
  		      <a href="scroll.item.html" class="btn btn-sm white rounded jscroll-next">Show More</a>
          </div>
        </div>

      </div>
    </div>
    <div class="col-lg-3 w-xxl w-auto-md">
      <div class="padding" style="bottom: 60px;" data-ui-jp="stick_in_parent">
      	 
          <div class="b-b m-y"></div>
          <div class="nav text-sm _600">
          	<a href="#" class="nav-link text-muted m-r-xs">About</a>
          	<a href="#" class="nav-link text-muted m-r-xs">Contact</a>
          	<a href="#" class="nav-link text-muted m-r-xs">Legal</a>
          	<a href="#" class="nav-link text-muted m-r-xs">Policy</a>
          </div>
          <p class="text-muted text-xs p-b-lg">&copy; Copyright 2016</p>
      </div>
    </div>
  </div>
</div>

<!-- ############ PAGE END-->

    </div>
  </div>
  <!-- / -->

  
  <!-- ############ SWITHCHER START-->
    <div id="switcher">
      <div class="switcher white" id="sw-theme">
        <a href="#" data-ui-toggle-class="active" data-ui-target="#sw-theme" class="white sw-btn">
          <i class="fa fa-gear text-muted"></i>
        </a>
        <div class="box-header">
          <strong>Theme Switcher</strong>
        </div>
        <div class="box-divider"></div>
        <div class="box-body">
          <p id="settingLayout" class="hidden-md-down">
            <label class="md-check m-y-xs" data-target="folded">
              <input type="checkbox">
              <i class="green"></i>
              <span>Folded Aside</span>
            </label>
            <label class="m-y-xs pointer" data-ui-fullscreen data-target="fullscreen">
              <span class="fa fa-expand fa-fw m-r-xs"></span>
              <span>Fullscreen Mode</span>
            </label>
          </p>
          <p>Colors:</p>
          <p data-target="color">
            <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
              <input type="radio" name="color" value="primary">
              <i class="primary"></i>
            </label>
            <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
              <input type="radio" name="color" value="accent">
              <i class="accent"></i>
            </label>
            <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
              <input type="radio" name="color" value="warn">
              <i class="warn"></i>
            </label>
            <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
              <input type="radio" name="color" value="success">
              <i class="success"></i>
            </label>
            <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
              <input type="radio" name="color" value="info">
              <i class="info"></i>
            </label>
            <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
              <input type="radio" name="color" value="blue">
              <i class="blue"></i>
            </label>
            <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
              <input type="radio" name="color" value="warning">
              <i class="warning"></i>
            </label>
            <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
              <input type="radio" name="color" value="danger">
              <i class="danger"></i>
            </label>
          </p>
          <p>Themes:</p>
          <div data-target="bg" class="text-u-c text-center _600 clearfix">
            <label class="p-a col-xs-3 light pointer m-a-0">
              <input type="radio" name="theme" value="" hidden>
              <i class="active-checked fa fa-check"></i>
            </label>
            <label class="p-a col-xs-3 grey pointer m-a-0">
              <input type="radio" name="theme" value="grey" hidden>
              <i class="active-checked fa fa-check"></i>
            </label>
            <label class="p-a col-xs-3 dark pointer m-a-0">
              <input type="radio" name="theme" value="dark" hidden>
              <i class="active-checked fa fa-check"></i>
            </label>
            <label class="p-a col-xs-3 black pointer m-a-0">
              <input type="radio" name="theme" value="black" hidden>
              <i class="active-checked fa fa-check"></i>
            </label>
          </div>
        </div>
      </div>
    </div>
  <!-- ############ SWITHCHER END-->
  <!-- ############ SEARCH START -->
     <!-- ############ SEARCH START -->
	 <div class="modal white lt fade" id="search-modal4" data-backdrop="false">
		<a data-dismiss="modal" class="text-muted text-lg p-x modal-close-btn">&times;</a>
		<div class="row-col">
		  <div class="p-a-lg h-v row-cell v-m">
			<div class="row">
			  <div class="col-md-8 offset-md-2">
				<form action="search.html" class="m-b-md">
				  <div class="input-group input-group-lg">
					<input type="text" class="form-control" placeholder="키워드" data-ui-toggle-class="hide" data-ui-target="#search-result">
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
										<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b2.jpg');"></a>
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
										<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b5.jpg');"></a>
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
										<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b1.jpg');"></a>
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
										<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b6.jpg');"></a>
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
										<a href="artist.detail.html" class="item-media-content" style="background-image: url('../resources/images/a7.jpg');"></a>
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
										<a href="artist.detail.html" class="item-media-content" style="background-image: url('../resources/images/a3.jpg');"></a>
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
										<a href="artist.detail.html" class="item-media-content" style="background-image: url('../resources/images/a5.jpg');"></a>
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
										<a href="artist.detail.html" class="item-media-content" style="background-image: url('../resources/images/a4.jpg');"></a>
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

<!-- build:js scripts/app.min.js -->
<!-- jQuery -->
  <script src="libs/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
  <script src="libs/tether/dist/js/tether.min.js"></script>
  <script src="libs/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
  <script src="libs/jQuery-Storage-API/jquery.storageapi.min.js"></script>
  <script src="libs/jquery.stellar/jquery.stellar.min.js"></script>
  <script src="libs/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="libs/jscroll/jquery.jscroll.min.js"></script>
  <script src="libs/PACE/pace.min.js"></script>
  <script src="libs/jquery-pjax/jquery.pjax.js"></script>

  <script src="libs/mediaelement/build/mediaelement-and-player.min.js"></script>
  <script src="libs/mediaelement/build/mep.js"></script>
  <script src="scripts/player.js"></script>

  <script src="scripts/config.lazyload.js"></script>
  <script src="scripts/ui-load.js"></script>
  <script src="scripts/ui-jp.js"></script>
  <script src="scripts/ui-include.js"></script>
  <script src="scripts/ui-device.js"></script>
  <script src="scripts/ui-form.js"></script>
  <script src="scripts/ui-nav.js"></script>
  <script src="scripts/ui-screenfull.js"></script>
  <script src="scripts/ui-scroll-to.js"></script>
  <script src="scripts/ui-toggle-class.js"></script>
  <script src="scripts/ui-taburl.js"></script>
  <script src="scripts/app.js"></script>
  <script src="scripts/site.js"></script>
  <script src="scripts/ajax.js"></script>
<!-- endbuild -->
</body>
</html>