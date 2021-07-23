//
//  EditViewController.swift
//  Navigation
//
//  Created by HyeonJoonYang on 2021/07/22.
//

import UIKit

class EditViewController: UIViewController {

    // 그림 연결
    @IBOutlet weak var swIsOn: UISwitch!

    var isOn: Bool = true
    var isColor: Bool = false
    
    var delegate: EditDelegate?
    
    @IBOutlet weak var onSwitch: UISwitch!
    @IBOutlet weak var colorSwitch: UISwitch!
    @IBOutlet weak var lblColor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        onSwitch.isOn = isOn
        colorSwitch.isOn = isColor
        
        if isOn{
            lblColor.isHidden = false
            colorSwitch.isHidden = false
        }else {
            lblColor.isHidden = true
            colorSwitch.isHidden = true
        }
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil{
            delegate?.didImageOnOffDone(self, isOn: isOn, isColor: isColor)
        }
        //pop : 하나씩 ViewController 제거
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swImageOff(_ sender: UISwitch) {
        if sender.isOn{
            isOn = true
            lblColor.isHidden = false
            colorSwitch.isHidden = false
        }else {
            isOn = false
            lblColor.isHidden = true
            colorSwitch.isHidden = true
        }
    }
    @IBAction func swImageColor(_ sender: UISwitch) {
        if sender.isOn{
            isColor = true
        }else {
            isColor = false
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
