//
//  ContentView.swift
//  MapLocation-toAppleMaps
//
//  Created by Md. Faysal Ahmed on 16/8/23.
//

import SwiftUI
import MapKit

let lat = 23.738530299092073
let long = 90.37639213311722

struct ContentView: View {
    
    let locations  = [
        MapLocation(name: "", coordinate: CLLocationCoordinate2D(latitude: lat, longitude: long)),
    ]
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lat, longitude: long), span: MKCoordinateSpan(latitudeDelta: 0.0015, longitudeDelta: 0.0015))
    
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapMarker(coordinate: location.coordinate)
            }
            .frame(height:UIScreen.main.bounds.height/5)
            .onTapGesture {
                openAppleMaps(coordinate: CLLocationCoordinate2D(latitude: lat, longitude: long))

            }
        }
        .padding()
    }
    
    func openAppleMaps(coordinate: CLLocationCoordinate2D) {
        let placemark = MKPlacemark(coordinate: coordinate)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Star Hotel & Kabab"
        mapItem.openInMaps(launchOptions: nil)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MapLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
