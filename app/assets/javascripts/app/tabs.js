$( document ).ready( function() {

  setTimeout( function(){
    map.invalidateSize();
  }, 200);

  if ($( '#tab-cards' ).hasClass( 'active' )) {
    $( '#card-preview' ).show();
  };

  $( '.tabs li' ).click(function(){
    if ($( '#tab-cards' ).hasClass( 'active' )) {
      $( '#card-preview' ).show();
    }
    else {
      $( '#card-preview' ).hide();
    };
  });
});
