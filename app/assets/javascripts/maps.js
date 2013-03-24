// Used for maps
var markers = [];
var map;

// shows the map of the flight path
function display_map(lat, lon, zoom, canvas) {
  canvas = canvas[0];
  latlng = new google.maps.LatLng(lat, lon);
  bounds = new google.maps.LatLngBounds();

  var mapOptions = {
    center: latlng,
    zoom: zoom,
    zoomControl: false,
    scaleControl: false,
    mapTypeControl: false,
    streetViewControl: false,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(canvas, mapOptions);
 }

// used to add both arrival and destination markers
function add_marker(lat, lon, title, canvas) {
  coords = new google.maps.LatLng(lat, lon);
  var marker = new google.maps.Marker({position: coords, map: map, title: title});
  marker.setMap(map);
  markers.push(marker);
}

// used to establish the boundaries
function set_bounds(arrive_lat, depart_lat, arrive_lon, depart_lon) {
  bounds = new google.maps.LatLngBounds();
  for(var i = 0; i < markers.length; i++) {
    var latlng = new google.maps.LatLng(markers[i].position.lat(), markers[i].position.lng() );
    bounds.extend(latlng);
  }
    map.fitBounds(bounds);
    map.setCenter(bounds.getCenter() );

    // empty markers array to prepare for the next map
    markers.length = 0;
}

// draws a line from arrival point to destination point
function add_path(lat1, lon1, lat2, lon2, canvas)
{
  var flightPlanCoordinates = [
    new google.maps.LatLng(lat1, lon1),
    new google.maps.LatLng(lat2, lon2)
  ];

  var flightPath = new google.maps.Polyline({
    path: flightPlanCoordinates,
    strokeColor: "#FF0000",
    strokeOpacity: 1.0,
    strokeWeight: 2
  });

  flightPath.setMap(map);
}
