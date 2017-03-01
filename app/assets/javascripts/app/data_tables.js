$(document).ready( function () {
    $('#table').DataTable({
      "paging": false,
      "searching": false,
      "lengthChange": false,
      "info": false,
      "aoColumnDefs": [
        { 'bSortable': false, 'aTargets': [ 0 ] }
      ]
    });

    $('thead tr th').first().css('background-image', 'none');
} );
