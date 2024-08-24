import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.addControl(
      new MapboxGeocoder({ 
        accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl 
      })
    )
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popupContent = `
        <div style="text-align: center;">
          <h3>
            <a href="/products/${marker.id}" class="custom-popup-link">${marker.name || 'Nom inconnu'}</a>
          </h3>
          <h4 class="text-dark">€ ${marker.price_per_day || 'Non communiqué' }</h4>
          <h5 class="text-dark">${marker.address || 'Adresse inconnue'}</h5>
        </div>
      `

      new mapboxgl.Marker({
        color: 'rgba(2, 115, 115, 1)',
      })
        .setLngLat([marker.lng, marker.lat])
        .setPopup(new mapboxgl.Popup({ offset: 25 }).setHTML(popupContent))
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
