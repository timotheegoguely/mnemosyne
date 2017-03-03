$(document).ready(function(){
  $(document).keydown(function(e) {
    if (e.keyCode == 37) { // left
      $('#thesis-previous').trigger('click');
    }
    else if (e.keyCode == 39) { //right
      $('#thesis-next').trigger('click');
    }
    else if (e.keyCode == 27) { // esc
      if ($('#thesis-content-wrapper').length) {
        window.location.href = "/theses";
      }
    }
  });

  $('.card-cover').mouseenter(function() {
    $($(this).attr('data-target')).fadeIn(100);
  });

  $('.card-cover').mouseout(function() {
    $('.thesis-footer').hide();
  });
});
