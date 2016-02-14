
$(document).on("ready", function (){
	$(".js-search-spotify").on("click",function (event){
		event.preventDefault();
		fetchArtist();
	});
});

function fetchArtist(){
var seacrhArtist = $(".js-artist-spotify").val();
console.log(seacrhArtist)
$.ajax ({
    url: (`https://api.spotify.com/v1/search?type=artist&query=${seacrhArtist}`,)
  	
    success: function (response) {
      console.log(response);
      alert("That artist is da bombbb.com");
    
    },
    
    error: function () {
      alert("That artist is having trouble");
    }
  });
}
	
function displaySong (artist){
	artist.forEach(function (art){
		console.log(art)
		var html = `
			<li>
				<h2> ${art.name} </h2>
				<p> ${art.genres} <p>
				<p> ${art.popularity} <p>
				<p> ${art.followers.total} <p>
				<p> ${art.images[0].url} <p>
			</li>
		`
		$(".js-artist-list").append(html);
	});
}
