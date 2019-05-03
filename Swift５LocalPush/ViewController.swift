//
//  ViewController.swift
//  Swift５LocalPush
//
//  Created by Kiyoto Ryuman on 2019/05/03.
//  Copyright © 2019 Kiyoto Ryuman. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func push(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = nameTextField.text!
        content.body = textField.text!
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        let request = UNNotificationRequest(identifier: "ID", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
}

