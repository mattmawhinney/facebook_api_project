$(document).ready(function () {

	var limit_string_number_of_characters = 400;
	var selector_of_string_content = $(".bio p");

	var original_string = selector_of_string_content.text();
	var truncated_string = original_string.substring(0,limit_string_number_of_characters);
  var substring_two = original_string.substring(limit_string_number_of_characters , original_string.length);

  selector_of_string_content.html(truncated_string);

  

  // $('#toggle-me').text(substring_two);


  $('#click-me').click(function() {


  	$('#toggle-me').toggle();
	
	});

});






	
	
	// var class_of_ellipsis_holder = "truncate-add-ellipsis";
	// var ellipsis_syntax = " ...show more";
	// var ellipsis_syntax_less = " ...show less";

	
	


	
	// $('#test').click(function(evt) {
	// 	console.log('me fail English, thats unpossible');
	// 	selector_of_string_content.text(original_string);
	// 	selector_of_string_content.append("<span id='test_less'>...read less</span>");
	// });

	





	// selector_of_string_content.addClass(class_of_ellipsis_holder);

	


$('#test_less').on('click', function(){
		console.log('is it truncated?');
		selector_of_string_content.text(truncated_string);
		// selector_of_string_content.append("<span id='test'>...read more</span>");
	});
