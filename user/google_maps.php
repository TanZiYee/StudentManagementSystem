<!DOCTYPE html>
<html>
<body>

<h1>Google Map</h1>

<div id="googleMap" style="width:100%;height:500px;"></div>

<script>
function myMap() {
var mapProp= {
  center:new google.maps.LatLng(51.508742,-0.120850),
  zoom:10
};
var mapProp = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

google.maps.event.addListener(map, 'click', function(event) {
  placeMarker(map, event.latLng);
});

function placeMarker(map, location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map
  });
  var infowindow = new google.maps.InfoWindow({
    content: 'Latitude: ' + location.lat() +
    '<br>Longitude: ' + location.lng()
  });
  infowindow.open(map,marker);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?API_KEY=AIzaSyAJQ4UJ4NvdWEGHutk1rmUQCw5IePYm2Tc&callback=myMap"></script>
</body>
</html>