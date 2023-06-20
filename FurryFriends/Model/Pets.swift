//
//  Pet.swift
//  FurryFriends
//
//  Created by apple on 2023/6/18.
//

import Foundation

//pet struct for per-lost-and-found app
struct Pets : Codable {
    var allPets = [Pet]()
    
    init() {
        loadTestData()
    }
    
    mutating func foundLostPet(_ pet: Pet) {
        if let foundPetIndex = allPets.firstIndex(where: {$0.id == pet.id}){
            allPets[foundPetIndex].isLost = false
        }
    }
    
    //sorting + searching for pets
    func searchByPetName (_ petName: String) -> [Pet] {
        allPets.filter{$0.name == petName}
    }
    
    func searchByPetID (_ id: String) -> Pet? {
        allPets.first(where: {$0.id == id})
    }
    
    var allLostPets : [Pet] {
        allPets.filter{$0.isLost}
    }
    
    var allFoundPets : [Pet] {
        allPets.filter{!$0.isLost}
    }
    
    func petsGroupedBySpecies(of species: Pet.Species) -> [Pet] {
        allPets.filter{$0.species == species}
    }
    
    //Add, update, and delete Pet
    mutating func addPet (_ pet: Pet) -> Void {
        allPets.append(pet)
        //update owner's account
//        var all_owners = pet.owners
        
    }
    
    mutating func updatePetInfo(_ pet: Pet) -> Void {
        if let petIndex = allPets.firstIndex(where: {$0.id == pet.id}){
            allPets[petIndex] = pet
        }
    }
    
    mutating func deletePet(_ pet: Pet) -> Void {
        if let petIndex = allPets.firstIndex(where: {$0.id == pet.id}){
            allPets.remove(at: petIndex)
        }
    }
    
    struct Pet: Codable, Identifiable, Equatable {
        private(set) var id = UUID().uuidString
        var name : String
        var breed : String
        var species : Species
        var weight : Float
        var age: Float
        var description : String
        var isLost: Bool
        var lostLocation: String
        var photoURLs: [String]
        var owners: [Users.User]
        
        enum Species: String, Codable {
            case canine
            case feline
            case avian
            case reptile
            case rodents
            case farm_animal
            case equine
            case others
        }
    }
    
    mutating private func loadTestData() {
        self.allPets = [
            Pet(name: "Charlie",
              breed: "Labrador Retriever",
              species: .canine,
              weight: 25.5,
              age: 3.5,
              description: "Charlie is a friendly boy, but he can be timid with some strangers. He was wearing a light blue raincoat when he got lost.",
              isLost: false,
              lostLocation: "around 8th Creek St.",
              photoURLs: ["ben1"],
              owners: []),
            Pet(name: "Ben",
                breed: "Labrador Retriever",
                species: .canine,
                weight: 56.2,
                age: 3.5,
                description: "a dark golden retriever, he is very friendly and loves to play with people",
                isLost: true,
                lostLocation: "around Amsterdam cross road.",
                photoURLs: ["ben2"],
                owners: [])
        ]
    }
}
