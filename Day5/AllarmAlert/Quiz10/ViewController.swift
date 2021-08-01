//
//  ViewController.swift
//  Quiz10
//
//  Created by Biso on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblSelectTime: UILabel!
    
    var used = false
    let interval = 1.0 // 1초
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var alarmTime:String = ""
    var nowTime:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        used = false
        let chooseDate = sender.date
        let formatter = DateFormatter()

        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        
        alarmTime = "\(formatter.string(from: chooseDate as Date))"
        lblSelectTime.text = "선택 시간 : \(alarmTime)"
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        
        // 알람용으로 저장
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        nowTime = "\(formatter.string(from: date as Date))"
        
        // 포멧변경
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재 시간 : \(formatter.string(from: date as Date))"
        if used == false {
            if alarmTime == nowTime {
                let alarmAlert = UIAlertController(title: "알람", message: "알람 시간 입니다.", preferredStyle: .alert)
                let onAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: { [self]ACTION in
                    used = true
                })
                alarmAlert.addAction(onAction)
                alarmAlert.view.backgroundColor = UIColor.yellow
                alarmAlert.view.layer.cornerRadius = 10
                
                present(alarmAlert, animated: true, completion: nil)
            }
        }
        
        
    }
    
}

