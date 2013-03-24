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

function add_path(lat1, lon1, lat2, lon2, canvas)
{
  var flightPlanCoordinates = [
    new google.maps.LatLng(lat1, lon1),
    new google.maps.LatLng(lat2, lon2),
  ];

  var flightPath = new google.maps.Polyline({
    path: flightPlanCoordinates,
    strokeColor: "#FF0000",
    strokeOpacity: 1.0,
    strokeWeight: 2
  });

  flightPath.setMap(map);
}