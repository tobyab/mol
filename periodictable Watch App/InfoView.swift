//
//  InfoView.swift
//  periodictable Watch App
//
//  Created by Toby Brown on 24/02/2024.
//

import SwiftUI

struct InfoView: View {
    let title: String
    let value: String
    let unit: String
    let phase: String

    var body: some View {
        if value.isEmpty == false {
            VStack(alignment: .leading) {
                Text(title)
                    .opacity(0.7)
                HStack{
                    if (title == "Phase") {
                        if phase == "Gas" {
                            Image(systemName: "wind")
                                .opacity(0.7)
                        } else if phase == "Solid" {
                            Image(systemName: "cube")
                                .opacity(0.7)
                        } else if phase == "Liquid" {
                            Image(systemName: "drop")
                                .opacity(0.7)
                        }
                    }
                    Text(value)
                        .font(.title3)
                    if unit.isEmpty == false {
                        Text("(" + unit + ")")
                            .font(.title3)
                    }
                }
            }
        }
    }
}

#Preview {
    InfoView(title: "Title", value: "Value", unit: "", phase: "Gas")
}
