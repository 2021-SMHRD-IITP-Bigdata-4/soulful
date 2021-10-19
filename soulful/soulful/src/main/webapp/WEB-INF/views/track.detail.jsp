<!-- 플레이 리스트 페이지-->
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
        	<span class="hidden-folded inline">pulse</span>
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
            <a data-toggle="modal" data-target="#search-modal7">
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
            </li>
            <li>
              <a href="profile.html#profile">
                <span class="nav-icon">
                <i class="material-icons">
                  favorite_border
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
              <span>Profile</span>
            </a>
            <a class="dropdown-item" href="profile.html#tracks">
              <span>Tracks</span>
            </a>
            <a class="dropdown-item" href="profile.html#playlists">
              <span>Playlists</span>
            </a>
            <a class="dropdown-item" href="profile.html#likes">
              <span>Likes</span>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="docs.html">
              Need help?
            </a>
            <a class="dropdown-item" href="signin.html">Sign out</a>
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
          <a data-toggle="modal" data-target="#search-modal7" >
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
<div class="pos-rlt">
  <div class="page-bg" data-stellar-ratio="2" style="background-image: url('../resources/images/b0.jpg');"></div>
</div>
<div class="page-content">
  <div class="padding b-b">
    <div class="row-col">
        <div class="col-sm w w-auto-xs m-b">
          <div class="item w r">
            <div class="item-media">
              <div class="item-media-content" style="background-image: url('../resources/images/b0.jpg');"></div>
            </div>
          </div>
        </div>
        <div class="col-sm">
          <div class="p-l-md no-padding-xs">
            <div class="page-title">
              <h2 class="inline">Simple Place To Be</h2>
            </div>
            <p class="item-desc text-ellipsis text-muted" data-ui-toggle-class="text-ellipsis">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quamquam tu hanc copiosiorem etiam soles dicere. Nihil illinc huc pervenit. Verum hoc idem saepe faciamus. Quid ad utilitatem tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.</p>
            <div class="item-action m-b">
              <a class="btn btn-icon white rounded btn-share pull-right" data-toggle="modal" data-target="#share-modal"><i class="fa fa-share-alt"></i></a>
              <button class="btn-playpause text-primary m-r-sm"></button> 
              <span class="text-muted">2356</span>
              <a class="btn btn-icon rounded btn-favorite"><i class="fa fa-heart-o"></i></a> 
              <span class="text-muted">232</span>
              <div class="inline dropdown m-l-xs">
                <a class="btn btn-icon rounded btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                <div class="dropdown-menu pull-right black lt"></div>
              </div>
            </div>
            <div class="item-meta">
              <a class="btn btn-xs rounded white">Pop</a> <a class="btn btn-xs rounded white">Happy</a>
            </div>
          </div>
        </div>
    </div>
  </div>

  <div class="row-col">
    <div class="col-lg-9 b-r no-border-md">
      <div class="padding">

          <h6 class="m-b">
            <span class="text-muted">by</span> 
            <a href="artist.detail.html" data-pjax class="item-author _600">Rachel Platten</a> 
            <span class="text-muted text-sm">- 10 song, 50 min 32 sec</span>
          </h6>
          <div id="tracks" class="row item-list item-list-xs item-list-li m-b">
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Fifth Harmony</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">5:05</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Pablo Nouvelle</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">3:10</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Rita Ora</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">3:55</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Jeremy Scott</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">2:50</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Summerella</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">2:50</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Radionomy</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">3:35</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Kygo</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">4:25</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">RYD</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">4:20</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Postiljonen</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">5:20</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Postiljonen</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">5:20</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
          </div>
          <h5 class="m-b">From Rachel</h5>
          <div class="row m-b">
                <div class="col-xs-6 col-sm-6 col-md-3">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Postiljonen</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-stats text-xs ">
            		          	<i class="fa fa-play text-muted"></i> 860 
            		          	<i class="fa fa-heart m-l-sm text-muted"></i> 240
            		          </span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-6 col-sm-6 col-md-3">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Radionomy</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-stats text-xs ">
            		          	<i class="fa fa-play text-muted"></i> 3340 
            		          	<i class="fa fa-heart m-l-sm text-muted"></i> 100
            		          </span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-6 col-sm-6 col-md-3">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Summerella</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-stats text-xs ">
            		          	<i class="fa fa-play text-muted"></i> 3200 
            		          	<i class="fa fa-heart m-l-sm text-muted"></i> 210
            		          </span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-6 col-sm-6 col-md-3">
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
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">RYD</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-stats text-xs ">
            		          	<i class="fa fa-play text-muted"></i> 400 
            		          	<i class="fa fa-heart m-l-sm text-muted"></i> 220
            		          </span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
          </div>
          <h5 class="m-b">Comments</h5>
          <div class="streamline m-b m-l">
                  <div class="sl-item">
                    <div class="sl-left">
                      <img src="../resources/images/a0.jpg" alt="." class="img-circle">
                    </div>
                    <div class="sl-content">
                      
                      <div class="sl-author m-b-0">
                        <a href="#">Peter Joo</a>
                        <span class="sl-date text-muted">2 minutes ago</span>
                      </div>
                      <div>
                        <p>Check your Internet connection</p>
                      </div>
                      <div class="sl-footer">
                        <a href="#" data-toggle="collapse" data-target="#reply-1">
                          <i class="fa fa-fw fa-mail-reply text-muted"></i> Reply
                        </a>
                      </div>
                      <div class="box collapse m-a-0 b-a" id="reply-1">
                        <form>
                          <textarea class="form-control no-border" rows="3" placeholder="Type something..."></textarea>
                        </form>
                        <div class="box-footer clearfix">
                          <button class="btn btn-info pull-right btn-sm">Post</button>
                          <ul class="nav nav-pills nav-sm">
                            
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="sl-item">
                    <div class="sl-left">
                      <img src="../resources/images/a2.jpg" alt="." class="img-circle">
                    </div>
                    <div class="sl-content">
                      <div class="sl-author m-b-0">
                        <a href="#">Moke</a>
                        <span class="sl-date text-muted">8:30</span>
                      </div>
                      <div>
                        <p>Call to customer <a href="#" class="text-primary">Jacob</a> and discuss the detail.</p>
                      </div>
                    </div>
                  </div>
                  <div class="sl-item">
                    <div class="sl-left">
                      <img src="../resources/images/a3.jpg" alt="." class="img-circle">
                    </div>
                    <div class="sl-content">
                      <div class="sl-author m-b-0">
                        <a href="#">Moke</a>
                        <span class="sl-date text-muted">Sat, 5 Mar</span>
                      </div>
                      <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante soe aiea ose dos soois.</p>
                        <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                      </blockquote>

                    <div class="sl-item">
                      <div class="sl-left">
                        <img src="../resources/images/a2.jpg" alt="." class="img-circle">
                      </div>
                      <div class="sl-content">
                        <div class="sl-date text-muted">Sun, 11 Feb</div>
                        <p><a href="#" class="text-primary">Jessi</a> assign you a task <a href="#" class="text-primary">Mockup Design</a>.</p>
                      </div>
                    </div>
                    <div class="sl-item">
                      <div class="sl-left">
                        <img src="../resources/images/a5.jpg" alt="." class="img-circle">
                      </div>
                      <div class="sl-content">
                        <div class="sl-date text-muted">Thu, 17 Jan</div>
                        <p>Follow up to close deal</p>
                      </div>
                    </div>

                    </div>
                  </div>
          </div>
          <h5 class="m-t-lg m-b">댓글 쓰기</h5>
          <form>
            <div class="form-group row">
              <div class="col-sm-6">
                <label>이름</label>
                <input type="text" class="form-control" placeholder="Name">
              </div>
             
            </div>
            <div class="form-group">
              <label>댓글 내용</label>
              <textarea class="form-control" rows="5" placeholder="Type your comment"></textarea>
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-sm white rounded ">댓글 남기기</button>
            </div>
          </form>

      </div>
    </div>
    <div class="col-lg-3 w-xxl w-auto-md">
      <div class="padding" style="bottom: 60px;" data-ui-jp="stick_in_parent">
      	<h6 class="text text-muted">5 Likes</h6>
      	<div class="row item-list item-list-sm m-b">
      		    <div class="col-xs-12">
      		    	<div class="item r" data-id="item-12" data-src="http://api.soundcloud.com/tracks/174495152/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      					<div class="item-media ">
      						<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b11.jpg');"></a>
      					</div>
      					<div class="item-info">
      						<div class="item-title text-ellipsis">
      							<a href="track.detail.html">Happy ending</a>
      						</div>
      						<div class="item-author text-sm text-ellipsis ">
      							<a href="artist.detail.html" class="text-muted">Postiljonen</a>
      						</div>
      		
      		
      					</div>
      				</div>
      			</div>
      		    <div class="col-xs-12">
      		    	<div class="item r" data-id="item-5" data-src="http://streaming.radionomy.com/JamendoLounge">
      					<div class="item-media ">
      						<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b4.jpg');"></a>
      					</div>
      					<div class="item-info">
      						<div class="item-title text-ellipsis">
      							<a href="track.detail.html">Live Radio</a>
      						</div>
      						<div class="item-author text-sm text-ellipsis ">
      							<a href="artist.detail.html" class="text-muted">Radionomy</a>
      						</div>
      		
      		
      					</div>
      				</div>
      			</div>
      		    <div class="col-xs-12">
      		    	<div class="item r" data-id="item-11" data-src="http://api.soundcloud.com/tracks/218060449/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      					<div class="item-media ">
      						<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b10.jpg');"></a>
      					</div>
      					<div class="item-info">
      						<div class="item-title text-ellipsis">
      							<a href="track.detail.html">Spring</a>
      						</div>
      						<div class="item-author text-sm text-ellipsis ">
      							<a href="artist.detail.html" class="text-muted">Pablo Nouvelle</a>
      						</div>
      		
      		
      					</div>
      				</div>
      			</div>
      		    <div class="col-xs-12">
      		    	<div class="item r" data-id="item-8" data-src="http://api.soundcloud.com/tracks/236288744/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      					<div class="item-media ">
      						<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b7.jpg');"></a>
      					</div>
      					<div class="item-info">
      						<div class="item-title text-ellipsis">
      							<a href="track.detail.html">Simple Place To Be</a>
      						</div>
      						<div class="item-author text-sm text-ellipsis ">
      							<a href="artist.detail.html" class="text-muted">RYD</a>
      						</div>
      		
      		
      					</div>
      				</div>
      			</div>
      		    <div class="col-xs-12">
      		    	<div class="item r" data-id="item-10" data-src="http://api.soundcloud.com/tracks/237514750/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
      					<div class="item-media ">
      						<a href="track.detail.html" class="item-media-content" style="background-image: url('../resources/images/b9.jpg');"></a>
      					</div>
      					<div class="item-info">
      						<div class="item-title text-ellipsis">
      							<a href="track.detail.html">The Open Road</a>
      						</div>
      						<div class="item-author text-sm text-ellipsis ">
      							<a href="artist.detail.html" class="text-muted">Postiljonen</a>
      						</div>
      		
      		
      					</div>
      				</div>
      			</div>
      	</div>
      	
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
     <div class="modal white lt fade" id="search-modal7" data-backdrop="false">
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
