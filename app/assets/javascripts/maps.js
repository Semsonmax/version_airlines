// Used for maps
var markers = [];
var map;

function display_map(lat, lon, zoom, canvas) {
  canvas = canvas[0];
  var mapOptions = {
    center: new google.maps.LatLng(lat, lon),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(canvas, mapOptions);

}

function add_marker(lat, lon, title, canvas) {
  coords = new google.maps.LatLng(lat, lon);
  var marker = new google.maps.Marker({position: coords, map: map, title: title});
  marker.setMap(map);
}