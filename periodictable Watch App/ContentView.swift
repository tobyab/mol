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
        TabView {
            Section {
                NavigationStack {
                    List(data.elements) { element in
                        NavigationLink {
                            ElementView(element: element)
                        } label: {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(element.symbol)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .fontDesign(.rounded)
                                    
                                    Spacer()
                                    VStack(alignment: .trailing) {
                                        Text(element.name)
                                            .fontDesign(.rounded)
                                            .fontWeight(.semibold)
                                            .font(.subheadline)
                                        Text(String(element.atomicMass))
                                            .fontDesign(.rounded)
                                            .opacity(0.7)
                                            .font(.caption)
                                    }
                                }.padding(.horizontal)
                            }
                        }
                    }
                }
            }.navigationTitle("Periodic Table").containerBackground(.mint.gradient, for: .tabView)
        }
    }
}

#Preview {
    ContentView()
}
