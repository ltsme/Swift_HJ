//
//  ViewController.swift
//  Quiz05
//
//  Created by Biso on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvResult: UITextView!
    @IBOutlet weak var tfInputNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvResult.isEditable = false
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        let inputNum = Int(tfInputNumber.text!) ?? 0
        var strCalc: String = ""
        if inputNum != 0 {
            for i in 1..<10 {
                strCalc = strCalc+"\(inputNum)X\(i)= \(String(format: "%02d", inputNum*i))\n"
            }
            tvResult.text = strCalc
        }else {
            tvResult.text = "0과 공백은 계산할 수 없습니다."
        }
        
        
    }
    
}

