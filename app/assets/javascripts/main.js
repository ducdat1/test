$(document).ready(function(){
  $("input#search").keyup(function(event) {
  	var index = $(this).val();
    $('#result').addClass('loading'); 
    // alert($(this).serialize());
    $.ajax({
    	url: 'search',
    	type: 'GET',
    	dataType: 'script',
    	data: {search: index},
    })
    .done(function(html) {
    	$('#result').html(html).show();
    })
    .fail(function() {
    	console.log("error");
    })
    .always(function() {
    	console.log("complete");
    });
  });
});

// (url, index, function(html , status){
//       alert("Data: " + html + "\nStatus: " + status);
//       $('#result').removeClass('loading');
//       $('#result').html(html).show();
//     });