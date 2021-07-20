//
//  ViewController.swift
//  Alert
//
//  Created by HyeonJoonYang on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lampImage: UIImageView!
    // 이미지 미리 선언해 놓기
    let imgOn = UIImage(named: "On.png")
    let imgOff = UIImage(named: "Off.png")
    let imgRemove = UIImage(named: "Remove.png")
    
    var isLampOn = true // 상태 변수
    
    // 반복 되는 (기능 없는)버튼 선언
    let defaultYes = UIAlertAction(title: "네", style: .default, handler: nil)
    let cancelNo = UIAlertAction(title: "아니오", style: .cancel, handler: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        turnOn()
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if isLampOn {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 ON상태 입니다.", preferredStyle: .alert)
            lampOnAlert.addAction(defaultYes)
            
            present(lampOnAlert, animated: true, completion: nil)

        }else{
            let lampOnAlert = UIAlertController(title: "램프 키기", message: "램프를 키겠습니까?", preferredStyle: .alert)
            let onAction = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.turnOn()
            })
            
            lampOnAlert.addAction(onAction)
            lampOnAlert.addAction(cancelNo)
            present(lampOnAlert, animated: true, completion: nil)
 
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn {
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄겠습니까?", preferredStyle: .alert)
            let offAction = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.turnOff()
            })
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelNo)
            
            present(lampOffAlert, animated: true, completion: nil)
        }else{
            let lampOffAlert = UIAlertController(title: "경고", message: "현재 OFF상태 입니다.", preferredStyle: .alert)
            lampOffAlert.addAction(defaultYes)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
            let lampRemoveAlert = UIAlertController(title: "램프 제거?", message: "램프를 제거 할까요?", preferredStyle: .alert)
            let removeOffAction = UIAlertAction(title: "아니오, 끕니다!", style: .default, handler: {ACTION in
                self.turnOff()
            })
            let removeOnAction = UIAlertAction(title: "아니오, 켭니다!", style: .default, handler: {ACTION in
                self.turnOn()
            })
            let removeAction = UIAlertAction(title: "네 제거합니다!", style: .default, handler:
                {ACTION in
                self.turnRemove()
            })
            lampRemoveAlert.addAction(removeOffAction)
            lampRemoveAlert.addAction(removeOnAction)
            lampRemoveAlert.addAction(removeAction)
            present(lampRemoveAlert, animated: true, completion: nil)
        }
    
    func turnOn() {
        lampImage.image = imgOn
        isLampOn = true
    }
    
    func turnOff() {
        lampImage.image = imgOff
        isLampOn = false
    }
    
    func turnRemove() {
        lampImage.image = imgRemove
        isLampOn = false
    }
    

}



