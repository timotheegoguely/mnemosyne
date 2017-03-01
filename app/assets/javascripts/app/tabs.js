$( document ).ready( function() {

  // setTimeout( function(){
  //   map.invalidateSize();
  // }, 200);
  // setTimeout( function(){
  //   map.invalidateSize();
  // }, 1000);

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
