$( document ).ready( function() {

  $( "#tab-map" ).click( function() {
    if ($( this ).last().hasClass('active')) {
      map.invalidateSize();
    }
  });

  if ($( '#tab-cards' ).hasClass( 'active' )) {
    $( '#card-preview' ).show();
  };

  $( '.tabs li' ).click( function() {
    if ($( '#tab-cards' ).hasClass( 'active' )) {
      $( '#card-preview' ).show();
    } else {
      $( '#card-preview' ).hide();
    };
  });
});
