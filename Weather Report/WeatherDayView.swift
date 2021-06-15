//
//  WeatherDayView.swift
//  Weather Report
//
//  Created by Arun Amuri on 07/06/2021.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek :String
    var imageName:String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium, design: .rounded))
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

struct WeatherDayView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDayView(dayOfWeek: "mon", imageName: "sun.fill", temperature: 90)
    }
}
