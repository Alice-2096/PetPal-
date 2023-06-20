//
//  SearchView.swift
//  FurryFriends
//
//  Created by apple on 2023/6/18.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView{
            VStack {
                formView
                Spacer()
            }.toolbar {
                ToolbarItem {
                    Button(action: {}){
                        Image(systemName: "slider.horizontal.2.square.on.square")
                    }
                }
            }
            .navigationTitle("Search for Pets")
           Spacer()
        }
    }
    
    var formView: some View {
        Form {
            Section(header: Text("Search by Pet Name")) {
                Text("Pet Name")
            }
            
            Section(header: Text("Search by Pet ID")) {
                Text("Pet ID")
            }
            
            Section(header: Text("Search by Species")) {
                Text("Species")
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
