//
//  ElementView.swift
//  periodictable Watch App
//
//  Created by Toby Brown on 24/02/2024.
//

import SwiftUI

var data = ReadData()

struct ElementView: View {
    var element: Element
    var body: some View {
        TabView {
            Section {
                VStack(alignment: .leading) {
                    HStack {
                        if element.phase == "Gas" {
                            Image(systemName: "wind")
                                .opacity(0.7)
                        } else if element.phase == "Solid" {
                            Image(systemName: "cube")
                                .opacity(0.7)
                        } else if element.phase == "Liquid" {
                            Image(systemName: "drop")
                                .opacity(0.7)
                        }
                        
                        Text(element.phase)
                            .opacity(0.7)
                    }
                    
                    Text(element.name)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .fontDesign(.rounded)
                    HStack {
                        Text(element.symbol)
                            .fontDesign(.rounded)
                        Text("•")
                        Text(element.category)
                            .fontDesign(.rounded)
                    }
                    .font(.caption)
                    .opacity(0.7)
                }.containerBackground(.mint.gradient, for: .tabView)
            }
            Section {
                List {
                    InfoView(title: "Name", value: element.name)
                    InfoView(title: "Phase", value: element.phase)
                    InfoView(title: "Category", value: element.category)
                    InfoView(title: "Atomic Mass", value: String(element.atomicMass ?? 0))
                    
                    if let appearance = element.appearance {
                        InfoView(title: "Appearance", value: appearance)
                    }
                    InfoView(title: "Summary", value: element.summary ?? "")
                }.containerBackground(.mint.gradient, for: .tabView)
            }
        }
        .tabViewStyle(.verticalPage)
        .navigationTitle(element.name)
    }
}


#Preview {
    ElementView(element: data.elements[0])
}
