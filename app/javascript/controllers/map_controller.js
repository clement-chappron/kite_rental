import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapboxgl'
<<<<<<< HEAD

=======
>>>>>>> eca04244783acde56f2542e458be34f80c8b65d3
// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
<<<<<<< HEAD
  };

  connect() {
    console.log("Mbote na loulendo ya Stimulus ✌🏿🇨🇬");
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v11",
      center: [2.3522, 48.8566],
      zoom: 12,
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

=======
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb",
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }
>>>>>>> eca04244783acde56f2542e458be34f80c8b65d3
  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html
      new mapboxgl.Marker({ element: customMarker })
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)
    })
  }
<<<<<<< HEAD

=======
>>>>>>> eca04244783acde56f2542e458be34f80c8b65d3
  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
