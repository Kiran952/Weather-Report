//
//  MainWeatherStatusView.swift
//  Weather Report
//
//  Created by Arun Amuri on 07/06/2021.
//

import SwiftUI

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


struct MainWeatherStatusView_Previews: PreviewProvider {
    static var previews: some View {
        MainWeatherStatusView(imageName: "cloud.rain", temperature: 90)
    }
}
