//
//  ViewController.swift
//  Quiz13_PageControl
//
//  Created by HyeonJoonYang on 2021/07/21.
//

import UIKit

let images = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class ViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var lblNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        // 첫 화면 나올 숫자
        lblNumber.text = String(images[0])
        getColor()
    }// viewDidLoad
    
    // 페이지 바뀔 때 마다 함수 호출
    @IBAction func pageChanged(_ sender: UIPageControl) {
        lblNumber.text = String(images[pageControl.currentPage])
        getColor()
        
    } // pageChanged
    
    // 색 정하는 함수
    func getColor() {
        switch pageControl.currentPage%2 {
        case 1:
            lblNumber.textColor = UIColor.red
            break
        case 0:
            lblNumber.textColor = UIColor.green
            break
        default:
            break
        }// switch
        
    }// getColor
    
    
} // ViewController

