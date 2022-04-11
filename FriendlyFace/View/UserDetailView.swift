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
                VStack {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75, height: 75)
                    
                    HStack {
                        Text(user.name)
                            .font(.title)
                        if user.isActive {
                            Circle()
                                .frame(width:10)
                                .padding(1)
                                .foregroundColor(.green)
                        }
                    }
                }
                .padding()
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(red: 0.66, green: 0.75, blue: 1, opacity: 0.15))
                        .frame(width: 370)
                        .cornerRadius(20)
                    
                    
                    
                    LazyVStack {
                        Text("Detail:")
                            .bold()
                        
                        LazyVStack(alignment: .leading, spacing: 5) {
                            Text("Age: \(user.age)")
                                .font(.subheadline)
                            Text("Company: \(user.company)")
                                .font(.subheadline)
                            Text("Address: \(user.address)")
                                .font(.subheadline)
                        }
                        
                    }
                    .frame(width: 350)
                    .padding()
                }
                
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(red: 0.66, green: 0.75, blue: 1, opacity: 0.15))
                        .frame(width: 370)
                        .cornerRadius(20)
                    
                    
                    LazyVStack {
                        Text("About:")
                            .bold()
                            .padding(.bottom, 10)
                        
                        LazyVStack(alignment: .leading) {
                            Text("\(user.about)")
                                .font(.subheadline)
                        }
                    }
                    .frame(width: 350)
                    .padding()
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(red: 0.66, green: 0.75, blue: 1, opacity: 0.15))
                        .frame(width: 370)
                        .cornerRadius(20)
                    
                    
                    LazyVStack {
                        Text("Friends:")
                            .bold()
                            .padding(.bottom, 10)
                        
                        LazyVStack(alignment: .leading, spacing: 10) {
                            ForEach(user.friends.indices) { i in
                                Text(user.friends[i].name)
                                    .font(.headline)
                                
                                if i < user.friends.count - 1{
                                    Rectangle()
                                        .frame(width: 350, height: 1)
                                        .padding(.leading, 0)
                                        .foregroundColor(.gray)
                                        .opacity(0.5)
                                }
                            }
                        }
                    }
                    .frame(width: 350)
                    .padding()
                }
            }
        }
        //.background(Color(red: 0.66, green: 0.75, blue: 1, opacity: 0.25))
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User.example)
            .preferredColorScheme(.dark)
    }
}
