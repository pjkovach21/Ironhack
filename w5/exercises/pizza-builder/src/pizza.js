
$(document).ready(function(){
	$('.white-sauce-li').toggle();
	$('.crust-li').toggle();
	$('.btn-sauce active').toggleClass('active');
	$('.btn-crust active').toggleClass('active');
	var startprice = 13;
	$("strong").text(startprice);


$('.btn-green-peppers').on("click", function(){
	$(".pepper").toggleClass("green-pepper")
	$('.green-peppers-li').toggle();
	if($(event.currentTarget).hasClass('active')){
		startprice-=1
	}
	else{
		startprice+=1
	}
	$("strong").text(startprice);
});

$('.btn-mushrooms').on("click", function(){
	$(".capper").toggleClass("cap")
	$(".stemmer").toggleClass("stem")
	$('.mushrooms-li').toggle();
		if($(event.currentTarget).hasClass('active')){
		startprice-=1
	}
	else{
		startprice+=1
	}
	$("strong").text(startprice);

});


$('.btn-pepperonni').on("click", function(){
	$('.pepperoni-li').toggle();
 	$(".pep").toggle()
 		if($(event.currentTarget).hasClass('active')){
		startprice-=1
	}
	else{
		startprice+=1
	}
	$("strong").text(startprice);
});

$('.btn-crust').on("click", function (){
	 $(".crust").toggleClass("crust-gluten-free");
	 $('.crust-li').toggle();
	 // $(event.currenTarget).toggleClass('active');
    console.log(event.currentTarget)
    if($(event.currentTarget).hasClass('active')){
		startprice-=5;
    }
	else{
		startprice+=5;
     }
	$("strong").text(startprice);
});

$('.btn-sauce').on("click", function(){
	$(".sauce").toggleClass("sauce-white")
	$('.white-sauce-li').toggle();
		if($(event.currentTarget).hasClass('active')){
		startprice-=3;
	}
	else{
		startprice+=3;
	}
	$("strong").text(startprice);
});

$('.btn').on("click", function(){
	$(this).toggleClass("active")
});

});