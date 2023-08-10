//
//  FlightRowView.swift
//  FlightTimeline
//
//  Created by Виталий Гринчик on 10.08.23.
//

import SwiftUI

struct FlightRowView: View {
    
    @State private var detailsPresenting = false
    let flight: FlightInformation
    
    var body: some View {
        Button(action: { detailsPresenting.toggle() }) {
            // Здесь HStack - Label кнопки, т.е. всё представление - это кнопка
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
            .sheet(isPresented: $detailsPresenting) {
                FlightDetailsView(flight: flight)
            }
        }
        
    }

}

struct FlightRowView_Previews: PreviewProvider {
    static var previews: some View {
        FlightRowView(flight: FlightInformation.generateFlight())
    }
}
