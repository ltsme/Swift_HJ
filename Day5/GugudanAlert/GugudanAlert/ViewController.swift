//
//  ViewController.swift
//  GugudanAlert
//
//  Created by HyeonJoonYang on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblNum1: UILabel!
    @IBOutlet weak var lblNum2: UILabel!
    @IBOutlet weak var tfInputNum: UITextField!
    @IBOutlet weak var lblPoint: UILabel!
    var point : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 점수 초기화
        setPoint()
        // 랜덤 숫자 지정
        getNum()
    }
    
    @IBAction func btnOk(_ sender: UIButton) {
        var checkResult = nullCheck(inputNum: tfInputNum.text!)
        
        if checkResult {
            let answer = getResult(num1: lblNum1.text!, num2: lblNum2.text!)
            
            if tfInputNum.text == answer {
                answerCollect()
                getNum()
            }else {
                answerInCollect()
                getNum()
            }
            
        }else{
            let nullAlert = UIAlertController(title: "경고", message: "정확한 값을 입력해 주세요", preferredStyle: .alert)
            nullAlert.addAction(UIAlertAction(title: "네...", style: .default, handler: nil))
            
            present(nullAlert, animated: true, completion: nil)
        }
    }
    
    func getNum() {
        lblNum1.text = String(Int.random(in: 1..<10))
        lblNum2.text = String(Int.random(in: 1..<10))
    }
    
    func nullCheck(inputNum : String) -> Bool {
        var numCount = inputNum.trimmingCharacters(in: .whitespacesAndNewlines).count
        if numCount > 0 {
            return true
        }else { return false }
    }
    
    func getResult(num1 : String, num2 : String) -> String {
        let result = String(Int(num1)! * Int(num2)!)
        return result
    }
    
    func answerCollect() {
        tfInputNum.text = ""
        let resultAlert = UIAlertController(title: "결과", message: "정답입니다! 1점을 얻습니다.", preferredStyle: .alert)
        resultAlert.addAction(UIAlertAction(title: "다음 문제 진행", style: .default, handler: nil))
        
        present(resultAlert, animated: true, completion: nil)
        
        point += 1
        setPoint()
    }
    
    func answerInCollect() {
        
        tfInputNum.text = ""
        let resultAlert = UIAlertController(title: "결과", message: "틀렸습니다...", preferredStyle: .alert)
        resultAlert.addAction(UIAlertAction(title: "네...", style: .default, handler: nil))
        
        present(resultAlert, animated: true, completion: nil)
    }
    
    func setPoint(){
        lblPoint.text = String(point)
    }
    
}

