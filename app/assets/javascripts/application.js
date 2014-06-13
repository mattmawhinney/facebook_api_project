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

	 $('input#name').click(function(evt){
  	evt.target.value = ""
  });

	 $('body').click(function(evt){
	 	  
	 		if (! $(evt.target).is('input#name')) {
	 			// console.log("hello");
	 			// $('input#name').val("Search StacheBook");
	 		}


	 });

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

  $('#nav-bar-title').click(function(){
  	console.log(get_quote());
  });



  $('#quote-space').text(get_quote());
  $('#quote-space-2').text(get_quote());
  $('#quote-space-3').text(get_quote());


});	// end of 'document load'

// returns a randomly selected quote from the hard-coded quote array elements
function get_quote(){

	// returns random number, between zero, up to and inluding the length
	var get_random_number = function (length) {
		return Math.round(Math.random() * length);
	}


	var quotes = [];
	quotes.push("This telephone book is full of facts, but it dosen't contain a single idea.");
	quotes.push("The love of liberty is the love of others; the love of power is the love of ourselves.");
	quotes.push("I paint self-portraits because I am so often alone, because I am the person I know best.");
	quotes.push("I consider myself a crayon, I might not be your favorite color but one day you'll need me to complete your picture.");
	quotes.push("A computer once beat me at chess, but it was no match for me at kick boxing. -- ");
	quotes.push("I know the voices in my head aren't real..... but sometimes their ideas are just absolutely awesome!");
	quotes.push("In the morning you beg to sleep more, in the afternoon you are dying to sleep, and at night you refuse to sleep.");
	quotes.push("The greatest pleasure in life is doing what people say you cannot do. -- Walter Bagehot");


	// var quote_1 = "This telephone book is full of facts, but it dosen't contain a single idea.";
	// var quote_2 = "The love of liberty is the love of others; the love of power is the love of ourselves.";
	// var quote_3 = "I paint self-portraits because I am so often alone, because I am the person I know best.";
	// var quote_4 = "I consider myself a crayon, I might not be your favorite color but one day you'll need me to complete your picture.";

	// quotes.push(quote_1);
	// quotes.push(quote_2);
	// quotes.push(quote_3);
	// quotes.push(quote_4);
	return quotes[get_random_number(quotes.length)];
};

