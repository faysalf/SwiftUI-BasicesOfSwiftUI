//
//  ContentView.swift
//  DatePicker-Calender
//
//  Created by Reserveit Support on 28/5/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedDate: Date = Date()
    @State private var previousDate: Date = Date()
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image(systemName: "calendar.badge.plus")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Date Picker Graphical Style")
            }
            
            VStack {
                DatePicker(
                    "Select event date",
                    selection: $selectedDate,
                    in: (Date().addingTimeInterval(1))...Date().advanced(by: 6 * 24 * 60 * 60),
                    displayedComponents: .date
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                .accentColor(Color.purple)
                .labelsHidden()
                .offset(y: -50)
                .onChange(of: selectedDate) { newDate in
                    if newDate != previousDate {
                        print("Initially selected date chosen: \(newDate)")
                    }
                }

            }
            .padding(.top, 100)
            
            Text("Selected Date: \(selectedDate, formatter: dateFormatter)")

        }
        .padding()
    }
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
