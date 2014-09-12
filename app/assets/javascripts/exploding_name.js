$( document ).ready(function(){
  $('#exploding_name').click(function(){
    $('#exploding_name').css('color', 'red').hide({effect:'explode', pieces: 10, duration: 1000}, function(){
      $('#exploding_name').css('color', 'white').show();
    })
    
  });
});

      
