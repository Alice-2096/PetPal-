//
//  Users.swift
//  FurryFriends
//
//  Created by apple on 2023/6/18.
//

import Foundation


struct Users : Codable {
    var Users = [User]()
    
    init() {
        loadtestdata()
    }
    
    struct User: Codable, Equatable, Identifiable {
        private(set) var id = UUID().uuidString
        var lname: String
        var fname: String
        var email: [String]
        var phone: String
        var password: String
        var zipCode: Int
        var address: String
        var pets: [Pets.Pet]
    }
    
    mutating func addUser (_ user: User) -> Void {
        Users.append(user)
    }
    
    mutating func loadtestdata() {
        self.Users = [User(lname: "Doe",
                     fname: "John",
                     email: ["john.doe@example.com"],
                     phone: "123-456-7890",
                     password: "password123",
                     zipCode: 12345,
                     address: "123 Main Street",
                     pets: []),
                    
                      User(lname: "Jiang",
                       fname: "Alicia",
                       email: ["ajin@example.com"],
                       phone: "123-453-2234",
                       password: "password123",
                       zipCode: 02742,
                       address: "888 Main Street",
                       pets: [])
                    ]
    }
}
