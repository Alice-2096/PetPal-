//
//  PetsViewModel.swift
//  FurryFriends
//
//  Created by apple on 2023/6/18.
//

import Foundation
import UserNotifications

class PetsViewModel: ObservableObject {
    typealias Pet = Pets.Pet
    @Published private var petsModel : Pets
    
    init() {
        self.petsModel = Pets()
    }
    
    var allPets: [Pet] {
        return petsModel.allPets
    }
    
    // MARK: handle user intent
    func searchByPetName (_ petName: String) -> [Pet] {
        petsModel.searchByPetName(petName)
    }

    func searchByPetID (_ id: String) -> Pet? {
        petsModel.searchByPetID(id)
    }
    
    func petsGroupedBySpecies(of species: Pet.Species) -> [Pet] {
        petsModel.petsGroupedBySpecies(of: species)
    }
    
    func addPet (_ pet: Pet) -> Void {
        petsModel.addPet(pet)
    }
    
    func updatePetInfo(_ pet: Pet) -> Void {
        petsModel.updatePetInfo(pet)
    }
    
    func deletePet(_ pet: Pet) -> Void {
        petsModel.deletePet(pet)
    }
}
