//
//  ViewController.swift
//  Delegate
//
//  Created by HyeonJoonYang on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var tfOne: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tfOne.delegate = self
    }

    @IBAction func btnAction(_ sender: UIButton) {
        labelOne.text = tfOne.text
    }
    
} // ViewController

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        labelOne.text = tfOne.text
        return true
    }
}

