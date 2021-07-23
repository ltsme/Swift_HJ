//
//  ViewController.swift
//  MultiLine
//
//  Created by Biso on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //textView 입력 불가 상태로 만들기
        tvResult.isEditable = false // Read Only
    }


    @IBAction func btnAppend(_ sender: UIButton) {
        // 빈칸 데이터는 제외한다.
        let strInput = tfInput.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if !strInput.isEmpty {
            tvResult.text += tfInput.text!+"\n"
        }
     
        
    }
    
}

