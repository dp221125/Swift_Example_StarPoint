//
//  ViewController.swift
//  StarPoint
//
//  Created by Meo MacBook Pro on 29/05/2019.
//  Copyright © 2019 Meo MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pointLabel: UILabel!
    let startImageView = [UIImageView]()
    
    @IBAction func starPointChanged(_ sender: UISlider) {
        
        let roundValue = round(sender.value)
        
        for index in 0 ... 5 {
            
            if let starImage = view.viewWithTag(index) as? UIImageView {
                
                if index <= Int(roundValue) {
                    starImage.image = UIImage(named: "Star")
                }else{
                    starImage.image = UIImage(named: "BlankStar")
                }
            }

        }
        
        pointLabel.text = String(roundValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

