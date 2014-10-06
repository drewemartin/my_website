$( document ).ready(function() {

  loadImage();
  loadName();
  loadWelcome();



  function loadImage() {
    $("#personal_pic").effect("slide", { direction: "down" }, 1800); 
  }

  function loadName(){
    $('#welcomes_name').parent().attr('align','');
    var distance = ($('#welcomes_name').parent().width() / 2) - ($('#welcomes_name').width() / 2 )
    $('#welcomes_name').animate({ left: distance }, 1800, function(){
      $('#welcomes_name').parent().attr('align','center');
      $('#welcomes_name').attr('style', 'left: 0');
    })
    
  }

  function loadWelcome(){
    console.log("__        __     _                               _ ");
    console.log("\\ \\      / /___ | |  ___  ___   _ __ ___    ___ | |");
    console.log(" \\ \\ /\\ / // _ \\| | / __|/ _ \\ | '_ ` _ \\  / _ \\| |");
    console.log("  \\ V  V /|  __/| || (__| (_) || | | | | ||  __/|_|");
    console.log("   \\_/\\_/  \\___||_| \\___|\\___/ |_| |_| |_| \\___|(_)");
  }
});

 