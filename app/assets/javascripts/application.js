// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//= require offcanvas.js


$(document).ready(function () {

	var limit_string_number_of_characters = 400;
	var selector_of_string_content = $("#page-bio");

	var original_string = selector_of_string_content.text();
	var truncated_string = original_string.substring(0,limit_string_number_of_characters);
  var substring_two = original_string.substring(limit_string_number_of_characters , original_string.length);

  selector_of_string_content.text(truncated_string);

  

  $('#toggle-me').text(substring_two);


  	$('#click-me').click(function() {


  	$('#toggle-me').toggle();
	
	});

});


