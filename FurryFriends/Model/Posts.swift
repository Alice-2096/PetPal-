//
//  Posts.swift
//  FurryFriends
//
//  Created by apple on 2023/6/18.
//

import Foundation


struct Posts : Codable {
    
    struct Post: Codable, Identifiable, Equatable {
        private (set) var id = UUID().uuidString
        var lostPet: Pets.Pet
        var owner: Users.User
        var post_date: Date
        var lost_date: Date
        var missing_loc: String //should reference the Location Model which i haven't built yet
        var owner_description: String
    }
}
