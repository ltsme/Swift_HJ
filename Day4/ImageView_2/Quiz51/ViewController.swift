//
//  ViewController.swift
//  Quiz51
//
//  Created by Biso on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblSizeState: UILabel!
    
    var imgOn: UIImage? //켜진 전구 이미지
    var imgOff: UIImage? //꺼진 전구 이미지
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgOn =  UIImage(named: "lamp_on.png")
        imgOff =  UIImage(named: "lamp_off.png")
        imgView.image = imgOn
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchOnOff(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            imgView.image = imgOn
        default:
            imgView.image = imgOff
        }
    }
    
    @IBAction func switchResize(_ sender: UISwitch) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat
        var newHeight: CGFloat
        
        switch sender.isOn {
        case true:
            newWidth = imgView.frame.width / scale //현재 이미지의의 가로축 크기
            newHeight = imgView.frame.height / scale
            lblSizeState.text = "전구 확대"
        default:
            newWidth = imgView.frame.width * scale //현재 이미지의의 가로축 크기
            newHeight = imgView.frame.height * scale
            lblSizeState.text = "전구 축소"
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        
    }
    
}

