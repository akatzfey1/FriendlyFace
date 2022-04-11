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
        NavigationView {
            
            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(network.users) { user in
                        NavigationLink {
                            UserDetailView(user: user)
                        } label: {
                            HStack {
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    HStack {
                                        Text("\(user.name)")
                                            .font(.headline)
                                        if user.isActive {
                                            Circle()
                                                .frame(width:10)
                                                .padding(1)
                                                .foregroundColor(.green)
                                        }
                                    }
                                    Text("\(user.company)")
                                        .font(.footnote)
                                        .opacity(0.75)
                                }
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .padding(.trailing, 5)
                            }
                            .frame(width: 300, alignment: .leading)
                            .padding()
                            .background(Color(red: 0.66, green: 0.75, blue: 1, opacity: 0.2))
                            .cornerRadius(20)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .navigationTitle("People")
                }
            }
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
            .preferredColorScheme(.dark)
    }
}

