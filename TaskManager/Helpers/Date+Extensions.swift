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
}
