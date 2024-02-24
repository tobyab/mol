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
                    Text(element.name)
                        .fontDesign(.rounded)
                }.containerBackground(.blue.gradient, for: .tabView)
            }
            Section {
                List {
                    VStack(alignment: .leading) {
                        Text("Name")
                            .opacity(0.7)
                        Text(element.name)
                            .font(.title3)
                    }
                }
            }
        }
        .tabViewStyle(.verticalPage)
        .navigationTitle(element.name)
    }
}

#Preview {
    ElementView(element: data.elements[0])
}
