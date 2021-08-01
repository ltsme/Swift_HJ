//
//  ViewController.swift
//  PickerView
//
//  Created by Biso on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    var number:Int = 0
    
    var imageList:[String] = ["w1.jpeg","w2.jpeg","w3.jpeg","w4.jpeg","w5.jpeg","w6.jpeg","w7.jpeg","w8.jpeg","w9.jpeg","w10.jpeg"]
    var imageArray = [UIImage?]()
    var maxArrayNum = 0
    let viewColumn = 1
    
    
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var lblFilename: UILabel!
    @IBOutlet weak var pickerImage: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxArrayNum = imageList.count
        
        for i in 0..<maxArrayNum{
            let image = UIImage(named: imageList[i])
            imageArray.append(image)
        }
        lblFilename.text = imageList[number]
        ivImage.image = UIImage(named: imageList[number])
        
        pickerImage.dataSource = self
        pickerImage.delegate = self
        // Do any additional setup after loading the view.
    }

}


extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
//--pickerView의 디자인 담당--------------
    //pickerView의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return viewColumn
    }
    //출력할 이미지 파일 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxArrayNum
    }
    
//--PickerView에 기능 넣기----------------
    //pickerView에 title넣기
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageList[row]
    }
    //pickerView에 image 선택
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ivImage.image = imageArray[row]
    }       
    
    
}
extension UIPickerViewDelegate {
    func testPrint() {
        print("test")
    }
}


