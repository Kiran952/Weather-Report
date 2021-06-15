//
//  CityTextView.swift
//  Weather Report
//
//  Created by Arun Amuri on 07/06/2021.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName : String
    
    var body: some View {
        Text(cityName) // text view  //here code reausablity
            .font(.system(size: 32, weight: .medium,design:.default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CityTextView_Previews: PreviewProvider {
    static var previews: some View {
        CityTextView(cityName: "Tirupathi")
    }
}

