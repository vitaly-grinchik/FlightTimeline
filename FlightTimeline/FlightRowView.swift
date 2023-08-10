//
//  FlightRowView.swift
//  FlightTimeline
//
//  Created by Виталий Гринчик on 10.08.23.
//

import SwiftUI

struct FlightRowView: View {
    
    let flight: FlightInformation
    
    var body: some View {
        HStack {
            Text("\(flight.airline) \(flight.number)")
                .frame(width: 120, alignment: .leading)
            Text(flight.otherAirport)
                .frame(alignment: .leading)
            Spacer()
            Text(flight.flightStatus)
                .frame(alignment: .leading)
                .foregroundColor(Color(uiColor: flight.timelineColor))
        }
    }

}

struct FlightRowView_Previews: PreviewProvider {
    static var previews: some View {
        FlightRowView(flight: FlightInformation.generateFlight())
    }
}
