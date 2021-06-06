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
                    isNight.toggle()
                
                } label:{
                    WeatherButton(title: "Change Day Time ",
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
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek :String
    var imageName:String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)//from sf symbols
                .renderingMode(.original)  //for to get orginal logo color
                .resizable()
                .aspectRatio(contentMode: .fit) //logo aspectratio
                .frame(width: 40, height: 40)//logo dimesnsions
            Text("\(temperature)°")     //  °= shift + option + 8
                .font(.system(size: 28,weight:.medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
        
    var body: some View {

        LinearGradient(gradient: Gradient(colors: [isNight ? .black :.blue,isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .trailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName : String
    
    var body: some View {
        Text(cityName) // text view  //here code reausablity
            .font(.system(size: 32, weight: .medium,design:.default))
            .foregroundColor(.white)
            .padding()
 }
}

struct MainWeatherStatusView : View {
    
    var imageName:String
    var temperature: Int

    var body:some View{
        VStack(spacing :10) {   //for cloud image
            Image(systemName: imageName) //from sf symbols
                .renderingMode(.original)  //for to get orginal logo color
                .resizable()
                .aspectRatio(contentMode: .fit) //logo aspectratio
                .frame(width: 180, height: 180)//logo dimesnsions
            
        Text("\(temperature)°")     //  °= shift + option + 8
                .font(.system(size: 70,weight:.medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom,40)
        
    }
    
}
struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View{
        Text("Change Day Time")
            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(10)
        
    }
}
