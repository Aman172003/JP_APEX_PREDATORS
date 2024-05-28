//
//  Predators.swift
//  JP_APEX_PREDATORS
//
//  Created by Aman on 29/05/24.
//

import Foundation

class Predators{
//    ApexPredator is a type made by us
    var apexPredators: [ApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData() {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do{
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
//                json data keys are convert from snake case to camel case
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
            } catch{
                print("Error decoding data: \(error)")
            }
        }
    }
}
