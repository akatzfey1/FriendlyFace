//
//  File.swift
//  FriendlyFace
//
//  Created by Alexander Katzfey on 4/10/22.
//

import Foundation

struct User: Codable, Identifiable {
    
    let id: UUID
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
    
    struct Friend: Codable, Identifiable {
        let id: UUID
        let name: String
    }
    
    static var example: User {
        User(id: UUID(),
             isActive: false,
             name: "Alford Rodriguez",
             age: 21,
             company: "Imkan",
             email: "alfordrodriguez@imkan.com",
             address: "907 Nelson Street, Cotopaxi, South Dakota, 5913",
             about: "Occaecat consequat elit aliquip magna laboris dolore laboris sunt officia adipisicing reprehenderit sunt. Do in proident consectetur labore. Laboris pariatur quis incididunt nostrud labore ad cillum veniam ipsum ullamco. Dolore laborum commodo veniam nisi. Eu ullamco cillum ex nostrud fugiat eu consequat enim cupidatat. Non incididunt fugiat cupidatat reprehenderit nostrud eiusmod eu sit minim do amet qui cupidatat. Elit aliquip nisi ea veniam proident dolore exercitation irure est deserunt.",
             registered: Date(),
             tags: [
                "cillum",
                "consequat",
                "deserunt",
                "nostrud",
                "eiusmod",
                "minim",
                "tempor"
             ], friends: [
                Friend(id: UUID(), name: "Hawkins Patel"),
                Friend(id: UUID(), name: "Jewel Sexton"),
             ])
    }
    
}
