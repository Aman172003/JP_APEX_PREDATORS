//
//  ApexPredator.swift
//  JP_APEX_PREDATORS
//
//  Created by Aman on 26/05/24.
//

import Foundation

struct ApexPredator: Decodable{
    let id: Int
    let name: String
    let type: String
    let latitude: String
    let longitude: String
    let movies: String
    let movieScenes: [MovieScenes]
    let link: String
    
    struct MovieScenes: Decodable {
        let id: Int
        let movies: String
        let sceneDescription: String
    }
}
