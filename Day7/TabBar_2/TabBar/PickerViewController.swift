//
//  ViewController.swift
//  PickerView
//
//  Created by HyeonJoonYang on 2021/07/20.
//

import UIKit

class PickerViewController: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageFiles = ["w1.jpg", "w2.jpg", "w3.jpg", "w4.jpg", "w5.jpg", "w6.jpg", "w7.jpg", "w8.jpg", "w9.jpg", "w10.jpg"]
    
    var imageArray = [UIImage?]()
    var maxArrayNum = 0
    let viewColumn = 1
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        maxArrayNum = imageFiles.count
        
        for i in 0..<maxArrayNum {
            let image = UIImage(named: imageFiles[i])
            imageArray.append(image)
        }
        
        lblTitle.text = imageFiles[0]
        imageView.image = imageArray[0]
        
        pickerImage.dataSource = self
        pickerImage.delegate = self
    }
    
} // ViewController


extension PickerViewController:UIPickerViewDataSource{
    
    // pickerView의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return viewColumn
    }
    
    // 출력 할 이미지 파일 개수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxArrayNum
    }
} // UIPickerViewDataSource


extension PickerViewController: UIPickerViewDelegate{
    
    // PickerView Title 입히기
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFiles[row]
    }
    
    // PickerView에 Image 선택
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblTitle.text = imageFiles[row]
        imageView.image = imageArray[row]
    }
    
} // UIPickerViewDelegate

