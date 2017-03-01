$(document).ready(function(){
  $(document).keydown(function(e) {
    if (e.keyCode == 37) {
      $('#thesis-previous').trigger('click');
    }
    else if (e.keyCode == 39) {
      $('#thesis-next').trigger('click');
    }
  });
})



