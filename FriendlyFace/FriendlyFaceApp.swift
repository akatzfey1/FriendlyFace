//
//  FriendlyFaceApp.swift
//  FriendlyFace
//
//  Created by Alexander Katzfey on 4/10/22.
//

import SwiftUI

@main
struct FriendlyFaceApp: App {
    var network = Network()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}
