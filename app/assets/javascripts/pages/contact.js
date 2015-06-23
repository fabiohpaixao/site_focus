//google map
// function initialize() {
// 	var myLatlng = new google.maps.LatLng(-22.896687, -47.075426);
// 	var mapOptions = {
// 		zoom: 15,
// 		center: myLatlng,
// 		mapTypeId: google.maps.MapTypeId.ROADMAP
// 	}
// 	var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
// 	var marker = new google.maps.Marker({
// 		position: myLatlng,
// 		map: map,
// 		title: 'Hello World!'
// 	});
// }
// google.maps.event.addDomListener(window, 'load', initialize);
// var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';

// var myLatlng = new google.maps.LatLng(-22.896687, -47.075426);
// var handler = Gmaps.build('Google');
// handler.buildMap({
//     internal: {id: 'map-canvas'},
//     provider: {
//       zoom:      15,
//       center:    myLatlng,
//       mapTypeId: google.maps.MapTypeId.ROADMAP
//     },
// 	function(){
// 		markers = handler.addMarkers([
// 		{
// 		  "lat": -22.896687,
// 		  "lng": -47.075426,
// 		  "icon": iconBase + 'schools_maps.png'
// 		}
// 		]);
// 		handler.bounds.extendWith(markers);
// 		//handler.fitMapToBounds();
// 	}
//   },
//   function(){}
// );

var myLatlng = new google.maps.LatLng(-22.896687, -47.075426);
var handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'map-canvas'},  provider: {
      zoom:      15,
      center:    myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      scrollwheel: false
  }}, function(){
  var markers = handler.addMarkers([
    { lat: -22.896687, lng: -47.075426}
  ]);
  handler.bounds.extendWith(markers);
  //handler.fitMapToBounds();
});
    

// handler = Gmaps.build('Google');
// handler.buildMap({ provider: {}, internal: {id: 'map-canvas'}}, function(){
//   markers = handler.addMarkers([
//     {
//       "lat": -22.896687,
//       "lng": -47.075426,
//       "picture": {
//         "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
//         "width":  36,
//         "height": 36
//       },
//       "infowindow": "Focus!"
//     }
//   ]);
//   handler.bounds.extendWith(markers);
//   handler.fitMapToBounds();
// });