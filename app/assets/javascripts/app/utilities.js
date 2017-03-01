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
        window.location.href = "/theses";
      }
    }
  });

  $(function() {
    $('.card-cover').mouseover(function() {
      console.log('.card-cover')
      // $('#card-preview').html(this.id);
    })
  })
})
