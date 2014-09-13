$( document ).ready(function() {

  loadImage();
  loadName();



  function loadImage() {
    $("#welcomes_pic").effect("slide", { direction: "down" }, 1800); 
  }

  function loadName(){
    $('#welcomes_name').parent().attr('align','');
    var distance = ($('#welcomes_name').parent().width() / 2) - ($('#welcomes_name').width() / 2 )
    $('#welcomes_name').animate({ left: distance }, 1800, function(){
      console.log('hell0');
      $('#welcomes_name').parent().attr('align','center');
      $('#welcomes_name').attr('style', 'left: 0');
    })
    
  }
});

// animate({ left: $(this).width() });
// 