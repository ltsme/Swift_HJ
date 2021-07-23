//
//  ViewController.swift
//  ImageView
//
//  Created by Biso on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    var imgOn: UIImage? //켜진 전구 이미지
    var imgOff: UIImage? //꺼진 전구 이미지
    
    var isZoom = false //이미지 확대 여부
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgOn =  UIImage(named: "lamp_on.png")
        imgOff =  UIImage(named: "lamp_off.png")
        imgView.image = imgOn
        // Do any additional setup after loading the view.
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        //이미지 크기를 2배로
        let scale: CGFloat = 2.0
        var newWidth: CGFloat
        var newHeight: CGFloat
        
        if isZoom {
            newWidth = imgView.frame.width / scale //현재 이미지의의 가로축 크기
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("이미지 확대", for: .normal)
        }else {
            newWidth = imgView.frame.width * scale //현재 이미지의의 가로축 크기
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("이미지 축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom //현재 bool값의 반대 값을 넣어준다.
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            imgView.image = imgOn
        default:
            imgView.image = imgOff
        }
        /*
        if sender.isOn {
            imgView.image = imgOn
        }else {
            imgView.image = imgOff
        }
         */
    }
}

