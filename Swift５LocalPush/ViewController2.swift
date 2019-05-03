
//
//  ViewController2.swift
//  Swift５LocalPush
//
//  Created by Kiyoto Ryuman on 2019/05/03.
//  Copyright © 2019 Kiyoto Ryuman. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController2: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func push(_ sender: Any) {
        timerUpdate()
    }
    
    func timerUpdate(){
        let content1 = UNMutableNotificationContent()
        let content2 = UNMutableNotificationContent()
        let content3 = UNMutableNotificationContent()
        let content4 = UNMutableNotificationContent()
        content1.title = nameTextField.text!
        content1.body = textField1.text!
        content1.sound = UNNotificationSound.default
        
        let trigger1 = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request1 = UNNotificationRequest(identifier: "ID2", content: content1, trigger: trigger1)
        
        UNUserNotificationCenter.current().add(request1, withCompletionHandler: nil)
        
        
        content2.title = nameTextField.text!
        content2.body = textField1.text!
        let trigger2 = UNTimeIntervalNotificationTrigger(timeInterval: 8, repeats: false)
        
        let request2 = UNNotificationRequest(identifier: "ID3", content: content2, trigger: trigger2)
        
        UNUserNotificationCenter.current().add(request2, withCompletionHandler: nil)
        
        
        content3.title = nameTextField.text!
        content3.body = textField1.text!
        let trigger3 = UNTimeIntervalNotificationTrigger(timeInterval: 14, repeats: false)
        
        let request3 = UNNotificationRequest(identifier: "ID4", content: content3, trigger: trigger3)
        
        UNUserNotificationCenter.current().add(request3, withCompletionHandler: nil)
        
        
        
        content4.title = nameTextField.text!
        content4.body = textField1.text!
        
        if let path = Bundle.main.path(forResource: "bird", ofType: "jpg"){
            content4.attachments = [try!
            UNNotificationAttachment(identifier: "ID5", url: URL(fileURLWithPath: path), options: nil)]
            
        }
        let trigger4 = UNTimeIntervalNotificationTrigger(timeInterval: 17, repeats: false)
        
        let request4 = UNNotificationRequest(identifier: "ID5", content: content4, trigger: trigger4)
        
        UNUserNotificationCenter.current().add(request4, withCompletionHandler: nil)
    }

}
