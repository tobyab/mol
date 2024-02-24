//
//  Elements.swift
//  periodictable Watch App
//
//  Created by Toby Brown on 24/02/2024.
//

import Foundation

struct Element: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case id
        case name
        case appearance
        case atomicMass
        case boil
        case category
        case density
        case discoveredBy
        case melt
        case molar_heat
        case namedBy
        case number
        case period
        case group
        case phase
        case source
        case summary
        case symbol
        case shells
    }

    var id = UUID()
    var name: String
    var category: String
    var symbol: String
    var phase: String
    var source: String?
    var summary: String?
    var appearance: String?
    var atomicMass: Double?
    var molar_heat: Double?
    var group: Int
    var period: Int
    var number: Int
    var boil: Double?
    var discoveredBy: String?
    var shells: [Int]?
    var density: Double?
    var melt: Double?
    var namedBy: String?
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
