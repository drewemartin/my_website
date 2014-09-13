$( document ).ready(function() {

  loadImage();
  loadName();



  function loadImage() {
    $("#welcomes_pic").effect("slide", { direction: "down" }, 1800); 
  }

  function loadName(){
    var distance = ($('#welcomes_name').parent().width() / 2) - ($('#welcomes_name').width() / 2 )
    $('#welcomes_name').animate({ left: distance }, 1800)
  }
});

// animate({ left: $(this).width() });