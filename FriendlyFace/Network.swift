//
//  Network.swift
//  FriendlyFace
//
//  Created by Alexander Katzfey on 4/10/22.
//

import Foundation

class Network: ObservableObject {
    @Published var users: [User] = []
    
    func getUsers() {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid URL")
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("URL error: \(error)")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                return
            }
            
            if response.statusCode == 200 {
                guard let data = data else {
                    return
                }
                
                DispatchQueue.main.async {
                    do {
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = .iso8601
                        let decodedResponse = try decoder.decode([User].self, from: data)
                        self.users = decodedResponse
                    } catch let error {
                        print("Error decoding: \(error)")
                    }
                }
            }

        }
        
        dataTask.resume()
    }
}
