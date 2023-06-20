//
//  LostPetsView.swift
//  FurryFriends
//
//  Created by apple on 2023/6/18.
//

import SwiftUI

struct LostAndFoundPetsView: View {
    @EnvironmentObject var petsViewModel: PetsViewModel
    
    var body: some View {
        ScrollView {
            ForEach(petsViewModel.allPets) {
                pet in
                LostPetPostView(pet: pet)
            }
        }
    }
}

struct LostPetsView_Previews: PreviewProvider {
    static var previews: some View {
        LostAndFoundPetsView().environmentObject(PetsViewModel())
    }
}
