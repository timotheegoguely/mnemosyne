$(document).ready(function(){
  $(document).keydown(function(e) {
    e.preventDefault();
    if (e.keyCode == 37) { // left
      $('#thesis-previous').trigger('click');
    }
    else if (e.keyCode == 39) { //right
      $('#thesis-next').trigger('click');
    }
    else if (e.keyCode == 27) { // esc
      if ($('#thesis-content-wrapper').length) {
        parent.history.back();
        return false;
      }
    }
  });
})

