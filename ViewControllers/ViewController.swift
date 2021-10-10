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
    @IBOutlet weak var eventLabel: UILabel!
    
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
        let eventDateComponents = EventDateComponents(year: 2022, month: 1, day: 1, hour: 0, minute: 0, second: 0)

        // Convert eventDateComponents to the user's calendar
        let eventDate = userCalendar.date(from: eventDateComponents.returnEventDateComponents())!

        // Converts the seconds to days, hours, minutes and seconds
        let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: eventDate)

        // Display the countdown
        timerLabel.text = "\(timeLeft.day!)j \(timeLeft.hour!)h \(timeLeft.minute!)m \(timeLeft.second!)s"
        
        // Update the text when event is passed
               endEvent(currentdate: currentDate, eventdate: eventDate)
        
        }
    
    func endEvent(currentdate: Date, eventdate: Date) {
           if currentdate >= eventdate {
               timerLabel.text = "Happy New Year !"
               eventLabel.text = ""
               // Stop Timer
               timer.invalidate()
           }
       }

}

