//
//  ViewController.swift
//  Quiz07
//
//  Created by Biso on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var lblPickerTime: UILabel!
    @IBOutlet weak var lblCurrentTime: UILabel!
    
    let interval = 1.0 // 1초
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var alarmTime:String = ""
    var nowTime:String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateTime()
        lblPickerTime.text = "시간을 선택하세요."
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let chooseDate = sender.date
        let formatter = DateFormatter()
        
        print(chooseDate)
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        
        lblPickerTime.text = "선택 시간 : \(formatter.string(from: chooseDate as Date))"
        alarmTime = "\(formatter.string(from: chooseDate as Date))"
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        nowTime = "\(formatter.string(from: date as Date))"
        
        // 포멧변경
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        
        lblCurrentTime.text = "현재 시간 : \(formatter.string(from: date as Date))"
        if  nowTime == alarmTime {
            let seco:Int = Int(formatter.string(from: date as Date).suffix(2)) ?? 0
            switch seco%2 == 0 {
            case true:
                view.backgroundColor = UIColor.red
            default:
                view.backgroundColor = UIColor.blue
            }
        }else {
            view.backgroundColor = UIColor.white
        }
    }
    
}

