$(document).ready(function() {
  $("form#new_contact").on('ajax:success', function(event, data, status, xhr) {
    // The returned JSON structure is available in data.
    $('.contact-header div:last').remove();
    $('.contact-header').append('<div class="col-xs-12 col-sm-6 col-sm-offset-3"><h3>Thanks for contacting me, ' + data.name + '. I will get back to you as soon as I can.</h3></div>');
    document.getElementById('new_contact').reset();
    $('#new_contact input[type="submit"]').attr('disabled', false);
  });

  $("form#new_contact").on('ajax:error', function(event, xhr, status, error) {
    console.log("AJAX request failed.");
    $('.contact-header div:last').remove();
    $('.contact-header').append('<div class="col-xs-12 text-center"><h3>Sorry, but I at least need a name and valid e-mail address</h3></div>');
    document.getElementById('new_contact').reset();
    $('#new_contact input[type="submit"]').attr('disabled', false);
    // Do something about the failure so the user knows it happened.
  });
});
