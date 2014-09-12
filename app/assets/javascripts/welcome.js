$( document ).ready(function() {

  loadImage();

  function loadImage() {
    $("#welcomes_pic").effect("slide", { direction: "down" }, 1800); 
  }

  function loadName(){
    $('#welcomes_name').css('float', 'right')
  }
});