//
//  FlightDetailsView.swift
//  FlightTimeline
//
//  Created by Виталий Гринчик on 10.08.23.
//

import SwiftUI

struct FlightDetailsView: View {
    let flight: FlightInformation
    
    var destinationPrefix: String {
        flight.direction == .departure ? "To:" : "From"
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .font(.largeTitle)
                Spacer()
                Button("Done") {
                    
                }
            }
            Text("\(destinationPrefix): \(flight.otherAirport)")
            Text(flight.flightStatus)
                .foregroundColor(Color(uiColor: flight.timelineColor))
            Spacer()
        }
        .font(.headline)
        .padding()
        .navigationTitle("Flight Information")
        
    }
}

struct FlightDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailsView(flight: FlightInformation.generateFlight())
    }
}
