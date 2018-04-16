//
//  ViewController.swift
//  DatePicker
//
//  Created by Ho-Jeong Song on 2017. 10. 2..
//  Copyright © 2017년 Ho-Jeong Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0

    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
       
        
        
        
    }
    
   
    
    

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        lblPickerTime.text =  formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        //        lblCurrentTime.text = String(count)
        //        count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        lblCurrentTime.text =  formatter.string(from: date as Date)
        
        if lblCurrentTime.text == lblPickerTime.text {
            view.backgroundColor = UIColor.red
        }
        
        if lblCurrentTime.text == lblPickerTime.text {
            let alertController = UIAlertController(title: "알림", message: "설정된 시간입니다.!!", preferredStyle: UIAlertControllerStyle.alert)
        
        let DestructiveAction = UIAlertAction(title: "취소", style: UIAlertActionStyle.destructive) { (result : UIAlertAction) -> Void in
            
          
        }
        
        let okAction = UIAlertAction(title: "네", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            
            self.view.backgroundColor = UIColor.white
            
        }
        
        alertController.addAction(DestructiveAction)
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
        
        }
        
        
        
        
        
        
        
    }
}

