//
//  ContentView.swift
//  JP_APEX_PREDATORS
//
//  Created by Aman on 26/05/24.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    var body: some View {
        List(predators.apexPredators) { predator in
            
        }
    }
}

#Preview {
    ContentView()
}
