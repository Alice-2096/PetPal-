//
//  ContentView.swift
//  FurryFriends
//
//  Created by apple on 2023/6/18.
//

import SwiftUI

struct PetPal: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(PetsViewModel().allPets) {
                        pet in
                        LostPetPostView(pet: pet)
                    }
                }
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Text("Nearby Pet Pals")
                        .font(.title2)
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // filter function
                    }) {
                        Image(systemName: "slider.horizontal.2.square.on.square")
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SearchView()){
                        Image(systemName: "magnifyingglass")
                    }
                }
                
                ToolbarItem(placement: .bottomBar) {
                   HStack {
                       NavigationLink(destination: MyFriendsView()){
                           Image(systemName: "person.2.wave.2.fill")
                       }
                       NavigationLink(destination: LostAndFoundPetsView()){
                           Image(systemName: "magnifyingglass")
                       }
                       NavigationLink(destination: MyPets()){
                           Image(systemName: "pawprint.circle")
                       }
                       NavigationLink(destination: AccountView()){
                           Image(systemName: "person.circle")
                       }
                   }
               }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PetPal()
    }
}
