$( document ).ready(function() {
  $('#offcanvas-left').on('open.offcanvas', function() {
    $('.container').addClass('offcanvas-is-open');
  });

  $('#offcanvas-left').on('close.offcanvas', function() {
    $('.container').removeClass('offcanvas-is-open');
  });
});
