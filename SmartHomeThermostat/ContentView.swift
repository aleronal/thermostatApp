//
//  ContentView.swift
//  SmartHomeThermostat
//
//  Created by Alejandro Rodriguez on 26/06/2023.
//

import SwiftUI
import CoreLocationUI


struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                
                VStack{
                    LocationButton(.shareCurrentLocation){
                        locationManager.requestLocation()
                    }
                    .cornerRadius(30)
                    .foregroundColor(.white)
                    VStack(spacing:0){
                        // Thermomether
                        ThermometerView()
                            .padding(.top, 30)
                            .padding(.bottom, 60)
                        HStack(spacing:20){
                            //Humidity Card
                            ClimateCard(iconName: "humidity.fill", index: "inside humidy", measure: "49%")
                            
                            //Temperatute Card
                            ClimateCard(iconName: "thermometer", index: "Outside temp", measure: "-10°")
                            
                        }
                    }
                }
            }
            .navigationTitle("Thermostat")
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(.white)
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
