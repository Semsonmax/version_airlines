$(function() {
  display_current_trip(40.7482845,-73.9855692, 12);
});

function populate_map()
{
  _.each(airfields, prep_markers);
}

function prep_markers(airfield)
{
  title = voyage.airfield_depart;
  longitude = voyage.arrive_long;
  latitude = voyage.depart_lat;
  add_current_trip_marker(latitude, longitude, title);

  airfield_arrive = voyage.airfield_arrive;
  arrive_long = voyage.arrive_long;
  latitude = voyage.depart_lat;
  add_current_trip_marker(latitude, longitude, title);
}

function display_current_trip(lat, long, zoom)
{
  var mapOptions = {
    center: new google.maps.LatLng(lat, long),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var canvas = $('#trip_canvas')[0];
  map = new google.maps.Map(canvas, mapOptions);
}

function add_current_trip_marker(lat, long, title)
{
  var latlng = new google.maps.LatLng(lat, long);
  var marker = new google.maps.Marker({position: latlng, map: map, title: title});
  markers.push(marker);
}