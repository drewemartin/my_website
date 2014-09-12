$( document ).ready(function() {
    console.log( "ready!" );
    if($('#alert').text() !== null || $('#notice').text() !== null){
      $('#alert_div').delay(3500).slideUp(500);
      $('#notice_div').delay(3500).slideUp(500);
    }
});