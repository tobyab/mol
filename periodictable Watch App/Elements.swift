//
//  Elements.swift
//  periodictable Watch App
//
//  Created by Toby Brown on 24/02/2024.
//

import Foundation

struct Element: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case name
        case symbol
    }
    
    var id = UUID()
    var name: String
    var symbol: String
}

class ReadData: ObservableObject  {
    @Published var elements = [Element]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "elements", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let elements = try? JSONDecoder().decode([Element].self, from: data!)
        self.elements = elements!
        
    }
}
