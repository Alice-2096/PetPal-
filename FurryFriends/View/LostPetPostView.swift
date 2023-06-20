//
//  LostPetPostView.swift
//  FurryFriends
//
//  Created by apple on 2023/6/19.
//

import SwiftUI

struct LostPetPostView: View {
    let pet: Pets.Pet
    
    var body: some View {
        VStack {
            petInfo
            furtherInfo
        
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 2)
        )
    }
    
    var furtherInfo : some View {
        HStack{
            Button(action: {}) {
                Image(systemName: "info.square")
                    .padding(0)
                Text("Pet Details")
                    .font(.subheadline)
                    .fontWeight(.bold)
            }.padding()
            
            Button(action: {}) {
                Text("Contact Owner")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding()
            }
            
            Button(action: {}) {
                Text("Share")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding()
            }
        }
    }
    
    var petInfo: some View {
        VStack {
            Image(pet.photoURLs[0])
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)

            Text(pet.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text("ID: " + pet.id)
                .font(.subheadline)
                .foregroundColor(Color.gray)
                .padding()
            
            Text("Lost around " + pet.lostLocation)
                .font(.title2)
            
            Text(pet.description)
                .font(.subheadline)
                .padding()
        }
        .padding()
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 20
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.8
    }
}

//
//struct LostPetPostView_Previews: PreviewProvider {
//    static var previews: some View {
//        LostPetPostView()
//    }
//}
