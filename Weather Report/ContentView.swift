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
            BackgroundView(isNight: $isNight)  //binding the BackgroundView see below
            VStack{
                CityTextView(cityName: "Tirupati, IND")

                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)

                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.heavyrain",
                                   temperature: 74)

                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "wind",
                                   temperature: 88)

                    WeatherDayView(dayOfWeek: "THR",
                                   imageName:"snow",
                                   temperature: 55)

                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sun.max",
                                   temperature: 69)

                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName:  "cloud.fill",
                                   temperature: 45)
                }

                Spacer()   //A flexible space that expands stack layout, or on both axis if not contained in a stack.
                Button{
                    validConditions()
//                    isNight.toggle()

                } label:{
                    WeatherButton(title: "Change Day Time ",
                                  textColor: .blue,
                                  backgroundColor: .white)

                }
                Spacer()

            }

        }
    }
    
    func validConditions() {
        let field = Directions.west
        
//        if field == .north {
//            print("north")
//        } else if field == .south {
//            print("south")
//        } else if field == .east {
//            print("east")
//        } else {
//            print("west")
//        }
        
        //value type
        switch field {
        case .east:
            print(field.rawValue)
        case .north:
            print(field.rawValue)
        case .south:
            print(field.rawValue)
        case .west:
            print(field.rawValue)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//      weatherDayView(dayOfWeek: "wed", imageName: "Change Day Time", temperature: 90)
    }
}

