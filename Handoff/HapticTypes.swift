//
//  HapticTypes.swift
//  Handoff
//
//  Created by Solid Jaum on 13/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import Foundation

struct HapticTypes{
    
    let haptic = [["Notification": "Alerts the user to an arrived notification when the Watch app is not running in the foreground."],
                  
                  
                  ["DirectionUp": "Indicates an increase in a specific value or when a value has gone above a certain threshold. For example, you could use this feedback when adjusting the value of a thermostat."],
                  
                  
                  ["DirectionDown": "Indicates a decrease in a specific value or when a value has gone below a certain threshold. For example, you could use this feedback when adjusting the value of a thermostat."],
                  
                  
                  ["Success": "Indicates the successful completion of a task or the answering of a question."],
                  
                  
                  ["Failure": "Indicates the failed completion of a task or answering of a question."],
                  
                  
                  ["Retry": "Indicates that the user should retry a task that temporarily failed."],
                  
                  
                  ["Start": "Indicates the beginning of an action. For example, a stopwatch app uses this haptic when the user starts the stopwatch."],
                  
                  
                  ["Stop": "Indicates the end of an action. For example, a stopwatch app uses this haptic when the user stops the stopwatch."],
                  
                  
                  ["Click": "Indicates a simple click type of feedback. Use this haptic to mark fixed points along a path. Space out the intervals at which you play the haptic rather than playing it several times in quick succession."]]
}
