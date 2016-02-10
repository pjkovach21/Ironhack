$(document).on("ready", function(){ 
$(".js-where-am-i").on("click", function(){

});
if ("geolocation" in navigator) {
	//browser has it
	getUserLocation();
}

else {
	//nrowser does not have geo location
}
});


function getUserLocation () {
	navigator.geolocation.getCurrentPosition (successCallback, errorCallback)
}	
function successCallback (position) {
	// these console are for it to be read in the inspector, they have no impact on the actual function of code
	// //console.log("success")
	// console.log(position);

	$(".js-lat-value").text(position.coords.latitude);
	$(".js-lng-value").text(position.coords.longitude);
	var map = `<img src="https://maps.googleapis.com/maps/api/staticmap?center=${position.coords.latitude},${position.coords.longitude}&zoom=13&size=300x300&sensor=false&key=AIzaSyAdY7eqQrWkdHWENCs8a1NM5yH760yVE18">`;
	$(".js-map").append(map)
}

function errorCallback (error) {
	console.log("error", error);
}

