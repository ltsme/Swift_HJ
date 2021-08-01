//
//  ViewController.swift
//  Quiz11
//
//  Created by Biso on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    var gamecount = 0.0
    var success = 0.0
    
    

    @IBOutlet weak var lblNum1: UILabel!
    @IBOutlet weak var lblNum2: UILabel!
    @IBOutlet weak var lblGame: UILabel!
    
    @IBOutlet weak var tfInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNumber()
    }

    @IBAction func btnAction(_ sender: UIButton) {
        let input = Int(tfInput.text!) ?? 0
        
        let num1 = Int(lblNum1.text!)!
        let num2 = Int(lblNum2.text!)!
        
        if input == (num1 * num2)  {
            success += 1.0
            let Alert = UIAlertController(title: "결과", message: "정답입니다.", preferredStyle: .alert)
            
            let onAction = UIAlertAction(title: "다음 문제 진행", style: .default, handler: { [self]ACTION in
                randomNumber()
               
            })
            Alert.addAction(onAction)
            present(Alert, animated: true, completion: nil)
        }else{
            let Alert = UIAlertController(title: "결과", message: "정답이 아닙니다.", preferredStyle: .alert)
            
            let onAction = UIAlertAction(title: "다시 풀러 가기", style: .default, handler: nil)
            Alert.addAction(onAction)
            present(Alert, animated: true, completion: nil)
        }
        gamecount += 1.0
        if gamecount > 0 {
            lblGame.text = "\(Int(gamecount))회 도전\n성공률\(Double(success/gamecount)*100)%"
        }
    }
    
    
    func randomNumber() {
        lblNum1.text = String(Int.random(in: 1..<10))
        lblNum2.text = String(Int.random(in: 2..<10))
        tfInput.text = ""
    }
}

