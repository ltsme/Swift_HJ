//
//  ViewController.swift
//  PinchGesture
//
//  Created by HyeonJoonYang on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgPinch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let swife = UISwipeActionsConfiguration
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_ :)))
        
        // view(전체)에 대해서 pinch
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer){
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
        
        
    }


}

