$( document ).ready( function() {

  $( "#tab-map" ).click( function() {
    if ($( this ).last().hasClass('active')) {
      map.invalidateSize();
    }
  });

  if ($( '#tab-cards' ).hasClass( 'active' )) {
    $( '#card-preview' ).show();
    $( "#filters-btn" ).show();
  } else {
    $( "#filters-btn" ).hide();
  };

  $( '.tabs li' ).click( function() {
    if ($( '#tab-cards' ).hasClass( 'active' )) {
      $( '#card-preview' ).show();
      $( "#filters-btn" ).show();
    } else {
      $( '#card-preview' ).hide();
      $( "#filters-btn" ).hide();
    };
  });
});
