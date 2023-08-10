//
//  UserProfileView.swift
//  FlightTimeline
//
//  Created by Виталий Гринчик on 9.08.23.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 250, height: 250)
            .opacity(0.1)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
