//
//  InterfaceController.swift
//  Handoff WatchKit Extension
//
//  Created by Solid Jaum on 12/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import WatchKit
import Foundation

private let activity = "br.com.jaum.Handoff"

class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        self.updateUserActivity(activity, userInfo: nil, webpageURL: nil)
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    // MARK: - Actions
    
    @IBAction func notificationAction() {
        WKInterfaceDevice.current().play(.notification)
    }
    
    @IBAction func directionUpAction() {
        WKInterfaceDevice.current().play(.directionUp)
    }
    
    @IBAction func directionDownAction() {
        WKInterfaceDevice.current().play(.directionDown)
    }
    
    @IBAction func sucessAction() {
        WKInterfaceDevice.current().play(.success)
    }
    
    @IBAction func failureAction() {
        WKInterfaceDevice.current().play(.failure)
    }
    
    @IBAction func retryAction() {
        WKInterfaceDevice.current().play(.retry)
    }
    
    @IBAction func startAction() {
        WKInterfaceDevice.current().play(.start)
    }
    
    @IBAction func stopAction() {
        WKInterfaceDevice.current().play(.stop)
    }
    
    @IBAction func clickAction() {
        WKInterfaceDevice.current().play(.click)
    }
    
    
}
