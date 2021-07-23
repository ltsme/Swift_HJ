//
//  ViewController.swift
//  Emoji
//
//  Created by HyeonJoonYang on 2021/07/15.
//

import UIKit

class EmojiViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    var count : Int = 0
    var emoji = ["😀","😍","😎","🤪","🥰"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl2.text = ""
    }
    
    @IBAction func btnPlay(_ sender: UIButton) {
        
        if count < 5{
            lbl2.text = emoji[count]
            count += 1

        }else{
            count = 0
            lbl2.text = emoji[count]
        }
    } // btnPlay
    
} // UIViewController

