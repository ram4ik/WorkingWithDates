//
//  ContentView.swift
//  WorkingWithDates
//
//  Created by ramil on 19.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date()
    var body: some View {
//        let now = Date()
//        let tomorrow = Date().addingTimeInterval(86400)
//        let range = now ... tomorrow
        
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? Date()
        
//        let components = Calendar.current.date([.hours, .minute], from: someDate)
//        let hour = components.hours ?? 0
//        let minute = components.minute ?? 0
        
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let dateString = formatter.string(from: Date())
        
        return DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
            .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
