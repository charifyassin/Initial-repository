//
//  EventDateComponents.swift
//  test
//
//  Created by Yassin Charif on 10/10/2021.
//

import Foundation

class EventDateComponents {
    
    var year: Int
    var month: Int
    var day: Int
    var hour: Int
    var minute: Int
    var second: Int
    
    init(year:Int, month: Int, day: Int, hour: Int, minute: Int, second: Int) {
        
        self.year = year
        self.month = month
        self.day = day
        self.hour = hour
        self.minute = minute
        self.second = second
        
    }

    func returnEventDateComponents() -> DateComponents {
        var eventDateComponents = DateComponents()
        eventDateComponents.year = self.year
        eventDateComponents.month = self.month
        eventDateComponents.day = self.day
        eventDateComponents.hour = self.hour
        eventDateComponents.minute = self.minute
        eventDateComponents.second = self.second
        eventDateComponents.timeZone = TimeZone(abbreviation: "GMT")
        return eventDateComponents
    }
}
