//
//  ContentView.swift
//  Weather Report
//
//  Created by Arun Amuri on 05/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false //present state based on bullion
        
    var body: some View {
        ZStack {  //background view
            backgroundView(isNight: $isNight)  //binding the BackgroundView see below
            VStack{
                cityTextView(cityName: "Tirupati, IND")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)

                HStack(spacing: 20) {
                    weatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.heavyrain",
                                   temperature: 74)
                    
                    weatherDayView(dayOfWeek: "WED",
                                   imageName: "wind",
                                   temperature: 88)
                    
                    weatherDayView(dayOfWeek: "THR",
                                   imageName:"snow",
                                   temperature: 55)
                    
                    weatherDayView(dayOfWeek: "FRI",
                                   imageName: "sun.max",
                                   temperature: 69)
    
                    weatherDayView(dayOfWeek: "SAT",
                                   imageName:  "cloud.fill",
                                   temperature: 45)
                }
                
                Spacer()   //A flexible space that expands stack layout, or on both axis if not contained in a stack.
                Button{
                    isNight.toggle()
                
                } label:{
                    weatherButton(title: "Change Day Time ",
                                  textColor: .blue,
                                  backgroundColor: .white)

                }
                Spacer()
                
            }
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//      weatherDayView(dayOfWeek: "wed", imageName: "Change Day Time", temperature: 90)
    }
}

