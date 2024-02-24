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
                        Text(String(element.atomicMass))
                            .fontDesign(.rounded)
                        Text("(g/mol)")
                            .fontDesign(.rounded)
                    }
                    .font(.caption)
                    .opacity(0.7)
                }.containerBackground(.mint.gradient, for: .tabView)
            }
            Section {
                List {
                    // this is so janky, pls enjoy :) i don't know how to swift
                    InfoView(title: "Name", value: element.name, unit: "", phase: element.phase)
                    InfoView(title: "Phase", value: element.phase, unit: "", phase: element.phase)
                    InfoView(title: "Category", value: element.category, unit: "", phase: element.phase)
                    InfoView(title: "Atomic Mass", value: String(element.atomicMass ), unit: "g/mol", phase: element.phase)
                    InfoView(title: "Boiling Point", value: String(element.boil ?? 0), unit: "ºF", phase: element.phase)
                    InfoView(title: "Density", value: String(element.density ?? 0), unit: "g/l", phase: element.phase)
                    InfoView(title: "Molar Heat", value: String(element.molar_heat ?? 0), unit: "mol x K", phase: element.phase)
                    InfoView(title: "Named By", value: element.namedBy ?? "", unit: "", phase: element.phase)
                    InfoView(title: "Number", value: String(element.number), unit: "", phase: element.phase)
                    InfoView(title: "Period", value: String(element.period), unit: "", phase: element.phase)
                    InfoView(title: "Group", value: String(element.group), unit: "", phase: element.phase)
                    InfoView(title: "Appearance", value: element.appearance ?? "", unit: "", phase: element.phase)
                    InfoView(title: "Summary", value: element.summary ?? "", unit: "", phase: element.phase)
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
