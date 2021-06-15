//
//  NavigationExample.swift
//  Weather Report
//
//  Created by Arun Amuri on 15/06/2021.
//

import Foundation
import SwiftUI


struct ListView: View {
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    NavigationLink("Kiran", destination: DetailsView(name: "Kiran"))
                    Text("Arun")
                    Text("Kiran")
                    Text("Dhananjaya")
                    Text("Subashini")
                    Text("Hello world")
                    Text("Hello world")
                }
            }.navigationBarTitle("List Names",
                                 displayMode: .large)
        }
     
    }
}

struct ListView_Prieve: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}


struct DetailsView: View {
    var name: String
    var body: some View {
        List {
            Text(name)
            Text("Address")
            Text("City: Piler")
        }
    }
}
