$(function() {
   $("#new_letter")
      .on('ajax:beforeSend', function() { // set this code to happen just before the ajax request is made
        $("input[type='submit']") // make changes to the submit button
          .val('Sending...') // change the text on the button
          .attr('disabled', 'disabled'); // disable the button
      })
      .on('ajax:complete', function() {
        $("input[type='submit']")
          .val('Send Message')
          .removeAttr('disabled');
      });
});