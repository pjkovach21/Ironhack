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
			console.log(response.ingredients[response.ingredients.length-1])
			$(".js-add-ing").append(`<li>response.ingredients[-1].name}</li>`)
			alert("ingredient was added")
		},
		error: function(){
			alert("didnt work")
		}
	});
}


