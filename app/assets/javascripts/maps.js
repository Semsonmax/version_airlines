// Used for maps
var markers = [];
var map;

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
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(canvas, mapOptions);
 }

function add_marker(lat, lon, title, canvas) {
  coords = new google.maps.LatLng(lat, lon);
  var marker = new google.maps.Marker({position: coords, map: map, title: title});
  marker.setMap(map);
  markers.push(marker);
}


function set_bounds(arrive_lat, depart_lat, arrive_lon, depart_lon) {
  bounds = new google.maps.LatLngBounds();
  for(var i = 0; i < markers.length; i++) {
    var latlng = new google.maps.LatLng(markers[i].position.lat(), markers[i].position.lng() );
    bounds.extend(latlng);
  }
    // departure   = new google.maps.LatLng(depart_lat, depart_lon);
    // arrival     = new google.maps.LatLng(arrive_lat, arrive_lon);
    // bounds      = new google.maps.LatLngBounds(departure, arrival);
    map.fitBounds(bounds);
    map.setCenter(bounds.getCenter() );

    // empty markers array to prepare for the next map
    markers.length = 0;
}


// function setBounds() {
// // map: an instance of GMap2
// // latlng: an array of instances of GLatLng
// var latlngbounds = new GLatLngBounds();
// for (var i = 0; i < latlng.length; i++)
// {
//   latlngbounds.extend(latlng[i]);
// }
// map.setCenter(latlngbounds.getCenter(), map.getBoundsZoomLevel(latlngbounds));
// }
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
