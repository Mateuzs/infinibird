export default function integrateMap() {
  var mymap = L.map("map").setView([50.061518, 19.936606], 13);

  L.tileLayer(
    "https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw",
    {
      maxZoom: 18,
      attribution:
        'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
        'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      id: "mapbox.streets"
    }
  ).addTo(mymap);

  var marker = L.marker([50.061518, 19.936606]).addTo(mymap);

  var circle = L.circle([50.0518, 19.948606], {
    color: "green",
    fillColor: "#00ff00",
    fillOpacity: 0.4,
    radius: 400
  }).addTo(mymap);

  circle.bindPopup("I am a circle.");

  marker
    .bindPopup("<b>Hello world!</b><br>Hello from the middle of Krakow!.")
    .openPopup();
}