//
//  FlightBoardView.swift
//  FlightTimeline
//
//  Created by Виталий Гринчик on 9.08.23.
//

import SwiftUI

struct FlightBoardView: View {
    
    let boardName: String
    let flightInfo: [FlightInformation]
    
    var body: some View {
        //            ScrollView {
        //                ForEach(flightInfo) { flight in
        //                    HStack {
        //                        Text("\(flight.airline)")
        //                        Text("\(flight.number)")
        //                        Spacer()
        //                        Text(flight.status.rawValue)
        //                            .foregroundColor(setStatusColorForStatus(flight.status))
        //                    }
        //                }
        //            }
        //            ForEach(flightInfo) { flight in
        List(flightInfo) { flight in
//            HStack {
//                Text("\(flight.airline)")
//                Text("\(flight.number)")
//                Spacer()
//                Text(flight.status.rawValue)
//            }
            NavigationLink(destination: FlightDetailsView(flight: flight)) {
                FlightRowView(flight: flight)
            }
        }
        .scrollIndicators(.hidden)
        .navigationTitle(boardName)
        .listStyle(.plain)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Arrival", flightInfo: FlightInformation.generateFlights())
    }
}
