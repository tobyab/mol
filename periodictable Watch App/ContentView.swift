//
//  ContentView.swift
//  periodictable Watch App
//
//  Created by Toby Brown on 24/02/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var data = ReadData()
    
    var body: some View {
        NavigationView {
            List(data.elements) { element in
                NavigationLink{
                    ElementView(element: element)
                } label: {
                    VStack(alignment: .leading) {
                        Text(element.symbol)
                            .font(.caption)
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                        Text(element.name)
                            .fontDesign(.rounded)
                            .opacity(0.7)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
