$ ->  
  $('.entry > .price_line > form.button_to > input').click ->
  	$('#side').show("fast","linear")

$ ->
  $('button.sho').click ->
    $('#side').show("fast","linear")
  $('button.sho').click ->
    $('.sho').hide("fast","linear")
  $('button.sho').click ->
    $('.hid').show("fast","linear")
  $('button.hid').click ->
  	$('#side').hide("fast","linear")
  $('button.hid').click ->
    $('.sho').show("fast","linear")
  $('button.hid').click -> 
    $('.hid').hide("fast","linear")

$ -> 
  $('li.menuitem').hover  ->
    $('.sub-cate').css({'display':'block'})  
  $('li.menuitem').mouseleave ->
    $('.sub-cate').css({'display':'none'})
$ -> 
   $('.box-product').mouseover ->  
     $(this).find('.gray').css({'display':'none'})
   $('.box-product').mouseleave ->  
     $(this).find('.gray').css({'display':'none'})
$ ->
  $('#search').keyup ->
    $('.result').css({'display':'block'})
