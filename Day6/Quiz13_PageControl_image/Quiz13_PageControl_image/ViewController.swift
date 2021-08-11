//
//  ViewController.swift
//  Quiz13_PageControl
//
//  Created by HyeonJoonYang on 2021/07/21.
//

import UIKit

let images = ["w1.jpg", "w2.jpg", "w3.jpg", "w4.jpg", "w5.jpg"]

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.image = UIImage(named : images[0])
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red

    }// viewDidLoad
    
    // 페이지 바뀔 때 마다 함수 호출
    @IBAction func pageChanged(_ sender: UIPageControl) {
        imgView.image =  UIImage(named : images[pageControl.currentPage])
    }
  
} // ViewController

