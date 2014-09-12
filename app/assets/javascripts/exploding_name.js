$( document ).ready(function(){
  $('#exploding_name').click(function(){
    $('#exploding_name')
      .css('color', 'red')
      .effect({effect:"shake", times:3, duration:600 })
      .hide({effect:'explode', pieces: 10, duration: 1000, complete: function(){
          $('#exploding_name').css('color', 'white').show();
        }
      }) 
  });   
});

      
