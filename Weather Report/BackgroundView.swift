//
//  BackgroundView.swift
//  Weather Report
//
//  Created by Arun Amuri on 07/06/2021.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
        
    var body: some View {

        LinearGradient(gradient: Gradient(colors: [isNight ? .black :.blue,isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .trailing)
            .edgesIgnoringSafeArea(.all)
    }
}

//struct BackgroundView_Previews: PreviewProvider {
//    static var previews: some View {
//        backgroundView(isNight: ? .wh)
//    }
//}
