

	$(document).on("ready", function (){
		$(".js-show-characters").on("click",function (){
			fetchCharacters();
		});
	

	$(".js-add-kylo").on("click", function(){
		publishKylo();
	});
	$(".js-add-new-character").on("click", function (event){
		event.preventDefault();
		publishNewGuy();
	});
});
	function fetchCharacters(){
	$.ajax ({
	url: "https://ironhack-characters.herokuapp.com/characters",

	success: function(response) {
		console.log("everything is chill");
		displayCharacters(response)
	},

	error: function () {
		console.log("we screwed up");
	}
});
}

//$$$$$$$$$$$$$$$$$$$$
//### definitions

function displayCharacters (characters) {

	characters.forEach(function (char){

		var html = `
		<li> 
		<h2> ${char.name} </h2>
		<p> ${char.id} </p>
		<p> ${char.occupation} </p>
		<p> ${char.weapon} </p>
		</li>
		`;
		$(".js-characters-list").append(html);
	});
}

function publishKylo () {
	var newKylo = {
	name: "Kylo",
	occupation: "Killer",
	weapon: "saber red"
};
	$.ajax ({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",

		data: newKylo,
		success: function (response){
		var html = `
			<li> 
				<h2> ${newKylo.name} </h2>
				<p> ${response.id} </p>
				<p> ${newKylo.occupation} </p>
				<p> ${newKylo.weapon} </p>
			</li>
		`;
		$(".js-characters-list").append(html);

		alert("emo kylo has been added")
		},
		error: function (){
			alert("COuld not add Kylo")
		}
	});
}

function publishNewGuy () {
	var newName = $(".js-newGuy-name").val();
	var newWeapon = $(".js-newGuy-weapon").val();
	var newOccupation = $(".js-newGuy-occupation").val();
	var newGuy = {
		name: newName,
		occupation: newOccupation,
		weapon: newWeapon
	};
	$.ajax ({
		type: "POST",

		url: "https://ironhack-characters.herokuapp.com/characters",
		
		data: newGuy,
		
		success: function (response){
		var html = `
			<li> 
				<h2> ${newGuy.name} </h2>
				<p> id# ${response.id} </p>
				<p> what he does: ${newGuy.occupation} </p>
				<p> weapon of choice: ${newGuy.weapon} </p>
			</li>
		`;
		$(".js-characters-list").append(html);

		alert("New Guy has been added")
		},

		error: function (){
			alert("COuld not add Kylo")
		}

	});
}