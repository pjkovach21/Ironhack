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
});

function fetchSong(){
	var searchSong = $(".js-search").val();
	console.log(searchSong)
	$.ajax ({
		url:"https://api.spotify.com/v1/search?type=track&q=" + searchSong,
		success: function (response) {
			console.log(response)
			var songInfo = response.tracks.items[0]
			alert("I put an alert here because i can")
			$(".js-author").text(songInfo.artists[0].name);
			$(".js-title").text(songInfo.name);
			$(".js-cover").prop("src",songInfo.album.images[0].url)
			$(".js-audio").prop("src",songInfo.preview_url)
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

// function displaySonginfo(song) {
// 	song.forEach (function(s){
// 	var html = `
// 			<li>
// 			<h3> s.name </h3>
// 			<p> s.artist </p>
// 			</li>
// 			`
// 		$(".js-track-info").append(html)
// 	});
// }
