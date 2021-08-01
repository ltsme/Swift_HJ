//
//  ViewController.swift
//  Quiz08
//
//  Created by Biso on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    var state = false
    var numImage = 0
    var imageName = ["flower_01.png", "flower_02.png", "flower_03.png", "flower_04.png", "flower_05.png", "flower_06.png"]
    
    let interval = 3.0 // 1초
    let timeSelector: Selector = #selector(ViewController.changeImage)
    
    @IBOutlet weak var btnStartStop: UIButton!
    @IBOutlet weak var lblFilename: UILabel!
    @IBOutlet weak var ivImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnAction(_ sender: UIButton) {
        if btnStartStop.currentTitle! == "start" {
            btnStartStop.setTitle("stop", for: .normal)
            Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        }else {
            btnStartStop.setTitle("start", for: .normal)
        }
    }
    
    @objc func changeImage() {
        if numImage == 5 {
            numImage = 0
        }else {
            numImage += 1
        }
        lblFilename.text = imageName[numImage]
        ivImage.image = UIImage(named: imageName[numImage])
    }

}

