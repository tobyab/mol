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
        Text(element.name)
    }
}

#Preview {
    ElementView(element: data.elements[0])
}
