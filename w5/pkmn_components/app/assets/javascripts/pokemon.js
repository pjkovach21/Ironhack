// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("ready", function (){
	$(".js-show-pokemon").on("click", function (event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
	// add evolution button
	// get from nizar on git hub
	// $(".js-evolve").on("click", function){

	//  }
});


PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.prototype.render = function() {
	console.log("Rendering pokemon: #" + this.id);

	var self = this;

	$.ajax({
		url: `/api/pokemon/${this.id}`,
		success: function (response) {
			self.info = response
			console.log("pokemon info:");
			console.log(self.info);

			$(".js-pkmn-name").text(self.info.name);
			$(".js-pkmn-height").text(self.info.height);
			$(".js-pkmn-weight").text(self.info.weight);
			$(".js-pkmn-number").text(self.info.pkdx_id);
			$(".js-pkmn-hp").text(self.info.hp);
			$(".js-pkmn-atk").text(self.info.attack);
			$(".js-pkmn-def").text(self.info.defense);
			$(".js-pkmn-spatk").text(self.info.sp_atk);
			$(".js-pkmn-spdef").text(self.info.sp_def);
			$(".js-pkmn-speed").text(self.info.speed);

			// calling image
		var image = self.info.sprites[0].resource_uri
		console.log("image",image);
		getImage(image);

			// calling description r
		var description = self.info.descriptions.sort(function (a,b){
		 a.resource_uri.slice(20,-1) - b.resource_uri.slice(20,-1)
		})
		getDescription(description)

			// sorting the multipe types pokemon can be
		var types = self.info.types;
		var poketype = ""
		types.forEach (function (type) {
		poketype += type.name + ", "
		}),

		poketype = poketype.slice(0, -2)

		$(".js-pkmn-type").text(poketype);
		$(".js-pokemon-modal").modal("show")
	},
		error: function (){
			alert("no working")
		}
	});
};

PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
	var uriSegements = pokemonUri.split("/")
	var secondLast = uriSegements.length -2;
	return uriSegements[secondLast];
};

// function to grab image
getImage = function (pokeimageurl){
	
	$.ajax({
		url: pokeimageurl,
		success: function (image){
			var pkimage = image.image
			var theimage = `<img src=http://pokeapi.co/${pkimage}>`;
			console.log(theimage)
			$(".js-pkmn-number").append(theimage)
		},
		error: function (){
		alert("no working")
		},
	})
}

// function to grab description

getDescription = function(recentdescription){
	var poppeddescriptions = recentdescription.pop();
	console.log(poppeddescriptions.resource_uri)
	$.ajax({
		url: poppeddescriptions.resource_uri,
		success: function (description)	{
		var thewords = description.description
		$(".js-pkmn-words").text(thewords)
		},
		error: function (){
			alert("something went wrong")
		}
	});
}
	// use these three
// slice, sort, pop
