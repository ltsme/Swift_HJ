//
//  ViewController.swift
//  SendMessage
//
//  Created by Biso on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvMessages: UITextView!
    @IBOutlet weak var tfSendText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnEmoji(_ sender: Any) {
       /*
        let strReturn:String = emptyCheck()
            if strReturn != "nil" {
                tvMessages.text += tfSendText.text!
            }
        tfSendText.text = ""
        */
        let strReturn: String = emptyCheck()
            if strReturn == "nil" {
                tvMessages.text += "🥰"+"\n"
                tfSendText.text = ""
            } else {
                tfSendText.text = (strReturn)+"🥰"
            }
    }
    @IBAction func btnSend(_ sender: Any) {
        let strReturn:String = emptyCheck()
            if strReturn != "nil" {
                tvMessages.text += strReturn+"\n"
            }
        tfSendText.text = ""
    }
    
    func emptyCheck() -> String {
        let strInput = tfSendText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if !strInput.isEmpty {
            return strInput
        }else {
            return "nil"
        }
    }
    
    
}

