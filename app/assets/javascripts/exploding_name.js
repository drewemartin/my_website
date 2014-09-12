$( document ).ready(function(){
  $('#exploding_name').click(function(){
    $('#exploding_name').css('color', 'red').hide('explode', function(){
      $('#exploding_name').css('color', 'white')show();
    })
    
  });
});

      
