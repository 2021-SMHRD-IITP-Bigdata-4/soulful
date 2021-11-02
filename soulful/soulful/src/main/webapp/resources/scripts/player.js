

     var song_data = localStorage.getItem('data');
     var arr = JSON.parse(song_data);
	
	    var all_song_data = localStorage.getItem('all_data');
     var all_arr = JSON.parse(all_song_data);



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
				
function make_song(){
				for(var z = 1; z <= 10; z++){
			for(var i = 0; i < all_arr[0].length; i++){
				if (arr[z] == all_arr[2][i]){
					eval("title"+z+"= all_arr[0]["+i+"]")
					eval("artist"+z+"= all_arr[1]["+i+"]")
					eval("code"+z+"= all_arr[2]["+i+"]")
			}
		}
		}

}
		
		
		
(function ($) {
  "use strict";
  
  		make_song();
  if($('.playlist').length == 0) return;

  var playlist = $( '.playlist' ).mepPlaylist({
    audioHeight: '40',
    audioWidth: '100%',
    videoHeight: '40',
    videoWidth: '100%',
    audioVolume: 'vertical',
    mepPlaylistLoop: true,
    alwaysShowControls: true,
    mepSkin: 'mejs-audio',
    mepResponsiveProgress: true,
    mepSelectors: {
      playlist: '.playlist',
      track: '.track',
      tracklist: '.tracks'
    },
    features: [
      'meplike',
      'mepartwork',
      'mepcurrentdetails',
      'mepplaylist',
      'mephistory',
      'mepprevioustrack',
      'playpause',
      'mepnexttrack',
      'progress',
      'current',
      'duration',
      'volume',
      'mepicons',
      'meprepeat',
      'mepshuffle',
      'mepsource',
      'mepbuffering',
      'meptracklist',
      'mepplaylisttoggle',
      'youtube'
    ],
    
    
    
    mepPlaylistTracks: [
      {
            "id": "item-1",
            "title": title1,
            "except": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quamquam tu hanc copiosiorem etiam soles dicere. Nihil illinc huc pervenit.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code1+".mp3",
            "meta": {
                "author": artist1,
                "authorlink": "artist.detail.html",
                "date": "30.05.2016",
                "category": "Blue",
                "tag": "Holiday",
                "play": 3200,
                "like": 210,
                "duration": "2:50"
            }
        },
        {
            "id": "item-2",
            "title": title2,
            "except": "Hidem saepe faciamus. Quid ad utilitatem tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code2+".mp3",
            "meta": {
                "author": artist2,
                "authorlink": "artist.detail.html",
                "date": "02.05.2016",
                "category": "Jazz",
                "play": 30,
                "like": 10,
                "duration": "4:25"
            }
        },
        {
            "id": "item-3",
            "title": title3,
            "except": "Tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code3+".mp3",
            "meta": {
                "author": artist3,
                "authorlink": "artist.detail.html",
                "date": "09.04.2016",
                "category": "DJ",
                "play": 300,
                "like": 10,
                "duration": "2:50"
            }
        },
        {
            "id": "item-4",
            "title": title4,
            "except": "Tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code4+".mp3",
            "meta": {
                "author": artist4,
                "authorlink": "artist.detail.html",
                "date": "09.04.2016",
                "category": "DJ",
                "play": 300,
                "like": 10,
                "duration": "2:50"
            }
        },
        {
            "id": "item-5",
            "title": title5,
            "except": "Tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code5+".mp3",
            "meta": {
                "author": artist5,
                "authorlink": "artist.detail.html",
                "date": "09.04.2016",
                "category": "DJ",
                "play": 300,
                "like": 10,
                "duration": "2:50"
            }
        },
        {
            "id": "item-6",
            "title": title6,
            "except": "Tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code6+".mp3",
            "meta": {
                "author": artist6,
                "authorlink": "artist.detail.html",
                "date": "09.04.2016",
                "category": "DJ",
                "play": 300,
                "like": 10,
                "duration": "2:50"
            }
        },
        {
            "id": "item-7",
            "title": title7,
            "except": "Tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code7+".mp3",
            "meta": {
                "author": artist7,
                "authorlink": "artist.detail.html",
                "date": "09.04.2016",
                "category": "DJ",
                "play": 300,
                "like": 10,
                "duration": "2:50"
            }
        },
        {
            "id": "item-8",
            "title": title8,
            "except": "Tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code8+".mp3",
            "meta": {
                "author": artist8,
                "authorlink": "artist.detail.html",
                "date": "09.04.2016",
                "category": "DJ",
                "play": 300,
                "like": 10,
                "duration": "2:50"
            }
        },
        {
            "id": "item-9",
            "title": title9,
            "except": "Tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code9+".mp3",
            "meta": {
                "author": artist9,
                "authorlink": "artist.detail.html",
                "date": "09.04.2016",
                "category": "DJ",
                "play": 300,
                "like": 10,
                "duration": "2:50"
            }
        },
        {
            "id": "item-10",
            "title": title10,
            "except": "Tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.",
            "link": "track.detail.html",
            "thumb": { "src": "resources/images/logo.png" },
            "src": "resources/musics/"+code10+".mp3",
            "meta": {
                "author": artist10,
                "authorlink": "artist.detail.html",
                "date": "09.04.2016",
                "category": "DJ",
                "play": 300,
                "like": 10,
                "duration": "2:50"
            }
        }
    ]
  });

  // get player, then you can use the player.mepAdd(), player.mepRemove(), player.mepSelect()
  var player = playlist.find('audio, video')[0].player;

  // event on like btn
  player.$node.on('like.mep', function(e, trackid){
    $('[track-id='+trackid+']').toggleClass('is-like');
  });

  // event on play
  player.$node.on('play', function(e){
    updateDisplay();
  });

  // event on pause
  player.$node.on('pause', function(e){
    updateDisplay();
  });

  // update when pjax end
  $(document).on('pjaxEnd', function() {
    updateDisplay();
  });

  // simulate the play btn
  $(document).on('click.btn', '.btn-playpause', function(e){
      e.stopPropagation();
      var self = $(this);
      if( self.hasClass('is-playing') ){
        self.removeClass('is-playing');
        player.pause();
      }else{
        var item = getItem(self);
        item && player.mepAdd(item, true);
      }
  });

  function updateDisplay(){
    $('[data-id]').removeClass('active').find('.btn-playpause').removeClass('is-playing').parent().removeClass('active');
    var track = player.mepGetCurrentTrack();
    if(!track || !track.id) return;
    var item = $('[data-id="'+track.id+'"]');
    if( player.media.paused ){
      item.removeClass('active').find('.btn-playpause').removeClass('is-playing').parent().removeClass('active');
    }else{
      item.addClass('active').find('.btn-playpause').addClass('is-playing').parent().addClass('active');
    }
  }

  // get item data, you can use ajax to get data from server
  function getItem(self){
    var item = self.closest('.item');
    // track detail
    if(!item.attr('data-src')){
      self.toggleClass('is-playing');
      $('#tracks').find('.btn-playpause').first().trigger('click');
      return false;
    }

    var obj = {
        meta: {
           author: item.find('.item-author').find('a').text()
          ,authorlink : item.find('.item-author').find('a').attr('href')
        }
        ,src: self.closest('[data-src]').attr("data-src")
        ,thumb: {
          src: item.find('.item-media-content').css("background-image").replace(/^url\(["']?/, '').replace(/["']?\)$/, '')
        }
        ,title: item.find('.item-title').find('a').text()
        ,link: item.find('.item-title').find('a').attr('href')
        ,id: self.attr("data-id") ? self.attr("data-id") : self.closest('[data-id]').attr("data-id")
    };
    return obj;
  }

})(jQuery);


	
