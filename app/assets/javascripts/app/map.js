$(document).ready(function() {
  //  L.mapbox.accessToken = 'your access token';
  //  var map = L.mapbox.map('map', 'Your map layer', { zoomControl: false })
  //  .setView([39.739, -104.990], 12);

  //  map.featureLayer.on("ready", function(e) {
  //    getSchools(map);
  //  });

  function getSchools(map) {
    var $loading_wheel = $("#spinning-wheel");
    $loading_wheel.show();
    $.ajax({
      dataType: 'text',
      url: '/schools.json',
      success:function(schools) {
        $loading_wheel.hide();
        var geojson = $.parseJSON(schools);
        map.featureLayer.setGeoJSON({
          type: "FeatureCollection",
          features: geojson
        });
        addSchoolPopups(map);
      },
      error:function() {
        $loading_wheel.hide();
        alert("Could not load the schools");
      }
    });
  }

  function addSchoolPopups(map) {
    map.featureLayer.on("layeradd", function(e){
      var marker = e.layer;
      var properties = marker.feature.properties;
      var popupContent = '<div class="marker-popup">' + '<h3>' + properties.title + '</h3>' +
                         '<h4>' + properties.address + '</h4>' + '</div>';
      marker.bindPopup(popupContent, {closeButton: false, minWidth: 300});
    });
  }
});
