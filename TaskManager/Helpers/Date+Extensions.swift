//
//  Date+Extensions.swift
//  TaskManager
//
//  Created by Nuha Mohamed on 8/3/23.
//

import SwiftUI

// dATE eXTENSIONS NEEDED FOR BUILDING ui
extension Date{
    /// custom date format
    func format(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: self)
    }
    
    //fetching week based on given date
    func fetchWeek(_ date: Date = .init()) -> [WeekDay] {
        let calendar = Calendar.current
        let startofDate = calendar.startOfDay(for: date)
        
        var week: [WeekDay] = []
        let weekForDate = calendar.dateInterval(of: .weekOfMonth, for: startofDate)
        guard let startOfWeek = weekForDate?.start else {
            return[]
        }
        
        //iterating to get the full week
        (0..<7).forEach { index in
            if let weekDay = calendar.date(byAdding: .day, value: index, to: startOfWeek) {
                week.append(.init(date: weekDay))
            }
        }
        
        return week
    }

    
    struct WeekDay: Identifiable {
        var id: UUID = .init()
        var date: Date
    }
}
