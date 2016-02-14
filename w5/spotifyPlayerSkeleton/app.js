$(document).on("ready", function (){
	console.log("whatever")
	$(".js-searchButton").on("click", function(event){
		console.log("whatever")
		event.preventDefault();
		fetchSong();
	});
	$(".js-button-play").on("click",function(event){
		event.preventDefault();
		playSong();
	});
	$('.js-player').on('timeupdate', printTime)
	

	$(".js-author").on("click", function(event){
		var id = $(this).data("id")
		event.preventDefault();
		showArtistinfo(id);
		$(".js-modal").modal("show");
	});
});

function fetchSong(){
	var searchSong = $(".js-search").val();
	console.log(searchSong)
	$.ajax ({
		url:"https://api.spotify.com/v1/search?type=track&q=" + searchSong,
		success: function (response) {
			console.log(response)
			var songInfo = response.tracks.items[0]
			var artistId = songInfo.artists[0].id
			alert("I put an alert here because i can")
			$(".js-author").text(songInfo.artists[0].name);
			$(".js-title").text(songInfo.name);
			$(".js-cover").prop("src",songInfo.album.images[0].url)
			$(".js-audio").prop("src",songInfo.preview_url)
			$(".js-author").data("id",artistId)
		},
		error: function (){
			alert("shit, it aint workin")
		}
	});
}

function playSong(){

	if($(".js-button-play").hasClass("playing")) {
		$('.js-player').trigger('pause');
		$(".js-button-play").removeClass("playing");
	}
	else{
		$('.js-player').trigger('play');
		$(".js-button-play").addClass("playing");
	}
}

function printTime () {
  var current = $('.js-player').prop('currentTime');
  $(".js-seekbar").val(current);

  console.debug('Current time: ' + current);
}

// trying to add an artist

function showArtistinfo(artistId) {
	console.log("Look at me -----", artistId)
	// artistid.forEach (function(id){
	$(".js-artist-name").empty();
	$(".js-artist-img").empty();
	$(".js-artist-followers").empty();
	$(".js-artist-popularity").empty();

	$.ajax ({

	url:"https://api.spotify.com/v1/artists/" + artistId,
	success: function (response) {
		console.log("I am here-----", response)
		var artistName = response.name;
		var artistImg = response.images[0].url;
		var artistFollowers = response.followers.total;
		var artistPopularity = response.popularity;
		console.log(artistName)
		$(".js-artist-name").text(artistName);
		$(".js-artist-img").prop("src", artistImg);
		$(".js-artist-followers").text("Followers: " + artistFollowers);
		$(".js-artist-popularity").text("Popularity: " + artistPopularity);
	},
	error: function (){
	alert("shit, it aint workin")	

	}
	});
}
