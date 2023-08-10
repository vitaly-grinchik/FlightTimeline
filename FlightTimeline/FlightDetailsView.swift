//
//  FlightDetailsView.swift
//  FlightTimeline
//
//  Created by Виталий Гринчик on 10.08.23.
//

import SwiftUI

struct FlightDetailsView: View {
    
    @Binding var isPresented: Bool
    
    let flight: FlightInformation
    
    var toFromPrefix: String {
        flight.direction == .departure ? "To:" : "From"
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .font(.largeTitle)
                Spacer()
                Button("Done") {
                    isPresented.toggle()
                }
            }
            Text("\(toFromPrefix): \(flight.otherAirport)")
            Text(flight.flightStatus)
                .foregroundColor(Color(uiColor: flight.timelineColor))
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct FlightDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailsView(
            isPresented: .constant(false),
            flight: FlightInformation.generateFlight()
        )
    }
}
