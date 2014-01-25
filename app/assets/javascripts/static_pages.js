$(document).ready(function(){
	// $("body").addClass("loading");

});

// $(document).on("click","#search-btn",function(){
	// var search_txt=$("#search-text").val();
	// $.get("/static_pages/search_text",{search_txt : search_txt},function(data){
		// alert(data);
	// });
// });

$(document).on("click",".pagination a",function(){
	$("body").addClass("loading");
});