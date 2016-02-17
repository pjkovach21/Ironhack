$(document).on("ready", function(){
	var sand_id = $(".js-sandwhich-details").data("sid")
	$(".js-btn-ing").on("click", function(event){
		var ing_id = $(event.currentTarget).data("id")
		 addIngredient(sand_id, ing_id);
		// console.log(ing_id)
		// console.log(sand_id)
	});

});

function addIngredient (sand_id, ing_id) {
	
	var ing_id=ing_id
	$.ajax({
		type: "POST",
		url:`/api/sandwhiches/${sand_id}/ingredients/add`,
		data:{iid: ing_id},
		success: function(response){
			var ingredient_number = response.ingredients.length-1
			console.log(response.ingredients)
			$(".js-add-ing").append(`<li>ingredient: ${response.ingredients[ingredient_number].name}<br>cal intake: ${response.ingredients[ingredient_number].calories}</li>`)
			alert("ingredient was added")
		},
		error: function(){
			alert("didnt work")
		}
	});
}


