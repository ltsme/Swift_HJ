//
//  ViewController.swift
//  Quiz09
//
//  Created by Biso on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var tvResult: UITextView!
    @IBOutlet weak var pvNumber: UIPickerView!
    
    let viewColumn = 1
    var numberList:[String] = []
    // numList = Array<Int>(2...9)
    var startnum = 2
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in startnum..<10 {
            numberList.append("\(i) 단")
        }
        pvNumber.dataSource = self
        pvNumber.delegate = self
        
        makeText(row: nil)
        
    }
    
    func makeText(row:Int?) {
        var num:Int = 0
        if row == nil {
            num = startnum
        }else{
            num = startnum+row!
        }
        
        var strResult = ""

        for i in 1..<10 {
            strResult += "\(num) X \(i) = \(num*i)\n"
        }
        
        tvResult.text = strResult
    }


}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return viewColumn
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numberList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numberList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        makeText(row: row)

    }
    
}

