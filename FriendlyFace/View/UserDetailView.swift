//
//  UserDetailView.swift
//  FriendlyFace
//
//  Created by Alexander Katzfey on 4/10/22.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                Text(user.name)
                    .font(.title)
                VStack(alignment: .leading) {
                    Text("Age: \(user.age)")
                    Text("Company: \(user.company)")
                    Text("Address: \(user.address)")
                }
                .frame(width: 350)
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User.example)
    }
}
