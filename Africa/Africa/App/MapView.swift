//
//  MapView.swift
//  Africa
//
//  Created by Simon Peter Ojok on 20/03/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(
            latitude: 6.600286,
            longitude: 16.43877599
        )
        var mapZoomLevel = MKCoordinateSpan(
            latitudeDelta: 70.0,
            longitudeDelta: 70.0
        )
        
        return MKCoordinateRegion(
        center: mapCoordinates,
        span: mapZoomLevel
        )
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
//        Map(coordinateRegion: $region)
        Map(
            coordinateRegion: $region,
            annotationItems: locations,
            annotationContent: { item in
//                MapPin(coordinate: item.localtion, tint: .accentColor)
//                MapMarker(coordinate: item.localtion, tint: .accentColor)
//                MapAnnotation(coordinate: item.localtion) {
//                    Image("logo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 42, height: 42, alignment: .center)
//                }
                MapAnnotation(coordinate: item.localtion){
                    MapAnnotationView(location: item)
                }
        })
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    
                    HStack {
                        Text("Latitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                        
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                        .padding(.vertical)
                    
                    HStack {
                        Text("Longitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                        
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }.padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding(),
            alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
