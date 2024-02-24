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

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .opacity(0.7)
            Text(value)
                .font(.title3)
        }
    }
}

#Preview {
    InfoView(title: "Title", value: "Value")
}
