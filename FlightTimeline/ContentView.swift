//
//  ContentView.swift
//  FlightTimeline
//
//  Created by Alexey Efimov on 22.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           HomeScreenView()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Home")
                }
            UserProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
