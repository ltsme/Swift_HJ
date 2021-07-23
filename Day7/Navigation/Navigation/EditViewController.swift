//
//  EditViewController.swift
//  Navigation
//
//  Created by HyeonJoonYang on 2021/07/22.
//

import UIKit

class EditViewController: UIViewController {

    // 그림 연결
    @IBOutlet weak var lblWay: UILabel!
    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var swIsOn: UISwitch!
    
    var textWayValue: String = ""
    var textMessage: String = "" // 메인화면이 데이터를 넣어준다면
    var isOn: Bool = false
    
    var delegate: EditDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWay.text = textWayValue // 넣어 주는 것
        tfMessage.text = textMessage
        
        swIsOn.isOn = isOn
        if isOn{
            lblOnOff.text = "On"
        }else {
            lblOnOff.text = "Off"
        }
    }
    

    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil{
            delegate?.didMessageEditDone(self, message: tfMessage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn)
        }
        //pop : 하나씩 ViewController 제거
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func swImageOff(_ sender: UISwitch) {
        if sender.isOn{
            isOn = true
            lblOnOff.text = "On"
        }else {
            isOn = true
            lblOnOff.text = "Off"
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} // EditViewController
