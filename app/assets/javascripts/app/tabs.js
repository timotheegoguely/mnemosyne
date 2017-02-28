$(document).ready(function() {
  $('#cards, #list, #map').fadeIn();


  if (!$('#tab-cards').hasClass('active')) {
    $('#card-preview').hide();
  }
  $('.tabs li').click(function(){
    if ($('#tab-cards').hasClass('active')) {
      $('#card-preview').show();
    }
    else {
      $('#card-preview').hide();
    };
  });
});
