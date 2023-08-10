//
//  HomeScreenView.swift
//  FlightTimeline
//
//  Created by Виталий Гринчик on 9.08.23.
//

import SwiftUI

struct HomeScreenView: View {
    private let flightInfo = FlightInformation.generateFlights()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image(systemName: "airplane")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .opacity(0.1)
                .rotationEffect(.degrees(-90))
                
                VStack(alignment: .leading, spacing: 10) {
                    NavigationLink("Arrivals") {
                        FlightBoardView(
                            boardName: "Arrivals",
                            flightInfo: flightInfo
                                .filter { $0.direction == .arrival }
                        )
                    }
                    NavigationLink("Departures") {
                        FlightBoardView(
                            boardName: "Departures",
                            flightInfo: flightInfo
                                .filter { $0.direction == .departure }
                        )
                    }
                    NavigationLink("Flight Timeline") {
                        TimelineView(flights: flightInfo)
                    }
                    Spacer()
                }
                .font(.title)
                .padding()
            }
            .navigationTitle("Airport")
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
