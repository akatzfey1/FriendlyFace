//
//  ContentView.swift
//  FriendlyFace
//
//  Created by Alexander Katzfey on 4/10/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var network: Network

    var body: some View {
        List(network.users, id: \.id) { user in
            Text("\(user.name)")
        }
        .onAppear {
            network.getUsers()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Network())
    }
}
