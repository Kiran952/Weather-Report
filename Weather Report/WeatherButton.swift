//
//  WeatherButton.swift
//  Weather Report
//
//  Created by Arun Amuri on 07/06/2021.
//

import SwiftUI

struct weatherButton: View {

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

//struct WeatherButton_Previews: PreviewProvider {
//    static var previews: some View {
//        WeatherButton()
//    }
//}
