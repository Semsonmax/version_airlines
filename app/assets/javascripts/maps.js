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
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(canvas, mapOptions);
  // map.fitBounds(new google.maps.LatLngBounds(
  //     new google.maps.LatLng(lat / 2, lon / 2),
  //     new google.maps.LatLng(lat, lon)
  // ));
}


function add_marker(lat, lon, title, canvas) {
  coords = new google.maps.LatLng(lat, lon);
  var marker = new google.maps.Marker({position: coords, map: map, title: title});
  marker.setMap(map);
}

function set_bounds() {

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