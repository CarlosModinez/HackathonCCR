//
//  ViewController.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 13/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    
    @IBOutlet weak var map: MKMapView!
    let locationManager = CLLocationManager()
    var userLocation: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: -22.961341, longitude: -45.422813) 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationServices()
//        print(Model.instance.nearbyPlaces[0]?.getName())
        fetchPartnerOnMap(Model.instance.nearbyPlaces)
        showRouteOnMap(pickupCoordinate: userLocation, destinationCoordinate: CLLocationCoordinate2D(latitude: (Model.instance.nearbyPlaces[0]?.getAddress().latitude)!, longitude: (Model.instance.nearbyPlaces[0]?.getAddress().longitude)!))
    }
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            checkLocationAuthorization()
        } else {
            // Show alert letting the user know they have to turn this on.
        }
    }
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            map.showsUserLocation = true
            userLocation = map.userLocation.coordinate
        case .denied: // Show alert telling users how to turn on permissions
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            map.showsUserLocation = true
        case .restricted: // Show an alert letting them know what’s up
            break
        case .authorizedAlways:
            break
        }
    }
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print(userLocation)
        print(view.annotation?.coordinate)
        
        showRouteOnMap(pickupCoordinate: userLocation, destinationCoordinate: view.annotation!.coordinate)
    }

    
    func fetchPartnerOnMap(_ places: [Place?]) {
        for place in places {
            let annotations = MKPointAnnotation()
            annotations.title = place!.getName()
            annotations.coordinate = CLLocationCoordinate2D(latitude:
                place!.getAddress().latitude, longitude: place!.getAddress().longitude)
            map.addAnnotation(annotations)
        }
    }
    
    func showRouteOnMap(pickupCoordinate: CLLocationCoordinate2D, destinationCoordinate: CLLocationCoordinate2D) {

        let sourcePlacemark = MKPlacemark(coordinate: pickupCoordinate, addressDictionary: nil)
        let destinationPlacemark = MKPlacemark(coordinate: destinationCoordinate, addressDictionary: nil)

        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)

        let sourceAnnotation = MKPointAnnotation()

        if let location = sourcePlacemark.location {
            sourceAnnotation.coordinate = location.coordinate
        }

        let destinationAnnotation = MKPointAnnotation()

        if let location = destinationPlacemark.location {
            destinationAnnotation.coordinate = location.coordinate
        }

        self.map.showAnnotations([sourceAnnotation,destinationAnnotation], animated: true )

        let directionRequest = MKDirections.Request()
        directionRequest.source = sourceMapItem
        directionRequest.destination = destinationMapItem
        directionRequest.transportType = .automobile

        // Calculate the direction
        let directions = MKDirections(request: directionRequest)

        directions.calculate {
            (response, error) -> Void in

            guard let response = response else {
                if let error = error {
                    print("Error: \(error)")
                }

                return
            }

            let route = response.routes[0]

            self.map.addOverlay((route.polyline), level: MKOverlayLevel.aboveRoads)

            let rect = route.polyline.boundingMapRect
            self.map.setRegion(MKCoordinateRegion(rect), animated: true)
        }
    }
    
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {

        let renderer = MKPolylineRenderer(overlay: overlay)

        renderer.strokeColor = UIColor(red: 17.0/255.0, green: 147.0/255.0, blue: 255.0/255.0, alpha: 1)

        renderer.lineWidth = 5.0

        return renderer
    }
    
    
    
    
}
