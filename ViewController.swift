//
//  ViewController.swift
//  test
//
//  Created by Yassin Charif on 30/09/2021.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer!
    @IBOutlet weak var timerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTime), userInfo: nil, repeats: true)
    }
    
    @objc func UpdateTime() {
            let userCalendar = Calendar.current
            // Current Date
            let date = Date()
            let components = userCalendar.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date)
            let currentDate = userCalendar.date(from: components)!

            //Event Date
               var eventDateComponents = DateComponents()
               eventDateComponents.year = 2022
               eventDateComponents.month = 01
               eventDateComponents.day = 1
               eventDateComponents.hour = 00
               eventDateComponents.minute = 00
               eventDateComponents.second = 00
               eventDateComponents.timeZone = TimeZone(abbreviation: "GMT")

        // Convert eventDateComponents to the user's calendar
                let eventDate = userCalendar.date(from: eventDateComponents)!

        // Converts the seconds to days, hours, minutes and seconds
        let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: eventDate)

        // Display the countdown
        timerLabel.text = "\(timeLeft.day!)j \(timeLeft.hour!)h \(timeLeft.minute!)m \(timeLeft.second!)s"
        }

}

